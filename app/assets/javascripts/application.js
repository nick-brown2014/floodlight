// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

var changeHeight = function() {
  var height = $(".left_column").height() + 1;
  $(".left_column").height(height);
  $(".right_column").height($(".left_column").height());
}

$(document).ready(function() {
  $("#delete_post").click(function(event) {
    event.preventDefault();
    $("#doomed").toggleClass("hidden");
  });

  changeHeight();

})

$(window).load(function() {
  changeHeight();
})

$(window).resize(function() {
  changeHeight();
})