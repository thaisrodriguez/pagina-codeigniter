function limpiarformulario(){
	$('#formulario')[0].reset();
}
function enviarformulario()
{

  for ( instance in CKEDITOR.instances )
            CKEDITOR.instances[instance].updateElement();
  $.ajax({
         type: "POST",
         url: "backend/Home/", 
         data:  $('#formularios').serialize(), 
         cache:false,
         success: 
              function(data){
               
                $.gritter.add({
    position: 'bottom-right',
        title: 'Correcto',
        text: 'Los datos que has enviado, han sido actualizados correctamente.',
        image: 'web/backend/images/guardado_icono.png',
        class_name: 'clean',
        time: '9000'
      });
      return false;

               
              }
 });


  
}