$(document).ready(function()
{

// db_sync
	$("body").on("click","#ejecuta-db-sync",function(){
	var op = $(this).attr('op');
	var td = $(this).attr('td');
	var hash = $(this).attr('hash');
    	$.post("application/src/routes.php", {op:op, td:td, hash:hash}, 
    	function(htmlexterno){
		$("#contenido").html(htmlexterno);
   	 	});
	});




});