jQuery(document).ready(function(){
    jQuery('.slider').bxSlider({
    mode: 'vertical',
    minSlides: 4,    
    pager:false,
    infiniteLoop:false,
    hideControlOnEnd:true,
    maxSlides: 4
    });
    var $scrollbar = jQuery("#scrollbar1");
    $scrollbar.tinyscrollbar();
});
