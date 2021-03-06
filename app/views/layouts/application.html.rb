<!DOCTYPE html>
<html>
<head>
  <title>Finalproject</title>
  <link rel="stylesheet" href="//railsgirls.com/assets/bootstrap.css">
  <link rel="stylesheet" href="//railsgirls.com/assets/bootstrap-theme.css">
  <%= stylesheet_link_tag    'application', media: 'all', 'data-turbolinks-track' => true %>
  <%= javascript_include_tag 'application', 'data-turbolinks-track' => true %>
  <%= csrf_meta_tags %>
</head>

<body style="margin-top: 40px;">
  <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="/">Bucketlist</a>
    </div>
    <div class="collapse navbar-collapse">
      <ul class="nav navbar-nav">
        <li class="active"><a href="/ideas">Lists</a></li>
        <li><%= link_to 'Sign up', signup_path %></li>
        <li><%= link_to 'Log in', login_path %></li>
        <li><%= link_to 'Log Out', logout_path %></li>
        <li><%= link_to 'Edit Profile', edit_user_path(current_user) %></li>
      </ul>
      <p class="navbar-text pull-right">
      </div>
    </div>
  </nav>
  <div class="container">
    <% if notice %>
      <p class="alert alert-success"><%= notice %></p>
    <% end %>
    <% if alert %>
      <p class="alert alert-danger"><%= alert %></p>
    <% end %>
    <%= yield %>
  </div>
  <footer>
    <div class="container">
    </div>
  </footer>
    <script src="//railsgirls.com/assets/bootstrap.js"></script>
  </body>
</html>
