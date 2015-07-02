Spree::Taxon.class_eval do

  has_attached_file :hero
  validates_attachment :hero,
    :content_type => { :content_type => %w(image/jpeg image/jpg image/png image/gif) }

end
