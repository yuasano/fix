class AddHeroImageToTaxon < ActiveRecord::Migration
  def change
    add_attachment :spree_taxons, :hero
  end
end
