<?php 

// aqui vamos a insertar todos los hash y time de las tablas
// 

    $aa = $db->query("SELECT tabla FROM sync_tabla");
    foreach ($aa as $ba) {

       
	    $registro = $db->query("SELECT * FROM ". $ba["tabla"] . "");
	    foreach ($registro as $registros) {
	        
	            $cambio = array();
			    $cambio["hash"] = Helpers::HashId();
			    $cambio["time"] = Helpers::TimeId();
			    $db->update($ba["tabla"], $cambio, "WHERE id="$registros["id"]);  
	      
	    } $registro->close();



    } $aa->close();


 ?>