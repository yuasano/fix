Deface::Override.new(:virtual_path => "spree/orders/_form",
                     :replace      => "tr.cart-total",
                     :name         => "cart_total",
                     :partial      => "white_label/orders/cart_total")
