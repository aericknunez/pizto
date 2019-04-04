<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

include_once 'application/common/Mysqli.php';
include_once 'system/productos/Product.php';
include_once 'application/common/Helpers.php';
$db = new dbConn();
?>

<div class="row">
  <div class="col-sm-4">
     <h2>AGREGAR PRODUCTO</h2>
     <form name="form-addpro" id="form-addpro" class="text-center border border-light p-2">

     <select id="producto" name="producto" class="browser-default form-control mb-2" required="yes">
    <option disabled selected>Seleccione un producto</option>
    <?php 
    $a = $db->query("SELECT * FROM pro_dependiente ORDER BY id");
    foreach ($a as $b) {
        echo '<option value='. $b["id"] .'>'. $b["nombre"] .'</option>';
    }
    $a->close();
     ?>
  </select>

     <input type="number" id="cantidad" name="cantidad" class="form-control mb-2" placeholder="Cantidad" required="yes">
     <textarea name="comentarios" id="comentarios" class="form-control"></textarea>
    <button class="btn btn-info my-4" id="btn-addpro" name="btn-addpro" type="submit">Agregar Producto</button>
</form>
  </div>


<div  class="col-sm-8" id="historial">
 <h3>HISTORIAL</h3>

<?php 
Product::VerProducto($_REQUEST["page"]);
 ?>

</div> 

</div>