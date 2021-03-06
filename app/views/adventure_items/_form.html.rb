<%= form_for([@user, @adventure_item]) do |f| %>
  <% if @adventure_item.errors.any? %>
    <div id="error_explanation">
      <h2><%= pluralize(@adventure_item.errors.count, "error") %> prohibited this adventure_item from being saved:</h2>

      <ul>
      <% @adventure_item.errors.full_messages.each do |message| %>
        <li><%= message %></li>
      <% end %>
      </ul>
    </div>
  <% end %>

  <div class="field">
    <%= f.label :title %><br>
    <%= f.text_field :title %>
  </div>
  <div class="field">
    <%= f.label :description %><br>
    <%= f.text_area :description %>
  </div>
  <div class="field">
    <%= f.label :neighborhood %><br>
    <%= f.text_field :neighborhood %>
  </div>
  <div class="field">
    <%= f.label :city %><br>
    <%= f.text_field :city %>
  </div>
  <div class="field">
    <%= f.label :state %><br>
    <%= f.text_field :state %>
  </div>
  <div class="field">
    <%= f.label :country %><br>
    <%= f.text_field :country %>
  </div>
  <div class="field">
    <%= f.label :category %><br>
    <%= f.text_field :category %>
  </div>
  <div class="field">
    <%= f.label :picture %><br>
    <%= f.file_field :picture %>
  </div>
  <div class="actions">
    <%= f.submit %>
  </div>
<% end %>
