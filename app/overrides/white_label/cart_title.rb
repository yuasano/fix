Deface::Override.new(:virtual_path => "spree/orders/edit",
                     :replace      => "[data-hook='cart_container'] > h1",
                     :name         => "cart_title",
                     :partial      => "white_label/orders/cart_title")
