<h1 style="margin-top: 40px;">Edit Profile</h1>
<%= form_for(current_user) do |f| %>
  <div class="field">
    <%= f.label :name %><br>
    <%= f.text_field :name %>
  </div>
  <div class="field">
    <%= f.label :username %><br>
    <%= f.text_field :username %>
  </div>
  <div class="field">
    <%= f.label :location %><br>
    <%= f.text_field :location %>
  </div>
  <div class="field">
    <%= f.label :picture %><br>
    <%= f.file_field :picture%>
  </div>
  <div class="field">
    <%= f.label :email %><br>
    <%= f.text_field :email %>
  </div>
  <div class="actions">
    <%= f.submit %>
  </div>
<% end %>

<%= link_to 'Show', @user %> |
<%= link_to 'Back', adventure_items_path %>
