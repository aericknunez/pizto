<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

include_once 'system/config_especial/Config.php';
include_once 'application/common/Encrypt.php';
include_once 'application/common/Mysqli.php';
$db = new dbConn();



if($_REQUEST["op"] == "1" and $_POST["precio"] != null){

$iden=$_REQUEST["iden"];

    $cambio = array();
    $cambio["precio"] = $_POST["precio"];
    if ($db->update("precios", $cambio, "WHERE id='$iden'")) {
        
    } 

}

?>
<h1>Configuraci&oacuten venta especial</h1>
<?php 
echo '<div id="productos">';
Config::VerProductosEspecial($_REQUEST["page"]);
echo '</div>';
?>