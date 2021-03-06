<p id="notice"><%= notice %></p>

<p>
  <strong>Title:</strong>
  <%= @adventure_item.title %>
</p>
<br>
<p>
  <strong>Description:</strong>
  <%= @adventure_item.description %>
</p>
<br>
<p>
  <strong>Neighborhood:</strong>
  <%= @adventure_item.neighborhood %>
</p>
<br>
<p>
  <strong>City:</strong>
  <%= @adventure_item.city %>
</p>
<br>
<p>
  <strong>State:</strong>
  <%= @adventure_item.state %>
</p>
<br>
<p>
  <strong>Country:</strong>
  <%= @adventure_item.country %>
</p>
<br>
<p>
  <strong>Category:</strong>
  <%= @adventure_item.category %>
</p>
<br>
<p>
  <strong>Picture:</strong>
  <%= image_tag(@adventure_item.picture_url(:thumb)) if @adventure_item.picture.present? %>
</p>

<%= link_to 'Edit', edit_adventure_item_path(@adventure_item) %> |
<%= link_to 'Back', adventure_items_path %>
