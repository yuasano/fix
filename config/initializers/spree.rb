require_dependency "#{Rails.root}/lib/heroku_connect"
require_dependency "#{Rails.root}/lib/spree_sfdc_hooks"
require_dependency "#{Rails.root}/lib/spree_taxon_hero_image"

# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# Note: If a preference is set here it will be stored within the cache & database upon initialization.
#       Just removing an entry from this initializer will not make the preference value go away.
#       Instead you must either set a new value or remove entry, clear cache, and remove database entry.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'

Spree.config do |config|
  # See Gem spree_core-3.0.1/app/models/spree/app_configuration.rb for all predefined preferences.
  config.logo = "logo/heroku-tree.png"
end

Spree.user_class = "Spree::User"

paperclip_s3_config = {
  s3_credentials: {
    access_key_id:     ENV['AWS_ACCESS_KEY_ID'],
    secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
    bucket:            ENV['S3_BUCKET_NAME']
  },
  storage:        :s3,
  s3_headers:     { "Cache-Control" => "max-age=31557600" },
  s3_protocol:    "https",
  bucket:         ENV['S3_BUCKET_NAME'],
  url:            ":s3_domain_url",
  path:           "/:class/:id/:style/:basename.:extension",
  default_url:    "/:class/:id/:style/:basename.:extension"
}

paperclip_s3_config.each do |key, value|
  Spree::Image.attachment_definitions[:attachment][key.to_sym] = value
  Spree::Taxon.attachment_definitions[:icon][key.to_sym] = value
  Spree::Taxon.attachment_definitions[:hero][key.to_sym] = value
end
