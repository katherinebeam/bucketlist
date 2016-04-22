<p id="notice"><%= notice %></p>

<h1>Listing Users</h1>

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
    <% @users.each do |user| %>
      <tr>
        <td><%= user.username %></td>
        <td><%= user.location %></td>
        <td><%= image_tag user.picture_url(:thumb) if user.picture? %></td>
        <td><%= link_to 'Show', user %></td>
        <td><%= link_to 'Edit', edit_user_path(user) %></td>
        <td><%= link_to 'Destroy', user, method: :delete, data: { confirm: 'Are you sure?' } %></td>
      </tr>
    <% end %>
  </tbody>
</table>

<br>

<%= link_to 'New Adventure item', adventure_items_new_path %>