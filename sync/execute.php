<?php
include_once '../application/includes/variables_db.php';
include_once '../application/includes/db_connect.php';
session_start();
include_once '../application/common/Fechas.php';
include_once '../application/common/Mysqli.php';
$db = new dbConn();

if($_SESSION["hash_counter"] == NULL or $_SESSION["hash_counter"] > 5){
	$_SESSION["hash_counter"] = 0;
}

$type = $_REQUEST["type"]; // 1 = tablas diarias, 2 = tablas estaticas, 3 ambas

    if ($r = $db->select("td", "config_root", "WHERE id = 1")) { 
        $_SESSION["temporal_td"] = $r["td"];
    } unset($r);  

/////////// antes de sincronizar, mete los datos a la bd
$archx = $_SESSION["temporal_td"] . ".sql";

if (file_exists($archx)) {
    $sql = explode(";",file_get_contents($archx));//
	foreach($sql as $query){
	@$db->query($query);
	}
	@unlink($archx);
}



    	/////////// SINCRONIZAR ////////

if($_REQUEST["op"]=="1"){ // sincroniza las tablas cambiantes (programable)


if ($o = $db->select("hash", "sync_status", "WHERE tipo = 1 and creado = 1 and subido = 1 and ejecutado = 0 and td = ".$_SESSION["temporal_td"]."")) { 
    $hash = $o["hash"];
    header("location: https://pizto.com/admin/sync/import.php?hash=$hash&action=1&td=".$_SESSION["temporal_td"]."");
} unset($o);  


if ($r = $db->select("hash", "sync_status", "WHERE tipo = 1 and creado = 1 and subido = 0 and ejecutado = 0 and td = ".$_SESSION["temporal_td"]."")) { 
    $hash = $r["hash"];
} unset($r);  

if($_REQUEST["fecha"] == NULL){
	$fecha = date("d-m-Y");
} else {
	$fecha = $_REQUEST["fecha"];
}
if($hash == NULL){
			include_once '../system/sync/Sincronizar.php';
			$sincro =  new Sincronizar;
			$sync = $sincro->Sync($fecha);
				if($sync != NULL){

					include_once '../system/sync/Ftp.php';
					$subir =  new Ftp;
					if($subir->Servidor("ftp.pizto.com",
									"erick@pizto.com",
									"caca007125-",
									$sync . ".sql",
									"/admin/sync/",
									"C:/AppServ/www/pizto/sync/". $sync .".sql") == TRUE){
						header("location: https://pizto.com/admin/sync/import.php?hash=$sync&action=1&td=".$_SESSION["temporal_td"]."");
					} else {
						echo "No se puede conectar al servidor: " . $sync;
					}

				} else {
					echo "No hay nada que sincronizar";
				}
	} else { 
		header("location: execute.php?op=4&hash=$hash&action=1"); 
	} // cantidad



} 






if($_REQUEST["op"]=="2"){ // sincroniza las tablas cambiantes (al corte)


if ($o = $db->select("hash", "sync_status", "WHERE tipo = 2 and creado = 1 and subido = 1 and ejecutado = 0 and td = ".$_SESSION["temporal_td"]."")) { 
    $hash = $o["hash"];
    header("location: https://pizto.com/admin/sync/import.php?hash=$hash&type=$type&action=2&td=".$_SESSION["temporal_td"]."");
} unset($o); 


if ($r = $db->select("hash", "sync_status", "WHERE tipo = 1 and creado = 1 and subido = 0 and ejecutado = 0 and td = ".$_SESSION["temporal_td"]."")) { 
$hash = $r["hash"];
} unset($r);  

if($_REQUEST["fecha"] == NULL){
	$fecha = date("d-m-Y");
} else {
	$fecha = $_REQUEST["fecha"];
}

if($hash == NULL){
			include_once '../system/sync/Upload.php';
			$sincro =  new Upload;
					$sync = $sincro->Sync($fecha,$type);
					if($sync != NULL){

					include_once '../system/sync/Ftp.php';
					$subir =  new Ftp;
					if($subir->Servidor("ftp.pizto.com",
									"erick@pizto.com",
									"caca007125-",
									$sync . ".sql",
									"/admin/sync/",
									"C:/AppServ/www/pizto/sync/". $sync. ".sql") == TRUE){
						header("location: https://pizto.com/admin/sync/import.php?hash=$sync&type=$type&action=2&td=".$_SESSION["temporal_td"]."");
					} else {
						echo "No se puede conectar al servidor: " .  $sync;
					}

				}

	} else { header("location: execute.php?op=4&hash=$hash&action=2&type=$type"); } // cantidad


}


if($_REQUEST["op"]=="3"){ // termina

if($_REQUEST["type"] == 2){

$hash = $_REQUEST["hash"];
$db->delete("sync_status", "WHERE tipo = 2 and hash = '$hash' and td = ".$_SESSION["temporal_td"]."");

echo "Ejecutado: " . $_REQUEST["hash"];
@unlink($_REQUEST["hash"].".sql");

$_SESSION["ultima"] =  date("H:i:s");

} else {
    	$cambio = array();
	    $cambio["ejecutado"] = $_REQUEST["edo"];
	    if($db->update("sync_status", $cambio, "WHERE creado = 1 and subido = 1 and ejecutado = 0 and td = ".$_SESSION["temporal_td"]." limit 1")) {

	    		$hashes = $_REQUEST["hash"];
	    	    if($t = $db->select("tipo, fechaF", "sync_status", 
	    	    	"WHERE hash = '$hashes' and td = ".$_SESSION["temporal_td"]."")) { 
        		$tipox = $t["tipo"];
        		$fechax = $t["fechaF"];
    			} unset($t); 

    			if($tipox == 2){

    				    $a = $db->query("SELECT * FROM sync_status WHERE tipo = 1 and fechaF = '$fechax' and td = ".$_SESSION["temporal_td"]."");
					    foreach ($a as $b) {
					    
					    $hashs = $b["hash"];
					    $db->delete("sync_status", "WHERE hash = '$hashs'  and td = ".$_SESSION["temporal_td"]."");
					    
					    @unlink($b["hash"].".sql");
					    } $a->close();
    			} 


	    	echo "Ejecutado: " . $_REQUEST["hash"];
	    	@unlink($_REQUEST["hash"].".sql");

	    	$_SESSION["ultima"] =  date("H:i:s");
	    }  

	}
}



if($_REQUEST["op"]=="4"){ // cuando se ja creado un archivo pero no se ha subido

$action=$_REQUEST["action"];
$type = $_REQUEST["type"];

		$sync = $_REQUEST["hash"];
		include_once '../system/sync/Ftp.php';
		$subir =  new Ftp;
		if($subir->Servidor("ftp.pizto.com",
						"erick@pizto.com",
						"caca007125-",
						$sync . ".sql",
						"/admin/sync/",
						"C:/AppServ/www/pizto/sync/". $sync. ".sql") == TRUE){
			header("location: https://pizto.com/admin/sync/import.php?hash=$sync&action=$action&type=$type&td=".$_SESSION["temporal_td"]."");
		} else {

			$_SESSION["hash_counter"] = $_SESSION["hash_counter"] + 1;

				if($_SESSION["hash_counter"] == 3){
						$archx = $sync . ".sql";
						if (!file_exists($archx)) {
		   					$db->delete("sync_status", "WHERE hash = '$sync'  and td = ".$_SESSION["temporal_td"]."");
		   					header("location: redirect.php?op=1");
						}
				} 

			echo "No se puede conectar al servidor: " .  $sync;
			echo "<br>Counter :" . $_SESSION["hash_counter"];
		}


}



unset($_SESSION["temporal_td"]);
$db->close();

echo "<br>Ultima actualizaci&oacuten: " .  $_SESSION["ultima"];
 

if($_REQUEST["action"] == 1 or $_REQUEST["op"] == 1){
?>
<!-- el intervalo cada segundo es igual a 1000 .  minuto 60,000 -->
 <script type="text/javascript">
	var int=self.setInterval("refresh()",60000);
	function refresh(){
		window.location.href="redirect.php?op=1";
	}
</script>
<?
} if($_REQUEST["action"] == 2 or $_REQUEST["op"] == 2){
?>
<script type="text/javascript">
	window.close();
</script>
<?
} ?>