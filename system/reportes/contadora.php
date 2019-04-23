<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

include_once 'application/common/Alerts.php';
include_once 'application/common/Mysqli.php';
include_once 'system/reportes/Reporte.php';
include_once 'application/common/Helpers.php';
include_once 'system/historial/Historial.php';

$db = new dbConn();
$reporte = new Reporte;
$mes = date("m");
$ano = date("Y");
?>

  <div class="row justify-content-md-center">
    <div class="col-12 col-md-auto">
        <form name="form-contadora" method="post" id="form-contadora">
    
        <div class="form-row mb-4">
        <div class="col">
            <select class="browser-default custom-select mb-3" id="mes" name="mes">
            <option value="0" selected disabled >Mes</option>
            <option value="01">Enero</option>
            <option value="02">Febrero</option>
            <option value="03">Marzo</option>
            <option value="04">Abril</option>
            <option value="05">Mayo</option>
            <option value="06">Junio</option>
            <option value="07">Julio</option>
            <option value="08">Agosto</option>
            <option value="09">Septiembre</option>
            <option value="10">Octubre</option>
            <option value="11">Noviembre</option>
            <option value="12">Diciembre</option>
          </select> 
        </div>
        <div class="col">
            <select class="browser-default custom-select mb-3" id="ano" name="ano">
            <option value="0" selected disabled >Año</option>
            <option value="2019">2019</option>
            <option value="2020">2020</option>
            <option value="2021">2021</option>
            <option value="2022">2022</option>
            <option value="2023">2023</option>
            <option value="2024">2024</option>
            <option value="2025">2025</option>
          </select> 
        </div>    
  </div>  

	<input name="btn-contadora" type="submit" id="btn-contadora" value="Mostrar datos" class="btn btn-outline-info btn-rounded btn-sm btn-block waves-effect">
      </form> 
    </div>
  </div>
<div class="row justify-content-md-center" id="loaderx">
	<img src="assets/img/loading.gif" alt=""></div>
<div id="contenido">
  <?php 
  $reporte->Contadora($mes, $ano);
 ?>

</div>
