Deface::Override.new(:virtual_path => "spree/home/index",
                     :replace      => "[data-hook='homepage_products']",
                     :name         => "index_products",
                     :partial      => "white_label/home/products")
