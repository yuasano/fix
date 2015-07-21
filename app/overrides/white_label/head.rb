Deface::Override.new(:virtual_path  => "spree/layouts/spree_application",
                     :insert_bottom => "[data-hook='inside_head']",
                     :name          => "spree_application_head",
                     :partial       => "white_label/shared/head")
