<?php 
defined('BASEPATH') OR exit('No direct script access allowed');


include_once 'application/common/Fechas.php'; /// Necesario para el escript
include_once 'system/admon/Admin.php';
$admin = new Admin;

$inicio_entrada = 1; // necesario para que carge nada mas el script 
?>
        <div class="card">

            <!--Card content-->
            <div class="card-body">

                <canvas id="myChart"></canvas>

            </div>

        </div>


