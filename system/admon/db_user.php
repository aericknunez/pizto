<?php 
defined('BASEPATH') OR exit('No direct script access allowed');
include_once 'application/common/Mysqli.php';
$db = new dbConn();

include_once 'system/admon/Admin.php';
$admon = new Admin;

?>
<h1>Sync de base de datos</h1>

<?php   
echo '<div id="contenido">';
$admon->VerHashes();
echo '</div>';
 ?>