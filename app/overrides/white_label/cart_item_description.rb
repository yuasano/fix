Deface::Override.new(:virtual_path => "spree/orders/_line_item",
                     :replace      => "[data-hook='cart_item_description']",
                     :name         => "cart_item_description",
                     :partial      => "white_label/orders/cart_item_description",
                     :original     => '0cf7fabcb604b480c0893ab14b5d6ebad157b33b')
