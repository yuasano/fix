# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Spree::Core::Engine.load_seed if defined?(Spree::Core)
Spree::Auth::Engine.load_seed if defined?(Spree::Auth)

# for local development we need a standard Salesforce Pricebook set
if ENV["DEPLOYMENT"] != "production"
  ActiveRecord::Base.connection.execute("
    INSERT INTO salesforce.pricebook2 (sfid, name, isstandard)
    VALUES ('A001', 'Standard', TRUE)
  ")
  puts "Created standard Salesforce pricebook."
end
