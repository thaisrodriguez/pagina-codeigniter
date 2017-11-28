jQuery(document).ready(function($) {
	cantidad = jQuery('.columna').length;
	valor = parseInt(12 / cantidad);
	jQuery('.columna').each(function(index) {
			$(this).removeClass('col-sm-3');
			$(this).removeClass('col-md-3');
			$(this).addClass('col-sm-'+valor);
			$(this).addClass('col-md-'+valor);
		});

});
jQuery('#myCarousel').carousel({
  interval: 5000
}) 
jQuery(function() {
// OPACITY OF BUTTON SET TO 0%
jQuery(".roll").css("opacity","0");
 
// ON MOUSE OVER
jQuery(".roll").hover(function () {
 
// SET OPACITY TO 70%
jQuery(this).stop().animate({
opacity: .9
}, "slow");
},
 
// ON MOUSE OUT
function () {
 
// SET OPACITY BACK TO 50%
jQuery(this).stop().animate({
opacity: 0
}, "fast");
});
});

