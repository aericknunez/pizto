<?php 
defined('BASEPATH') OR exit('No direct script access allowed');
include_once 'application/common/Mysqli.php';
$db = new dbConn();


include_once 'system/admon/Admin.php';
$admin = new Admin; 
?>
  <div class="row justify-content-md-center">
    <div class="col-12 col-md-auto">
        <form name="form-edocortes" method="post" id="form-edocortes">
    <input placeholder="Seleccione una fecha" type="text" id="fecha" name="fecha" class="form-control datepicker my-2">
    <label for="fecha">Fecha a buscar</label>
	<input name="btn-edocortes" type="submit" id="btn-edocortes" value="Mostrar datos" class="btn btn-outline-info btn-rounded btn-sm btn-block waves-effect">
      </form> 
    </div>
  </div>
<div class="row justify-content-md-center" id="loaderx">
	<img src="assets/img/loading.gif" alt=""></div>



 <?php   
echo '<div id="contenido">';
$fecha = date("d-m-Y"); 
$admin->EdoCortes($fecha);
echo '</div>';
 ?>