<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

include_once 'application/common/Alerts.php';
include_once 'application/common/Mysqli.php';
include_once 'system/historial/Historial.php';
include_once 'application/common/Helpers.php';
$db = new dbConn();

	$historial = new Historial;
	$historial->SyncStatus();

 ?>
