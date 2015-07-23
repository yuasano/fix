Spree::Taxon.class_eval do

  has_attached_file :hero
  validates_attachment :hero,
    :content_type => { :content_type => %w(image/jpeg image/jpg image/png image/gif) }

  has_attached_file :group
  validates_attachment :group,
    :content_type => { :content_type => %w(image/jpeg image/jpg image/png image/gif) }

  has_attached_file :style
  validates_attachment :style,
    :content_type => { :content_type => %w(image/jpeg image/jpg image/png image/gif) }

end

# Add image attributes to the `permitted_taxon_attributes` (magical helper in TaxonsController)
Spree::PermittedAttributes.taxon_attributes << :hero
Spree::PermittedAttributes.taxon_attributes << :group
Spree::PermittedAttributes.taxon_attributes << :style
