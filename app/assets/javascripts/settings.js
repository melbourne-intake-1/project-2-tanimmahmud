(function($) {


	$(window).load(function() {
		$("#loader").fadeOut("slow");
	});

	$(document).ready(function() {

		// ====================================================================

		// Header scroll function

		$(window).scroll(function() {
			var scroll = $(window).scrollTop();
			if (scroll > 50) {
				$("#header-background").slideDown(300);
			} else {
				$("#header-background").slideUp(300);
			}
		});

		// ====================================================================

		// Flex Menu

		$('.menu').flexMenu({
			breakpoint: 3000,
			responsivePattern: 'off-canvas',
			animationSpeed: 300
		});

		$(".fm-button").click(function(){
			if($("header").css('left') == '0px'){
				$("header").stop().animate({left:'240px'},300);
			};
			if($("header").css('left') == '240px'){
				$("header").stop().animate({left:'0px'},300);
			};
		 });


		// ====================================================================

		// Slider

		$('#slider').css({'height': (($(window).height()-0))+'px'});
		$(window).resize(function(){
			$('#slider').css({'height': (($(window).height()-0))+'px'});
		});

		var Page = (function() {

			var $navArrows = $( '#nav-arrows' ),
				$nav = $( '#nav-dots > span' ),
				slitslider = $( '#slider' ).slitslider( {
					onBeforeChange : function( slide, pos ) {

						$nav.removeClass( 'nav-dot-current' );
						$nav.eq( pos ).addClass( 'nav-dot-current' );

					}
				} ),

				init = function() {

					initEvents();

				},
				initEvents = function() {

					// add navigation events
					$navArrows.children( ':last' ).on( 'click', function() {

						slitslider.next();
						return false;

					} );

					$navArrows.children( ':first' ).on( 'click', function() {

						slitslider.previous();
						return false;

					} );

					$nav.each( function( i ) {

						$( this ).on( 'click', function( event ) {

							var $dot = $( this );

							if( !slitslider.isActive() ) {

								$nav.removeClass( 'nav-dot-current' );
								$dot.addClass( 'nav-dot-current' );

							}

							slitslider.jump( i + 1 );
							return false;

						} );

					} );

				};

				return { init : init };

		})();

		Page.init();

		// ====================================================================

		// Jobs

		$("#more-jobs").click(function(){
			$(this).toggleClass('on');
			$('.hidden-job').toggle(0);
		 });

		// ====================================================================

		// ====================================================================

		// Resumes

		$("#more-resumes").click(function(){
			$(this).toggleClass('on');
			$('.hidden-resumes').toggle(0);
		 });

		// ====================================================================
		// Carousels

		$("#testimonials .owl-carousel").owlCarousel({
			items: 1,
			loop: true,
			margin: 50,
			dots: false,
			autoplay: true,
			autoplaySpeed: 1500,
			nav: false
		});


		// ====================================================================

		// Bootstrap Wysiwyg

		$('.textarea').wysihtml5({
			toolbar: {
				"font-styles": false,
				"blockquote": false,
				"image": false,
				"fa": true
			}
		});


		// ====================================================================

		// Fancybox

		$('.fancybox').fancybox({
			openEffect: 'none'
		});

		// ====================================================================

		// Scroll Reveal

		window.sr = new scrollReveal({
			reset: true,
			move: '50px',
			mobile: false
        });

		// ====================================================================

	})

})(jQuery);
