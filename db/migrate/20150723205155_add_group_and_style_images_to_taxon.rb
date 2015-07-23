class AddGroupAndStyleImagesToTaxon < ActiveRecord::Migration
  def change
    add_attachment :spree_taxons, :group
    add_attachment :spree_taxons, :style
  end
end
