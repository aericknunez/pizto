<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

include_once 'application/common/Alerts.php';
include_once 'application/common/Mysqli.php';
include_once 'system/mesashoy/Mesas.php';
$db = new dbConn();
?>
<div id="contenido">
<?php 
$mesas = new Mesas;
$mesas->VerMesas(date("d-m-Y"),1);

 ?>
</div>