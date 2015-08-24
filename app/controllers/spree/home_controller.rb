# Redefine Home controller to render the custom FIX home screen.
if ENV["FIX_DEMO"] === 'enabled'

  module Spree
    class HomeController < Spree::StoreController
      helper 'spree/products'
      respond_to :html

      def index
        @searcher = build_searcher(params.merge(include_images: true))
        @products = @searcher.retrieve_products
        @taxonomies = Spree::Taxonomy.includes(root: :children)

        render "fix_home/index", layout: "layouts/fix_home"
      end
    end
  end

end
