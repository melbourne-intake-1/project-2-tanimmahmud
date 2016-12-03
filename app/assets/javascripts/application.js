// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
// = require jquery
// = require jquery.turbolinks
// = require jquery_ujs
// = require mailbox
// = require turbolinks
// = require modernizr.custom.79639.js
// = require jquery-1.11.2.min.js
// = require bootstrap.min.js
// = require retina.min.js
// = require scrollReveal.min.js
// = require jquery.flexmenu.js
// = require jquery.slitslider.js
// = require owl.carousel.min.js
// = require parallax.js
// = require waypoints.min.js
// = require jquery.nouislider.all.min.js
// = reqiure bootstrap3-wysihtml5.all.min.js
// = require fancybox.pack.js
// = require settings.js
// = require chosen-jquery
// = require jquery.image-select
//= require bootstrap-datepicker
// = require_tree .

$(document).ready(function() {
  setTimeout(function(){
    $('#notice-wrapper').fadeOut('slow', function(){
      $(this).remove();
    })
  },4500);
});
// Auto Complete
var placeSearch, autocomplete;

function initAutocomplete() {
  // Create the autocomplete object, restricting the search to geographical
  // location types.
  autocomplete = new google.maps.places.Autocomplete(
    /** @type {!HTMLInputElement} */
    (document.getElementById('address')), {
      types: ['geocode']
    });
}
google.maps.event.addDomListener(window, 'load', initAutocomplete);

var geocoder;
var map;
function initialize() {
geocoder = new google.maps.Geocoder();
var latlng = new google.maps.LatLng(-34.397, 150.644);
var mapOptions = {
  zoom: 8,
  center: latlng
}
map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
}

function codeAddress() {
var address = document.getElementById('address').value;
geocoder.geocode( { 'address': address}, function(results, status) {
  if (status == google.maps.GeocoderStatus.OK) {
    map.setCenter(results[0].geometry.location);
    var marker = new google.maps.Marker({
        map: map,
        position: results[0].geometry.location
    });
  } else {
    alert('Geocode was not successful for the following reason: ' + status);
  }
});
}

google.maps.event.addDomListener(window, 'load', initialize);
