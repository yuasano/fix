Deface::Override.new(:virtual_path => "spree/orders/edit",
                     :replace      => "[data-hook='cart_buttons']",
                     :name         => "cart_buttons",
                     :partial      => "white_label/orders/cart_buttons",
                     :original     => '8c2762119c92c2e199eb161fa7d7af8337d3d1d1')
