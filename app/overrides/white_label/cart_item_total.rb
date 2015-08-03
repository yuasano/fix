Deface::Override.new(:virtual_path => "spree/orders/_line_item",
                     :replace      => "[data-hook='cart_item_total']",
                     :name         => "cart_item_total",
                     :partial      => "white_label/orders/cart_item_total",
                     :original     => 'a449aa2348088cf7e844c983171b557cb607496f')
