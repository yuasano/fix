Deface::Override.new(:virtual_path  => "spree/admin/taxons/_form",
                     :insert_before => "erb[loud]:contains('f.field_container :icon')",
                     :name          => "taxon_hero_image",
                     :partial       => "admin/taxons/hero_image",
                     :original      => '12d433d57804c39c3415916895b4bcab202a8277')
