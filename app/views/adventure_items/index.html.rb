<p id="notice"><%= notice %></p>

<h1>Listing Adventure Items</h1>

<table>
  <thead>
    <tr>
      <th>Title</th>
      <th>Description</th>
      <th>Neighborhood</th>
      <th>City</th>
      <th>State</th>
      <th>Country</th>
      <th>Category</th>
      <th>Picture</th>
      <th colspan="3"></th>
    </tr>
  </thead>

  <tbody>
    <% @adventure_items.each do |adventure_item| %>
      <tr>
        <td><%= adventure_item.title %></td>
        <td><%= adventure_item.description %></td>
        <td><%= adventure_item.neighborhood %></td>
        <td><%= adventure_item.city %></td>
        <td><%= adventure_item.state %></td>
        <td><%= adventure_item.country %></td>
        <td><%= adventure_item.category %></td>
        <td><%= image_tag adventure_item.picture_url(:thumb) if adventure_item.picture? %></td>
        <td><%= link_to 'Show', adventure_item %></td>
        <td><%= link_to 'Edit', edit_adventure_item_path(adventure_item) %></td>
        <td><%= link_to 'Destroy', adventure_item, method: :delete, data: { confirm: 'Are you sure?' } %></td>
      </tr>
    <% end %>
  </tbody>
</table>

<br>

<%= link_to 'New Adventure item', adventure_items_new_path %>
