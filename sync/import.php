<?php
ini_set('max_execution_time', 600); //100 seconds = 1 minutes
require_once("../application/includes/variables_db.php");
require_once("../application/common/Mysqli.php");
$db = new dbConn();

$hash= $_REQUEST["hash"];
$action = $_REQUEST["action"];
$td = $_REQUEST["td"];
$type = $_REQUEST["type"]; // 1 = tablas diarias, 2 = tablas estaticas, 3 ambas



 	

$arch = "$hash.sql";

if (file_exists($arch)) {
    $sql = explode(";",file_get_contents($arch));//
	foreach($sql as $query){
	@$arr = $db->query($query);
	}
	@unlink($arch);

	$a = $db->query("SELECT * FROM login_sync WHERE td = ".$_REQUEST["td"]."");
		if($a->num_rows > 0){
		    $cambio = array();
		    $cambio["fecha"] = date("d-m-Y");
		    $cambio["hora"] = date("H:i:s");
		    $db->update("login_sync", $cambio, "WHERE td=" . $_REQUEST["td"]);
		   
		} else {
		         $datos = array();
		            $datos["fecha"] = date("d-m-Y");
		            $datos["hora"] = date("H:i:s");
		            $datos["td"] = $td;
		            $db->insert("login_sync", $datos); 
		}
		$a->close();


	header("location: http://localhost/pizto/sync/execute.php?op=3&edo=1&hash=$hash&type=$type&action=$action&td=$td");
} else {
	header("location: http://localhost/pizto/sync/execute.php?op=3&edo=0&hash=$hash&type=$type&action=$action");
}

exit();