<?php
require_once("/home/superpol/public_html/pizto.com/admin/application/includes/variables_db.php");
require_once("/home/superpol/public_html/pizto.com/admin/application/common/Mysqli.php");
$db = new dbConn();


$archivos = glob("/home/superpol/public_html/pizto.com/admin/sync/db/*.sql");  
  foreach($archivos as $data){  
  	$data = str_replace("sync/db/", "", $data);
  	$hash = str_replace(".sql", "", $data);
            

            $archx = "/home/superpol/public_html/pizto.com/admin/sync/" . $data;

        if (file_exists($archx)) {
	    $sql = explode(";",file_get_contents($archx));//
			foreach($sql as $query){
			@$db->query($query);
			}
			@unlink($archx);
			   
			    // compruebo si ya hay registro del sync
	            $a = $db->query("SELECT * FROM login_sync WHERE hash = '$hash' and edo = 1");
	            if($a->num_rows == 0){

	                  $datos = array();
	                  $datos["hash"] = $hash;
	                  $datos["edo"] = 1;
	                  $datos["fecha"] = date("d-m-Y");
	                  $datos["hora"] = date("H:i:s");
	                  $datos["td"] = $td;
	                  $db->insert("login_sync", $datos);
	            } $a->close();
		} 
  

  }