module Spree
  module TaxonCacheHelper
    def cache_key_for_taxon_children(parent_permalink)
      kits = Spree::Taxon
        .select(:updated_at)
        .where(:permalink => parent_permalink)
        .first
        .children
      count = kits.count
      max_updated_at = (kits.map(&:updated_at).max || Date.today).to_s(:number)
      "#{I18n.locale}/#{current_currency}/spree/taxons/#{parent_permalink}-#{params[:page]}-#{max_updated_at}-#{count}"
    end
  end
end
