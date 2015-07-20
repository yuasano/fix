Deface::Override.new(:virtual_path => "spree/shared/_products",
                     :replace      => "[data-hook='products_list_item']",
                     :name         => "products",
                     :partial      => "white_label/shared/products_list_item",
                     :original     => '0b2d55cecb52786fb16a16a5250c65fbc5ef7ab6')
