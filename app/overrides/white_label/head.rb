Deface::Override.new(:virtual_path  => "spree/layouts/spree_application",
                     :insert_bottom => "[data-hook='inside_head']",
                     :name          => "spree_application_head",
                     :partial       => "white_label/shared/head",
                     :original      => '3238a36183f493276bda180ca7b3430fb0cde007')
