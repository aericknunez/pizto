<?php
$mysqli = new mysqli(HOST, USER, PASSWORD, DATABASE);
if ($mysqli->connect_error) {
    header("Location:" . $_SERVER["SERVER_NAME"] . "/error.php?err=No se puede conectar");
    exit();
}