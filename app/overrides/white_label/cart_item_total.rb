Deface::Override.new(:virtual_path => "spree/orders/_line_item",
                     :replace      => "[data-hook='cart_item_total']",
                     :name         => "cart_item_total",
                     :partial      => "white_label/orders/cart_item_total")
