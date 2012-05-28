Deface::Override.new(:virtual_path  => "products/show",
            :insert_after => "[data-hook='product_description']",
            :partial      => "products/downloadable_links",
            :name         => "downloadable_links")

