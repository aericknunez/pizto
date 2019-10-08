<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

include_once 'application/common/Alerts.php';
include_once 'system/reportes/Reporte.php';
include_once 'system/historial/Historial.php';


$reporte = new Reporte;

$fecha = date("d-m-Y");

?>


  <div class="row justify-content-center">
    <div class="col-12 col-md-auto">
     <form name="form-reporte" method="post" id="form-reporte">
    <input placeholder="Seleccione una fecha" type="text" id="fecha" name="fecha" class="form-control datepicker my-2">
    </div>
  </div>

<div class="row justify-content-center">
  <button class="btn btn-info my-2 btn-rounded btn-sm waves-effect" type="submit" id="btn-reporte" name="btn-reporte">Mostra Datos</button>
  </form> 
</div>
  
<div class="row justify-content-md-center" id="loaderx">
  <img src="assets/img/loading.gif" alt=""></div>



<div id="contenido">
  <?php 
  $reporte->Contenido($fecha);
 ?>

</div>
