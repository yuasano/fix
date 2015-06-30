Deface::Override.new(:virtual_path => "spree/products/show",
                     :replace      => "[data-hook='product_show']",
                     :name         => "product",
                     :template     => "white_label/products/show")
