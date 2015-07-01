Deface::Override.new(:virtual_path => "spree/taxons/show",
                     :insert_top   => "[data-hook='taxon_products']",
                     :name         => "taxon_hero_image",
                     :template     => "white_label/taxons/_hero_image")
