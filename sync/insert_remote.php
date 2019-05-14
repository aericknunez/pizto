<?php
date_default_timezone_set('America/El_Salvador');

define("HOST", "localhost"); 			//35.225.56.157 The host you want to connect to. 
define("USER", "superpol_erick"); 			// The database username. 
define("PASSWORD", "caca007125-"); 	// The database password. 
define("DATABASE", "superpol_pizto");  


require_once("/home/superpol/public_html/pizto.com/admin/application/common/Mysqli.php");
$db = new dbConn();


    $a = $db->query("SELECT * FROM login_sync WHERE edo = 0");
    foreach ($a as $b) {
        
        $hash = $b["hash"];

        $arch = $hash . ".sql"; 

        $archx = "/home/superpol/public_html/pizto.com/admin/sync/" . $arch;

        if (file_exists($archx)) {
	    $sql = explode(";",file_get_contents($archx));//
			foreach($sql as $query){
			@$db->query($query);
			}
			@unlink($archx);
			    $cambio = array();
			    $cambio["edo"] = "1";
			    $db->update("login_sync", $cambio, "WHERE hash='$hash'");
		} else {
			echo "No se encontro el archivo" . $arch;
		}


    } $a->close();
