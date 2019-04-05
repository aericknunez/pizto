<?php  

class Reporte{

	public function __construct(){
		
	}


	public function Contenido($fecha){

		$this->Corte($fecha);
		$this->ProductosEspeciales($fecha);
		Historial::HistorialGDiario($fecha);
		$this->VentaEspecial($fecha);
		$this->OtrasVentas($fecha);

	}


	public function Corte($fecha){
			$db = new dbConn();

				$pro=0;
				//busqueda de usuarios
				$a = $db->query("select * from corte_diario where fecha = '$fecha' and td = ".$_SESSION['td']."");

				if($a->num_rows > 0){  
					echo '<h2>Corte Diario</h2>
				    <table class="table table-striped table-sm">

						<thead>
					     <tr>
					       <th>Fecha</th>
					       <th>Mesas</th>
					       <th>Clientes</th>
					       <th>Efectivo</th>
					        <th>Total</th>
					        <th>Gastos</th>
					        <th>Diferencia</th>
					     </tr>
					   </thead>

					   <tbody>';

			    foreach ($a as $b) {
				
				if($b["edo"] == 1){
				$colores='class="text-black"';
				} else {
				$colores='class="text-danger"';	
				} 
				  echo '<tr '.$colores.'>
				       <th scope="row">'. $b["fecha"] . '</th>
				       <td>'. $b["mesas"] . '</td>
				       <td>'. $b["clientes"] . '</td>
				       <td>'. Helpers::Dinero($b["efectivo"]) . '</td>
				       <td>'. Helpers::Dinero($b["total"]) . '</td>
				       <td>'. Helpers::Dinero($b["gastos"]) . '</td>
				       <td>'. Helpers::Dinero($b["diferencia"]) . '</td>
				     </tr>';
					unset($colores);
				    }
				   $a->close();

			echo '</tbody>
				</table>';
			} // num rows
	}





	public function VentaEspecial($fecha){
			$db = new dbConn();

				$a = $db->query("select * from ticket where fecha = '$fecha' and cod = 8889 and edo = 1 and td = ".$_SESSION['td']."");

				if($a->num_rows > 0){  
					echo '<h2>Venta Especial</h2>
				    <table class="table table-striped table-sm">
						<thead>
					     <tr>
					       <th>Producto</th>
					       <th>Sub Total</th>
					       <th>Imp</th>
					       <th>Total</th>
					        <th>Factura</th>
					        <th>Hora</th>
					        <th>Cajero</th>
					     </tr>
					   </thead>

					   <tbody>';

			    foreach ($a as $b) {
				  echo '<tr class="text-black">
				       <th scope="row">'. $b["producto"] . '</th>
				       <td>'. $b["stotal"] . '</td>
				       <td>'. $b["imp"] . '</td>
				       <td>'. $b["total"] . '</td>
				       <td>'. $b["num_fac"] . '</td>
				       <td>'. $b["hora"] . '</td>
				       <td>'. $b["cajero"] . '</td>
				     </tr>';

// aqui busco los productos que lleva ese bolado
				$ax = $db->query("select * from ticket where fecha = '$fecha' and cod != 8889 and num_fac = ".$b["num_fac"]." and edo = 1 and td = ".$_SESSION['td']."");
				 foreach ($ax as $bx) {
				 	    
				 	    if ($r = $db->select("nombre", "producto", "WHERE cod = ".$bx["cod"]." and td = ".$_SESSION['td']."")) { 
					        $nombre = $r["nombre"];
					    } unset($r);  

				 	echo '<tr class="text-danger">
				       <th scope="row">'. $nombre . '</th>
				       <td>'. $bx["stotal"] . '</td>
				       <td>'. $bx["imp"] . '</td>
				       <td>'. $bx["total"] . '</td>
				       <td>'. $bx["num_fac"] . '</td>
				       <td>'. $bx["hora"] . '</td>
				       <td>'. $bx["cajero"] . '</td>
				     </tr>';

				 }

				} $a->close();

					    $a = $db->query("SELECT sum(stotal), sum(imp), sum(total) FROM ticket where fecha = '$fecha' and cod = 8889 and edo = 1 and td = ".$_SESSION['td']."");
					    foreach ($a as $b) {
					        $stotal=$b["sum(stotal)"];
					        $imp=$b["sum(imp)"];
					        $total=$b["sum(total)"];
					    } $a->close();

					echo '<tr class="text-black">
				       <th scope="row">TOTALES</th>
				       <td>'. $stotal . '</td>
				       <td>'. $imp . '</td>
				       <td>'. $total . '</td>
				       <td></td>
				       <td></td>
				       <td></td>
				     </tr>';

			echo '</tbody>
				</table>';
			} // num rows
	}







	public function OtrasVentas($fecha){
			$db = new dbConn();

				$a = $db->query("select * from ticket where fecha = '$fecha' and cod = 8888 and edo = 1 and td = ".$_SESSION['td']."");

				if($a->num_rows > 0){  
					echo '<h2>Otras Ventas</h2>
				    <table class="table table-striped table-sm">
						<thead>
					     <tr>
					       <th>Producto</th>
					       <th>Sub Total</th>
					       <th>Imp</th>
					       <th>Total</th>
					        <th>Factura</th>
					        <th>Hora</th>
					        <th>Cajero</th>
					     </tr>
					   </thead>

					   <tbody>';

			    foreach ($a as $b) {
				  echo '<tr class="text-black">
				       <th scope="row">'. $b["producto"] . '</th>
				       <td>'. $b["stotal"] . '</td>
				       <td>'. $b["imp"] . '</td>
				       <td>'. $b["total"] . '</td>
				       <td>'. $b["num_fac"] . '</td>
				       <td>'. $b["hora"] . '</td>
				       <td>'. $b["cajero"] . '</td>
				     </tr>';

					} $a->close();

					    $a = $db->query("SELECT sum(stotal), sum(imp), sum(total) FROM ticket where fecha = '$fecha' and cod = 8888 and edo = 1 and td = ".$_SESSION['td']."");
					    foreach ($a as $b) {
					        $stotal=$b["sum(stotal)"];
					        $imp=$b["sum(imp)"];
					        $total=$b["sum(total)"];
					    } $a->close();

					echo '<tr class="text-black">
				       <th scope="row">TOTALES</th>
				       <td>'. $stotal . '</td>
				       <td>'. $imp . '</td>
				       <td>'. $total . '</td>
				       <td></td>
				       <td></td>
				       <td></td>
				     </tr>';

			echo '</tbody>
				</table>';
			} // num rows
	}







	public function ProductosEspeciales($fecha){
			$db = new dbConn();

				$a = $db->query("select * from alter_producto_reporte where td = ".$_SESSION['td']."");

				if($a->num_rows > 0){  
					echo '<h2>Productos Especiales</h2>
				    <table class="table table-striped table-sm">
						<thead>
					     <tr>
					       <th>No</th>
					       <th>Producto</th>
					       <th>Cantidad</th>					       
					       <th>Precio</th>
					       <th>Total</th>
					     </tr>
					   </thead>

					   <tbody>';
					   $n = 0;
			    foreach ($a as $b) {
			    		$n = $n + 1;

			    		$cod = $b["producto"];
			    		 $ax = $db->query("SELECT sum(cant), sum(total) FROM ticket where fecha = '$fecha' and cod = '$cod' and edo = 1 and td = ".$_SESSION['td']."");
					    
					    foreach ($ax as $bx) {
					    	$cant=$bx["sum(cant)"];
					        $total=$bx["sum(total)"];
					    } $ax->close();

					    if ($r = $db->select("nombre, precio", "precios", "WHERE cod = '$cod' and td = ".$_SESSION['td']."")) { 
					        $nombre = $r["nombre"]; $precio = $r["precio"];
					    } unset($r);

				  echo '<tr class="text-black">
				       <th scope="row">'. $n . '</th>
				       <th>'. $nombre . '</th>
				       <th>'. Helpers::Entero($cant) . '</th>				  
				       <td>'. $precio . '</td>
				       <th>'. Helpers::Dinero($total) . '</th>
				     </tr>';

					} $a->close();

				echo '</tbody>
				</table>';
			} // num rows
	}







// termina la clase
 }


?>