Deface::Override.new(:virtual_path => "spree/shared/_products",
                     :replace      => "[data-hook='products_list_item']",
                     :name         => "products",
                     :partial      => "white_label/shared/products_list_item")
