<?php 
defined('BASEPATH') OR exit('No direct script access allowed');
include_once 'application/common/Mysqli.php';
$db = new dbConn();


include_once 'system/admon/Admin.php';
$admon = new Admin;

?>
  <div class="row justify-content-md-center">
    <div class="col-12 col-md-auto">
        <form name="form-diario" method="post" id="form-diario">
    <input placeholder="Seleccione una fecha" type="text" id="fecha" name="fecha" class="form-control datepicker my-2">
    <label for="fecha">Fecha a buscar</label>
	<input name="btn-diario" type="submit" id="btn-diario" value="Mostrar datos" class="btn btn-outline-info btn-rounded btn-sm btn-block waves-effect">
      </form> 
    </div>
  </div>
<div class="row justify-content-md-center" id="loaderx">
	<img src="assets/img/loading.gif" alt=""></div>

<div id="contenido">
<?php 
	// $historial = new Historial;
	// $historial->HistorialDiario(date("d-m-Y"));

 ?>
</div>