<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$numero = rand(1,9999999999);
//$numero = 1;

if(isset($_GET["modal"])) { 
echo '
	<script>
		$(document).ready(function()
		{
		  $("#' . $_GET["modal"] . '").modal("show");
		});
	</script>
	';

	if($_GET["modal"] == "register_success"){
	echo '<script type="text/javascript" src="assets/js/query/user.js?v='.$numero.'"></script>';
	}
	if($_GET["modal"] == "avatar"){
	echo '<script type="text/javascript" src="assets/js/query/user.js?v='.$numero.'"></script>';
	}
	if($_GET["modal"] == "selectimg"){
	echo '<script type="text/javascript" src="assets/js/query/iconos.js?v='.$numero.'"></script>';
	}
	if($_GET["modal"] == "modcategoria"){
	echo '<script type="text/javascript" src="assets/js/query/iconos.js?v='.$numero.'"></script>';
	}
	if($_GET["modal"] == "modproducto"){
	echo '<script type="text/javascript" src="assets/js/query/iconos.js?v='.$numero.'"></script>';
	}
	if($_GET["modal"] == "addopciones"){
	echo '<script type="text/javascript" src="assets/js/query/iconos.js?v='.$numero.'"></script>';
	}
	if($_GET["modal"] == "detalleproducto"){
	echo '<script type="text/javascript" src="assets/js/query/detalleproducto.js?v='.$numero.'"></script>';
	}
	if($_GET["modal"] == "opciones"){
	echo '<script type="text/javascript" src="assets/js/query/ventas.js?v='.$numero.'"></script>';
	}
	if($_GET["modal"] == "addmesa"){
	echo '<script type="text/javascript" src="assets/js/query/addmesa.js"></script>';
	}
	if($_GET["modal"] == "dividir"){
	echo '<script type="text/javascript" src="assets/js/query/dividircuenta.js?v='.$numero.'"></script>';
	}
	if($_GET["modal"] == "pagar"){
	echo '<script type="text/javascript" src="assets/js/query/pagarcuenta.js?v='.$numero.'"></script>';
	}
	if($_GET["modal"] == "modificar"){
	echo '<script type="text/javascript" src="assets/js/query/modificaropciones.js?v='.$numero.'"></script>';
	}
	if($_GET["modal"] == "reordenar"){
	echo '<script type="text/javascript" src="assets/js/query/iconos-reordenar-jquery-ui.min.js?v='.$numero.'"></script>';
	echo '<script type="text/javascript" src="assets/js/query/iconos_reordenar.js?v='.$numero.'"></script>';
	}
	if($_GET["modal"] == "conf_config"){
	echo '<script type="text/javascript" src="assets/js/query/conf_config.js?v='.$numero.'"></script>';
	}
	if($_GET["modal"] == "conf_root"){
	echo '<script type="text/javascript" src="assets/js/query/conf_config.js?v='.$numero.'"></script>';
	}
	if($_GET["modal"] == "venta_especial"){
	echo '<script type="text/javascript" src="assets/js/query/venta-especial.js?v='.$numero.'"></script>';
	}
	if($_GET["modal"] == "imageup"){
	echo '<script type="text/javascript" src="assets/js/query/imageup.js?v='.$numero.'"></script>';
	} 
	if($_GET["modal"] == "img_gasto"){
	echo '<script type="text/javascript" src="assets/js/query/imageup.js?v='.$numero.'"></script>';
	}

}

elseif($_SESSION["caduca"] != 0) {
echo '<script type="text/javascript" src="assets/js/query/noacceso.js?v='.$numero.'"></script>';
}  
elseif(isset($_GET["codigos"])) {
echo '<script type="text/javascript" src="assets/js/query/noacceso.js?v='.$numero.'"></script>';
}  
elseif(isset($_GET["user"])) {
echo '<script type="text/javascript" src="assets/js/query/user.js?v='.$numero.'"></script>';
} 
elseif(isset($_GET["iconos"])) {
echo '<script type="text/javascript" src="assets/js/query/iconos.js?v='.$numero.'"></script>';
} 
elseif(isset($_GET["gastos"])) {
echo '<script type="text/javascript" src="assets/js/query/gastos.js?v='.$numero.'"></script>';
}
elseif(isset($_GET["producto"])) {
echo '<script type="text/javascript" src="assets/js/query/productos.js?v='.$numero.'"></script>';
}
elseif(isset($_GET["corte"])) {
echo '<script type="text/javascript" src="assets/js/query/corte.js?v='.$numero.'"></script>';
}
elseif(isset($_GET["diario"])) {
echo '<script type="text/javascript" src="assets/js/query/historial.js?v='.$numero.'"></script>';
}
elseif(isset($_GET["mensual"])) {
echo '<script type="text/javascript" src="assets/js/query/historial.js?v='.$numero.'"></script>';
}
elseif(isset($_GET["cortes"])) {
echo '<script type="text/javascript" src="assets/js/query/historial.js?v='.$numero.'"></script>';
}
elseif(isset($_GET["gastodiario"])) {
echo '<script type="text/javascript" src="assets/js/query/historial.js?v='.$numero.'"></script>';
}
elseif(isset($_GET["gastomensual"])) {
echo '<script type="text/javascript" src="assets/js/query/historial.js?v='.$numero.'"></script>';
}
elseif(isset($_GET["mesasfecha"])) {
echo '<script type="text/javascript" src="assets/js/query/historial.js?v='.$numero.'"></script>';
}
elseif(isset($_GET["inout"])) {
echo '<script type="text/javascript" src="assets/js/query/historial.js?v='.$numero.'"></script>';
}
elseif(isset($_GET["reportediario"])) {
echo '<script type="text/javascript" src="assets/js/query/reportes.js?v='.$numero.'"></script>';
}
elseif(isset($_GET["search"])) {
echo '<script type="text/javascript" src="assets/js/query/search.js?v='.$numero.'"></script>';
}
elseif(isset($_GET["tv"])) {
echo '<script type="text/javascript" src="assets/js/query/tv.js?v='.$numero.'"></script>';
}
elseif(isset($_GET["venta_especial"])) {
echo '<script type="text/javascript" src="assets/js/query/conf_config.js?v='.$numero.'"></script>';
}
elseif(isset($_GET["ctc"])) {
echo '<script type="text/javascript" src="assets/js/query/conf_config.js?v='.$numero.'"></script>';
}
elseif(isset($_GET["averias"])) {
echo '<script type="text/javascript" src="assets/js/query/product.js?v='.$numero.'"></script>';
}
elseif(isset($_GET["addpro"])) {
echo '<script type="text/javascript" src="assets/js/query/product.js?v='.$numero.'"></script>';
}
elseif(isset($_GET["rtn"])) {
echo '<script type="text/javascript" src="assets/js/query/facturar.js?v='.$numero.'"></script>';
}
elseif(isset($_GET["cai"])) {
echo '<script type="text/javascript" src="assets/js/query/facturar.js?v='.$numero.'"></script>';
}
elseif(isset($_GET["facturasopciones"])) {
echo '<script type="text/javascript" src="assets/js/query/facturar.js?v='.$numero.'"></script>';
}
else{
/// lo que llevara index
echo '<script type="text/javascript" src="assets/js/query/ventas.js?v='.$numero.'"></script>';
}
	
?>

<script>
$("body").on("click","#cambiar-pantalla-inicio",function(){
        var op = $(this).attr('op');
        $.post("application/src/routes.php", {op:op}, 
        function(htmlexterno){
            window.location.href="?";
        });
    });	


    // function Sync(){
    //     $.ajax({
    //         type: "POST",
    //         url: "sync/execute.php?op=2",
    //         success: function(data) {
    //         	console.log(data);
    //         }
    //     });
    // }


    // setInterval(Sync, 30000);


</script>


<?php  // entre php
if(isset($_GET["gsemanal"])) {
include_once 'system/historial/script.php';
} ?>
