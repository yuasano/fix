Deface::Override.new(:virtual_path  => "spree/admin/taxons/_form",
                     :insert_before => "erb[loud]:contains('f.field_container :icon')",
                     :name          => "taxon_images",
                     :partial       => "admin/taxons/images",
                     :original      => '12d433d57804c39c3415916895b4bcab202a8277')
