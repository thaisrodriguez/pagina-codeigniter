jQuery(document).ready(function(){
  jQuery('.slider').bxSlider({
    slideWidth: 382,
    minSlides: 1,
    maxSlides: 1,
    slideMargin: 0,
    controls: false,
    mode:'fade'
  });

   

  jQuery('.small_slide_toalla').bxSlider({
    slideWidth: 110,
    minSlides: 2,
    maxSlides: 3,
    slideMargin: 0,
    pager: false,
    hideControlOnEnd:true,
    infiniteLoop:false,
  });
  jQuery('.slider_toalla').bxSlider({
    slideWidth: 381,
    minSlides: 1,
    maxSlides: 1,
    slideMargin: 0,
    controls: false,
    mode:'fade',
  });

  var $scrollbar = jQuery("#scrollbar1");
    $scrollbar.tinyscrollbar();

});


  