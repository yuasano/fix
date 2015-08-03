Deface::Override.new(:virtual_path => "spree/orders/edit",
                     :replace      => "[data-hook='empty_cart']",
                     :name         => "cart_is_empty",
                     :partial      => "white_label/orders/cart_is_empty",
                     :original     => 'ab594528b98f226505be652c1d519a7844e8fd9d')
