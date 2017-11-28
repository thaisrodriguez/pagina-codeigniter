function listarimagenes(modo,destino)
  {
     $.get("backend/"+control_+"/obtenerimagen", { id: modo} ,
      function(p){
              $("#"+destino).html(p);
              $('#ordenable').sortable({
              stop: function (event, ui) {
                var data = $('#ordenable').sortable('serialize');
                  $.ajax({
                          data: data,
                          type: 'POST',
                          url: 'backend/'+control_+'/ordenar'
                        });
              }
              });
      $("#ordenable").disableSelection();
      });
  }

function borrarimagenes(id,idpadre,destino){
    var confirmame = confirm("¿Esta seguro que desea eliminar esto?");
    if(!confirmame) return false;
    $.post('backend/'+control_+'/borrar', { id : id }, function(){     
        listarimagenes(idpadre,destino);
    });
}

function renombrar(id,idpadre,destino,nuevonombre){
    if(nombreRecurso=prompt("Imagen:",nuevonombre))
    {
      $.post('backend/'+control_+'/renombrar', { id : id, nuevo : nombreRecurso }, function(){     
          listarimagenes(idpadre,destino);
      });
    }
}

/*
function recursoRename(index,action,id,paramNombreRecurso,slide)
{
  if(nombreRecurso=prompt("Imagen:",paramNombreRecurso))
  {
    var sd = new Request({url: action,onRequest:function(){
      saveAny(1,"Guardando...");
    },
    onSuccess: function(r){
      saveAny(0,"");
      imagenesLisGet(slide,action,index);
    }}).get({"idRecursoRename":id,"nombreRecurso":nombreRecurso});
  }
}*/