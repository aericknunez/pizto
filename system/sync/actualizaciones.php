<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

include_once 'application/common/Helpers.php';
include_once 'application/common/Alerts.php';
include_once 'application/common/Fechas.php';
include_once 'application/common/Mysqli.php';
$db = new dbConn();
include_once 'system/corte/Corte.php';
include_once 'system/sync/Sync.php';
$sync = new Sync();


$path = "http://www.pizto.com/admin/sync/datesync.txt";
if (!file_exists($path))
    echo "File not found";
$file = fopen($path, "r");
if ($file) {
    while (($line = fgets($file)) !== false) {
        echo $line;
    }
    if (!feof($file)) {
        echo "Error: EOF not found\n";
    }
    fclose($file);
}
?>
<h1>ACTUALIZACIONES</h1>



<div id="mostar"></div>