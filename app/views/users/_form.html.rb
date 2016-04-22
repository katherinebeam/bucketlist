<% if flash[:notice] %>
   <div class="notice"><%= flash[:notice] %></div>
 <% end %>

<%= form_for @user, :html => {:multipart => true} do |f| %>
  Name: <%= f.text_field :name %>
  Username: <%= f.text_field :username %>
  Location: <%= f.text_field :location %>
  Email: <%= f.text_field :email %>
  Password: <%= f.password_field :password %>
  Password Confirmation: <%= f.password_field :password_confirmation %>
  Picture: <%= f.file_field :picture %>
  <%= f.submit "Submit" %>

<% end %>
