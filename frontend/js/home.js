jQuery('#popup').modal();

jQuery(document).ready(function() 
{
    jQuery('#far-clouds').pan({fps: 30, speed: 0.7, dir: 'left', depth: 30});                
    
    window.actions = {
        speedyClouds: function(){
            jQuery('#far-clouds').spSpeed(12);                    
        },
        runningClouds: function(){
            jQuery('#far-clouds').spSpeed(8);                        
        },
        walkingClouds: function(){
            jQuery('#far-clouds').spSpeed(3);                        
        },
        lazyClouds: function(){
            jQuery('#far-clouds').spSpeed(0.7);                        
        },
        stop: function(){
            jQuery('#far-clouds').spStop();
        },
        start: function(){
            jQuery('#far-clouds').spStart();
        },
        toggle: function(){
            jQuery('#far-clouds').spToggle();
        },
        left: function(){
            jQuery('#far-clouds').spChangeDir('left');                    
        },
        right: function(){
            jQuery('#far-clouds').spChangeDir('right');                    
        }
    };
});
jQuery('#myCarousel').carousel({
  interval: 5000
}) 
jQuery('#myCarousel2').carousel({
  interval: 5000
})    

$(function() {
    slider_principal()
    $(window).resize(function() {
        slider_principal()
    });
    
});


function slider_principal()
{
    ancho_pantalla = jQuery(window).width();
    if(ancho_pantalla <= 767)
    {
        $('.item .fill').each(function(index, el) {
            color = $(this).data('color');
            $(this).css('background', color);
        });
    }else{

        $('.item .fill').each(function(index, el) {
            imagen = $(this).data('imagen');
            $(this).attr('style',"background-image:url('"+imagen+"');");
        });
    }
}