Deface::Override.new(:virtual_path => "spree/taxons/_taxon",
                     :replace      => "[data-hook='taxon']",
                     :name         => "taxon",
                     :partial      => "white_label/taxons/taxon",
                     :original     => '9490d82472ffd92373e04f18fd0975de4bea3819')
