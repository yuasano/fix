Deface::Override.new(:virtual_path => "spree/taxons/show",
                     :insert_top   => "[data-hook='taxon_products']",
                     :name         => "taxon_add_to_cart",
                     :template     => "white_label/taxons/_add_to_cart")
