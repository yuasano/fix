Deface::Override.new(:virtual_path => "spree/taxons/_taxon",
                     :replace      => "[data-hook='taxon']",
                     :name         => "taxon",
                     :partial      => "white_label/taxons/taxon")
