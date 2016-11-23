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
// = require chosen-jquery
// = require jquery.image-select
// = require mailbox
// = require turbolinks
// = require modernizr.custom.79639.js
// = require jquery-1.11.2.min.js
// = require bootstrap.min.js
// = require retina.min.js
// = require scrollReveal.min.js
// = require jquery.flexmenu.js
// = require jquery.ba-cond.min.js
// = require jquery.slitslider.js
// = require owl.carousel.min.js
// = require parallax.js
// = require jquery.counterup.min.js
// = require waypoints.min.js
// = require jquery.nouislider.all.min.js
// = reqiure bootstrap3-wysihtml5.all.min.js
// = require jflickrfeed.min.js
// = require fancybox.pack.js
// = require magic.js
// = require settings.js
// = require_tree .

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
