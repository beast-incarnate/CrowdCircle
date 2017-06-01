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
//= require jquery.remotipart
//= require turbolinks
//= require_tree .
//= require jquery
//= require turbolinks
//= require materialize-sprockets
//= require materialize/extras/nouislider



$(document).ready(function(){
      $('.parallax').parallax();
      $('.dropdown-button').width(200);
      $('.carousel.carousel-slider').carousel({fullWidth: true});
      $('.materialboxed').materialbox();
      $('.slider').slider();
      $('.slides').height(500);
      $('.slider').indicators(false);
      $('.slider').height(525);
    });
       











// $(document).ready(function(){
//     $('.carousel').carousel();
//   });
        

// // Next slide
// $('.carousel').carousel('next');
// $('.carousel').carousel('next', 3); // Move next n times.
// // Previous slide
// $('.carousel').carousel('prev');
// $('.carousel').carousel('prev', 4); // Move prev n times.
// // Set to nth slide
// $('.carousel').carousel('set', 4);


       
// $('.carousel.carousel-slider').carousel({fullWidth: true});