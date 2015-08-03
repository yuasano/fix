Deface::Override.new(:virtual_path => "spree/orders/edit",
                     :replace      => "#clear_cart_link",
                     :name         => "cart_secondary_buttons",
                     :partial      => "white_label/orders/cart_secondary_buttons",
                     :original     => '61f113a03f1af1f3faa5550010a5748d67560d86')
