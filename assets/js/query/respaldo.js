$(document).ready(function()
{

		function Respaldar(){
                      $.ajax({
                          type: "POST",
                          url: "sync/respaldar.php",
                          success: function(data) {
                            $("#respaldo").html(data);
                          }
                      });
                  }


          Respaldar();


});