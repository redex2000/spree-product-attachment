Deface::Override.new(:virtual_path  => "products/show",
            :insert_after => "div#product-description",
            :partial      => "products/downloadable_links",
            :name         => "downloadable_links")

