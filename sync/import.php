<?php
require_once("../application/includes/variables_db.php");
require_once("../application/common/Mysqli.php");
$db = new dbConn();

$hash= $_REQUEST["hash"];
$action = $_REQUEST["action"];
$td = $_REQUEST["td"];
$type = $_REQUEST["type"]; // 1 = tablas diarias, 2 = tablas estaticas, 3 ambas



 	

$arch = "$hash.sql";

if (file_exists($arch)) {

            // compruebo si ya hay registro del sync
            $a = $db->query("SELECT * FROM login_sync WHERE hash = '$hash' and edo = 0");
            if($a->num_rows == 0){

                  $datos = array();
                  $datos["hash"] = $hash;
                  $datos["edo"] = 0;
                  $datos["fecha"] = date("d-m-Y");
                  $datos["hora"] = date("H:i:s");
                  $datos["td"] = $td;
                  $db->insert("login_sync", $datos);
            }
            $a->close();
            header("location: http://localhost/pizto/sync/execute.php?op=3&edo=1&hash=$hash&type=$type&action=$action&td=$td");
            exit();

	
} else {
	header("location: http://localhost/pizto/sync/execute.php?op=3&edo=0&hash=$hash&type=$type&action=$action");
	exit();
}