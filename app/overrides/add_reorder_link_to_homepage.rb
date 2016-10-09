Deface::Override.new(
  :virtual_path  => "spree/shared/_main_nav_bar",
  :name => "reorder_link",
  :insert_after =>  "#home-link",
  :original => '79d342a6fd7281d8499d3a5ee5480f416f733e98',
  :text => "
    <% unless @last_order.nil? %>
      <li><%= link_to Spree.t(:reorder), reorder_order_path(@last_order) %></li>
    <% end %>
  "
)
