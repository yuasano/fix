Deface::Override.new(:virtual_path => "spree/orders/edit",
                     :replace      => "[data-hook='cart_buttons']",
                     :name         => "cart_buttons",
                     :partial      => "white_label/orders/cart_buttons")
