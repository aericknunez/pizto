<?php 
include_once 'system/mesas/Mesa.php';
$mesas = new Mesa;

if ($r = $db->select("clientes", "mesa", "WHERE mesa = ". $_REQUEST["mesa"]. " and td = " . $_SESSION["td"] . "")) { 
$clientes = $r["clientes"];
} unset($r); 
 ?>
<div class="modal" id="<? echo $_GET["modal"]; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true"  data-backdrop="false">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">
          Dividir Cuenta</h5>
      </div>
      <div class="modal-body">
<!-- ./  content -->
<?php if($clientes > 0){ ?>
Para agregar la cuenta a otro cliente, seleccione a la izquiera la cuenta a transferir al cliente de la derecha
<div id="ventana"></div>
<div class="row">
    <div class="col-md-6 btn-outline-info z-depth-2" id="origen">
        <?php
        $mesas->ClientSelect($_SESSION['mesa']); 
         ?>
    </div>
    
    <div class="col-md-6 btn-outline-danger z-depth-2" id="destino">
        <?php 
        $mesas->AsignClient($_SESSION['mesa']);             
         ?>
    </div>
   
</div>
<?php } else { echo "No se encontraron clientes en esta mesa"; } ?>
<!-- ./  content -->
      </div>
      <div class="modal-footer">
          <a href="?modal=pagar&mesa=<?php echo $_REQUEST["mesa"] ?>" class="btn grey btn-rounded">Facturar</a>
          <a href="?view&mesa=<?php echo $_REQUEST["mesa"] ?>" class="btn btn-primary btn-rounded">Regresar</a>
    
      </div>
    </div>
  </div>
</div>
