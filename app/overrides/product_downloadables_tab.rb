Deface::Override.new(:virtual_path  => "admin/shared/_product_tabs",
            :insert_bottom => "[data-hook='admin_product_tabs']",
            :text          => "<li<%= ' class=\"active\"' if current == 'Downloadables' %>><%= link_to t(:downloadables), admin_product_downloadables_url(@product) %></li>",
            :name          => "product_downloadables_tab")

