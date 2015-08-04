Deface::Override.new(:virtual_path => "spree/orders/edit",
                     :replace      => "#empty-cart",
                     :name         => "cart_secondary_buttons",
                     :partial      => "white_label/orders/cart_secondary_buttons",
                     :original     => 'f7e860b9b01fa7b0e29cbdf4be182bbdfd561de0')
