Deface::Override.new(:virtual_path => "spree/orders/_form",
                     :replace      => "tr.cart-total",
                     :name         => "cart_total",
                     :partial      => "white_label/orders/cart_total",
                     :original     => '0d4ca2991462fc5cd24fb8f439a1c8de7758c925')
