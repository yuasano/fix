require "aws-sdk"
require "fileutils"

namespace :fix do

  DB_NAME='spree-dev'.freeze
  SAMPLE_DIR='sample'.freeze
  DB_OUTPUT_FILE='fix.sql'.freeze
  DB_OUTPUT_FILE_PATH=File.join(SAMPLE_DIR, DB_OUTPUT_FILE).freeze
  S3_OUTPUT_DIR='s3'.freeze
  S3_OUTPUT_FILE_PATH=File.join(SAMPLE_DIR, S3_OUTPUT_DIR).freeze

  desc "saves demo data from the database & Amazon S3 (must run locally)"
  task :export do
    Rake::Task['fix:export:db'].invoke
    Rake::Task['fix:export:s3'].invoke
  end

  desc "loads demo data into the database & Amazon S3 (may run on Heroku or locally)"
  task :import do
    Rake::Task['fix:import:db'].invoke
    Rake::Task['fix:import:s3'].invoke
  end

  desc "setups the database to sync data from SFDC back to Spree"
  task :connect_setup => :environment do
    ActiveRecord::Base.connection.execute(
      File.read("#{Rails.root}/db/connect_setup.sql"))
    puts "Updated Connect triggers/functions"
  end

  desc "set the email & password of the original seed user in the database; requires EMAIL & PASSWORD env variables"
  task :update_seed_login => :environment do
    email     = ENV['EMAIL']
    password  = ENV['PASSWORD']
    if email.blank? || password.blank?
      raise "Requires both EMAIL & PASSWORD"
    end
    
    users = Spree::User.where(email: 'spree@example.com')
    if users.length < 1
      puts "Seed user (spree@example.com) not found"
      return
    end
    first_user = users.first

    # Update sequence copied from spree_auth_devise/app/models/spree/user.rb
    first_user.email = email
    first_user.login = first_user.email
    first_user.password = password
    first_user.password_confirmation = first_user.password
    first_user.save!
  end

  namespace :import do

    desc "loads products & kits into the database; uses the configured ActiveRecord database"
    task :db => :environment do
      input_file = File.join(SAMPLE_DIR, DB_OUTPUT_FILE)
      puts "...loading #{DB_OUTPUT_FILE_PATH}"

      data = File.read(DB_OUTPUT_FILE_PATH)

      ActiveRecord::Base.transaction do
        ActiveRecord::Base.connection.execute(data)

        # trigger HerokuConnect sync of all registered models
        HerokuConnect.models.each do |model|
          puts "...syncing #{model.name} with Connect (#{model.all.size} #{model.all.size === 1 ? 'record' : 'records'})"
          model.all.each do |record|
            record.sync_to_sfdc(force_insert: true)
          end
        end
      end
    end

    desc "loads image assets into S3"
    task :s3 do
      assert_env_present('AWS_ACCESS_KEY_ID', 'AWS_SECRET_ACCESS_KEY', 'AWS_S3_BUCKET')

      AWS.config(
        :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
        :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY'])

      aws_s3 = AWS::S3.new
      aws_s3_bucket = aws_s3.buckets[ENV['AWS_S3_BUCKET']]
      # Support for Heroku S3 Add-on
      aws_s3_path = ENV['AWS_S3_PATH'] ? ENV['AWS_S3_PATH'] : ''

      source_dir = File.join(SAMPLE_DIR, S3_OUTPUT_DIR)

      recurse_fs_files(source_dir) do |path_name|
        path_parts = /^#{Regexp.escape(source_dir)}(.+)/.match(path_name)[1].split('/')
        s3_key = File.join(aws_s3_path, *path_parts)
        file_name = path_parts[-1]
        puts "...uploading #{s3_key}"

        obj = aws_s3_bucket.objects[File.join(s3_key, file_name)]
        obj.write(file: path_name)
      end
    end
  end

  namespace :export do
    desc "saves products & kits from the database (#{DB_NAME}) to a Postgres SQL file on the local filesystem (#{DB_OUTPUT_FILE_PATH}); override default database w/ `DATABASE_NAME=xxxxx`"
    task :db do
      database_name = ENV['DATABASE_NAME'] || DB_NAME;
      puts "...exporting from #{database_name} into #{DB_OUTPUT_FILE_PATH}"

      FileUtils.mkdir_p(File.join(SAMPLE_DIR))

      system <<-HEREDOC
        pg_dump --data-only --column-inserts #{database_name} -a \
          -t friendly_id_slugs \
          -t spree_assets \
          -t spree_calculators \
          -t spree_option_types \
          -t spree_option_types_prototypes \
          -t spree_option_values \
          -t spree_option_values_variants \
          -t spree_payment_methods \
          -t spree_prices \
          -t spree_product_option_types \
          -t spree_product_properties \
          -t spree_products \
          -t spree_products_promotion_rules \
          -t spree_products_taxons \
          -t spree_promotion_categories \
          -t spree_promotion_rules \
          -t spree_promotion_rules_users \
          -t spree_promotions \
          -t spree_properties \
          -t spree_properties_prototypes \
          -t spree_prototypes \
          -t spree_shipping_method_categories \
          -t spree_shipping_methods \
          -t spree_shipping_methods_zones \
          -t spree_stock_items \
          -t spree_tax_categories \
          -t spree_tax_rates \
          -t spree_taxonomies \
          -t spree_taxons \
          -t spree_taxons_promotion_rules \
          -t spree_taxons_prototypes \
          -t spree_variants \
          > #{DB_OUTPUT_FILE_PATH}
      HEREDOC
    end

    desc "saves image assets from S3 to a directory on the local filesystem (#{S3_OUTPUT_FILE_PATH})"
    task :s3 do
      assert_env_present('AWS_ACCESS_KEY_ID', 'AWS_SECRET_ACCESS_KEY', 'AWS_S3_BUCKET')

      FileUtils.mkdir_p(S3_OUTPUT_FILE_PATH)

      AWS.config(
        :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
        :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY'])

      aws_s3 = AWS::S3.new
      aws_s3_bucket = aws_s3.buckets[ENV['AWS_S3_BUCKET']]
      # Support for Heroku S3 Add-on
      aws_s3_path = ENV['AWS_S3_PATH'] ? ENV['AWS_S3_PATH'] : nil

      tree = aws_s3_bucket.as_tree(prefix: aws_s3_path)

      recurse_s3_objects(tree) do |s3_object|
        key_parts = s3_object.key.split('/')
        path = File.join(SAMPLE_DIR, S3_OUTPUT_DIR, *key_parts[0..-2])
        name = key_parts[-1]
        puts "...writing #{path}/#{name}"
        FileUtils.mkdir_p path
        File.open(File.join(path, name), 'wb') do |file|
          s3_object.read do |chunk|
            file.write(chunk)
          end
        end
      end
    end
  end


  def assert_env_present(*args)
    args.each do |name|
      raise ArgumentError, "#{name} env variable must be set" if ENV[name].to_s.empty?
    end
  end

  def recurse_s3_objects(tree, &block)
    tree.children.each do |child|
      if child.leaf?
        block.call(child.member)
      else
        recurse_s3_objects(child, &block)
      end
    end
  end

  def recurse_fs_files(path, &block)
    Dir.foreach(path) do |name|
      next if /^\.+$/ === name # skip '.' & '..' directories
      path_name = File.join(path, name)
      if !Dir.exist?(path_name)
        block.call(path_name)
      else
        recurse_fs_files(path_name, &block)
      end
    end
  end

end
