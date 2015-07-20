Deface::Override.new(:virtual_path => "spree/products/_cart_form",
                     :replace      => "[data-hook='product_price']",
                     :name         => "product_price_and_cart",
                     :partial      => "white_label/products/price_add_to_cart",
                     :original     => '46489f4b535b0bd0f672899a7cd91676bd169ee8')
