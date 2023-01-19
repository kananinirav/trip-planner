// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

import "jquery"
import "popper"
import "bootstrap"

//flash message auto close/hide
$(document).ready(function() {
  $(".auto_close").fadeTo(10000, 600).slideUp(600, function() {
    //$(".alert").slideUp(500);
  });
});
