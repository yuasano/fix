Deface::Override.new(:virtual_path  => "spree/admin/taxons/_form",
                     :insert_before => "erb[loud]:contains('f.field_container :icon')",
                     :name          => "taxon_hero_image",
                     :partial       => "admin/taxons/hero_image")
