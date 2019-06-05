<?php 
defined('BASEPATH') OR exit('No direct script access allowed');
include_once 'application/common/Mysqli.php';
$db = new dbConn();

include_once 'system/admon/Admin.php';
$admon = new Admin;

?>
<h1>Este sera el inicio de Admin</h1>
