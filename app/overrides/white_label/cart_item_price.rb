Deface::Override.new(:virtual_path => "spree/orders/_line_item",
                     :replace      => "[data-hook='cart_item_price']",
                     :name         => "cart_item_price",
                     :partial      => "white_label/orders/cart_item_price")
