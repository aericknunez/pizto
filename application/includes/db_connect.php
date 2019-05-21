<?php
$mysqli = new mysqli(HOST, USER, PASSWORD, DATABASE);
if ($mysqli->connect_error) {
    header("Location:" . $_SERVER["SERVER_NAME"] . "/admin/error.php?err=No se puede conectar");
    exit();
}