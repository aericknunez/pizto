<?
if(is_numeric($_REQUEST["x"])){

include_once '../common/Helpers.php';
include_once 'variables_db.php';
include_once 'db_connect.php';
include_once 'functions.php';
sec_session_start();
include_once '../common/Mysqli.php';

    $db = new dbConn();

    $a = $db->query("SELECT expira, expiracion, ftp_servidor, 
    	ftp_path, ftp_ruta, ftp_user, ftp_password, tipo_sistema, 
    	plataforma, pantallas, td
    	FROM config_root WHERE td = ". $_REQUEST["x"]."");
    foreach ($a as $b) {
       $data = $b;
    }

    $a->close();

echo json_encode($b, false);
}
?>