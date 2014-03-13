# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

var container = document.querySelector('#pins');
var msnry = new Masonry( container, {
  // options
  itemSelector: '.box'
});