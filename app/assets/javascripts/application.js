// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require processing

// Window event listeners
var initializeWindow = function(){
  var height = $(window).height();
  var width = $(window).width();
  Processing.getInstanceById('canvas').size(width+10, height+10);
};

// Window event listeners
$(window).resize(function(){
  var height = $(window).height();
  var width = $(window).width();
  Processing.getInstanceById('canvas').size(width+10, height+10);
});
