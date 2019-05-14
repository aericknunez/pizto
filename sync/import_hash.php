<?php
date_default_timezone_set('America/El_Salvador');

define("HOST", "localhost"); 			//35.225.56.157 The host you want to connect to. 
define("USER", "superpol_erick"); 			// The database username. 
define("PASSWORD", "caca007125-"); 	// The database password. 
define("DATABASE", "superpol_pizto");  


require_once("/home/superpol/public_html/pizto.com/admin/application/common/Mysqli.php");
$db = new dbConn();

// busca todos los archivos en el directorio
$archivos = glob("/home/superpol/public_html/pizto.com/admin/sync/db/*.sql");  
  foreach($archivos as $data){  
  	$data = str_replace("/home/superpol/public_html/pizto.com/admin/sync/db/", "", $data);
  	$hash = str_replace(".sql", "", $data);

    $archx = "/home/superpol/public_html/pizto.com/admin/sync/db/" . $data;            
    // compruebo si ya hay registro tipo 2 del sync
$a = $db->query("SELECT * FROM login_sync WHERE hash = '$hash' and tipo = 1");
if($a->num_rows == 0){
        
        if (file_exists($archx)) {
	    $sql = explode(";",file_get_contents($archx));//
			foreach($sql as $query){
			@$db->query($query);
			} @unlink($archx); } 

	} else {
		// obtener el td segun el nombre del archivo
		  	$numero = strpos($hash, "-");
			$td = substr($hash,0,$numero);
			$type = substr($hash,$numero + 1,$numero);

			    if ($r = $db->select("td", "login_sync", "WHERE hash = '$hash'")) { 
			        $tdx = $r["td"];
			    } unset($r);
			    if($td == $tdx and $type == 5){
			    	@unlink($archx);	
			    }  

	} $a->close();  

}




	                  
	            