<%= form_for @post, html: { multipart: true } do |f| %>
  <div class="field">
    <%= f.label :image %><br>
    <%= f.file_field :image %>
  </div>
<% end %>
