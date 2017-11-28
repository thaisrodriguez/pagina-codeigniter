function uploader(upload,hola,carpeta){
  var uploaderJs = new plupload.Uploader({
    runtimes : 'gears,html5,flash,silverlight,browserplus',
    browse_button : 'pickfiles_' + upload,container : 'container_' + upload,
    max_file_size : '5mb',
    unique_names : false, 
    rename: false,
     url : hola,//'web/backend/recursos/uploadphp/subir.php',
    flash_swf_url : 'web/backend/recursos/uploadjs/plupload.flash.swf',
    silverlight_xap_url : 'web/backend/recursos/uploadjs/plupload.silverlight.xap',
    filters : {
      mime_types : [
        { title : "Image files", extensions : "jpg,gif,png" },
        { title : "Zip files", extensions : "zip" }
      ]
    },
    init : {
       FilesAdded: function(up, files) {
          $.each(files, function(i, file) {
            $('#filelist_' + upload).append(
              '<div id="' + file.id + '">' +
              file.name + ' (' + plupload.formatSize(file.size) + ') <b></b>' +
            '</div>');
          });   
          up.refresh();                           
        },

        UploadProgress: function(up, file) {
          $('#' +upload +'_cargador').html('Subiendo: ' +file.percent + "%");                         
        },
        Error: function(up, err) {
          $('#filelist' + upload).append("<div>Error: " + err.code +
            ", Message: " + err.message +
            (err.file ? ", File: " + err.file.name : "") +
            "</div>"
          );
          up.refresh();                       
        },

         FileUploaded: function(up, file,info) {
          $('#img' + upload).attr('src','./imagenes/' +carpeta+'/' + JSON.parse(info.response).result);
          $('#vista' + upload).val("imagenes/"+ carpeta + "/" +JSON.parse(info.response).result);
          $('#' + file.id + " b").html("100%");                     
        }
      }
  });      
  return uploaderJs;
}