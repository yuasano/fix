Deface::Override.new(:virtual_path => "spree/home/index",
                     :replace      => "[data-hook='homepage_products']",
                     :name         => "index_products",
                     :partial      => "white_label/home/products",
                     :original     => '461aae32b5912b8551fcf3a823427507f434a0cc')
