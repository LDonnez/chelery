// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require turbolinks
//= require_tree .
var ready = function() {
  $(window).scroll(function() {

    if ($(window).scrollTop() > 100) {
      $('.main-menu').addClass('sticky');
    } else {
      $('.main-menu').removeClass('sticky');
    }
  });

  $('.mobile-toggle').click(function() {
    if ($('.main-menu').hasClass('open-nav')) {
      $('.main-menu').removeClass('open-nav');
    } else {
      $('.main-menu').addClass('open-nav');
    }
  });

  $('.main-menu li a').click(function() {
    if ($('.main-menu').hasClass('open-nav')) {
      $('.navigation').removeClass('open-nav');
      $('.main-menu').removeClass('open-nav');
    }
  });

  $('nav a').click(function(event) {
    var id = $(this).attr("href");
    var offset = 70;
    var target = $(id).offset().top - offset;
    $('html, body').animate({
      scrollTop: target
    }, 500);
    event.preventDefault();
  });
}
$(document).ready(ready);
$(document).on('page:load', ready);
$(function(){ $(document).foundation(); });
