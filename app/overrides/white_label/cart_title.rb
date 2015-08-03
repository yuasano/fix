Deface::Override.new(:virtual_path => "spree/orders/edit",
                     :replace      => "[data-hook='cart_container'] > h1",
                     :name         => "cart_title",
                     :partial      => "white_label/orders/cart_title",
                     :original     => '4abbc4cf134349df9c82103c985e528f9643b501')
