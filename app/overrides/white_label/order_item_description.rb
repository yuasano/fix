Deface::Override.new(:virtual_path => "spree/shared/_order_details",
                     :replace      => "[data-hook='order_item_description']",
                     :name         => "order_item_description",
                     :partial      => "white_label/orders/order_item_description",
                     :original     => '3f05ddbe6c4501b28f24d05797b0bff647343077')
