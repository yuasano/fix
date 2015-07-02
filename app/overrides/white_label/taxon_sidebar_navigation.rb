Deface::Override.new(:virtual_path => "spree/taxons/show",
                     :replace      => "[data-hook='taxon_sidebar_navigation']",
                     :name         => "taxon_sidebar_navigation",
                     :template     => "white_label/taxons/_sidebar_navigation")
