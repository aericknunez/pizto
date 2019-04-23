<?php
require_once("/home/superpol/public_html/pizto.com/admin/application/includes/variables_db.php");
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
