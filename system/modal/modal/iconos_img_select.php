<div class="modal" id="<? echo $_GET["modal"]; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true"  data-backdrop="false">
  <div class="modal-dialog modal-fluid" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">
          Seleccione una imagen</h5>
      </div>
      <div class="modal-body">
<!-- ./  content -->
<?php 

$op=$_REQUEST["op"];

$nombres=$_POST["nombre"];
$cod=$_POST["codigo"];
$cat=$_POST["categoria"];
$popup=$_POST["popup"];

$canti=$_POST["cantidad"];
$preci=$_POST["precio"];
$opcion=$_POST["opcion"];
?>
 <div id="iconoinfo"></div>  

Seleccione una imagen para el producto
<div class="row text-center portfolio"> 
   <ul class="gallery"> 
<?
$images = glob("assets/img/ico/*.*");  
      foreach($images as $image)  
      {  
    $opciones='id="iconos" op="' . $op .'" nombre="'.$nombres.'" cod="'.$cod.'" cat="'.$cat.'" popup="'.$popup.'" imagen="'.$image.'" canti="'.$canti.'" preci="'.$preci.'" opcion="'.$opcion.'"';

    //$opciones="system/config/iconos/procesa.php?op=$op&nombre=$nombres&cod=$cod&cat=$cat&popup=$popup&imagen=$image&canti=$canti&preci=$preci&opcion=$opcion";

    $output .= '<li><a ' . $opciones .'><img src="' . $image .'" alt="image" class="img-fluid img-responsive wow fadeIn" /></a></li>';

      }  
      echo $output;
?>

</ul> 
</div>


<!-- ./  content -->
      </div>
      <div class="modal-footer">

          <a href="?iconos" class="btn btn-primary btn-rounded">Regresar</a>
    
      </div>
    </div>
  </div>
</div>
<!-- ./  Modal -->