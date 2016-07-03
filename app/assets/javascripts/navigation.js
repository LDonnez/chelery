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
