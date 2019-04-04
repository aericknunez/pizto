<?php 
class Config{

	public function __construct() { 
     } 



	public function CambiarEspecial($cod){
    	$db = new dbConn();

    	$a = $db->query("SELECT * FROM productos_venta_especial WHERE producto = '$cod' and td = ".$_SESSION["td"]."");
		if($a->num_rows == 0){

		    $datos = array();
		    $datos["producto"] = $cod;
		    $datos["td"] = $_SESSION["td"];
		    if ($db->insert("productos_venta_especial", $datos)) {
		      Alerts::Alerta("success","Cambiado Correctamente","El producto ha sido cambiado correctamente");
		    } else {
			        Alerts::Alerta("error","Error","Ha ocurrido un error desconocido"); 
			    }

		} else {

			    if ( $db->delete("productos_venta_especial", "WHERE producto=" . $cod)) {
			        Alerts::Alerta("success","Cambiado Correctamente","El producto ha sido eliminado correctamente"); 
			    } else {
			        Alerts::Alerta("error","Error","Ha ocurrido un error desconocido"); 
			    } 

		}
		$a->close();


    }

	public function VerProductosEspecial($npagina){
    	$db = new dbConn();

    $limit = 10;
	$adjacents = 2;
	if($npagina == NULL) $npagina = 1; 
	$a = $db->query("SELECT * FROM producto WHERE td = ". $_SESSION['td'] ."");
	$total_rows = $a->num_rows;
	$a->close();

	$total_pages = ceil($total_rows / $limit);
	
	if(isset($npagina) && $npagina != NULL) {
		$page = $npagina;
		$offset = $limit * ($page-1);
	} else {
		$page = 1;
		$offset = 0;
	}

    $a = $db->query("SELECT * FROM producto WHERE td = ". $_SESSION['td'] ." limit $offset, $limit");
    	$numerox=0;
    	if($a->num_rows > 0){
    	$numerox++;
    	
	      echo '<table class="table table-sm table-striped">
		   <thead>
		     <tr>
		       <th>Codigo</th>
		       <th>Nombre</th>
		       <th>Categoria</th>
		       <th>Especial</th>
		     </tr>
		   </thead>
		   <tbody>';
	    foreach ($a as $b) {
	    		$r = $db->select("categoria", "categorias", "WHERE cod = ". $b["categoria"] ." and td =  ". $_SESSION['td'] ."");

	    		$az = $db->query("SELECT * FROM productos_venta_especial WHERE producto = ". $b["cod"] ." and td =  ". $_SESSION['td'] ."");
	    		if($az->num_rows != 0){ $colore = "blue"; $act = "Activo"; } else { $colore = "red"; $act = "Inactivo"; } 				 
			    echo '<tr>
				       <th scope="row">'. $b["cod"] . '</th>
				       <td>'. $b["nombre"] . '</td>
				       <td>'. $r["categoria"] . '</td>
				       <td><a id="cambiar-especial" op="101" cod="'. $b["cod"] .'" iden="'.$npagina.'"><span class="badge badge-pill '.$colore.'">'.$act.'</span></a>';

		       echo '</td>
		      </tr>';
		$az->close();
		unset($r);
	        
	    } echo '</tbody>
	    		 </table>';

			} else { echo "Aun no se han agregado productos"; }// num rows
	    $a->close();

	if($total_pages <= (1+($adjacents * 2))) {
		$start = 1;
		$end   = $total_pages;
	} else {
		if(($page - $adjacents) > 1) {	
			if(($page + $adjacents) < $total_pages) {  
				$start = ($page - $adjacents); 
				$end   = ($page + $adjacents); 
			} else {							
				$start = ($total_pages - (1+($adjacents*2))); 
				$end   = $total_pages; 
			}
		} else {
			$start = 1; 
			$end   = (1+($adjacents * 2));
		}
	}

	 if($total_pages > 1) { 

	$page <= 1 ? $enable = 'disabled' : $enable = '';
	 	echo '<ul class="pagination pagination-sm justify-content-center">
	 	<li class="page-item '.$enable.'">
				<a class="page-link" id="paginador" op="100" iden="1">&lt;&lt;</a>
			</li>';
		
		$page>1 ? $pagina = $page-1 : $pagina = 1;
		echo '<li class="page-item '.$enable.'">
				<a class="page-link" id="paginador" op="100" iden="'.$pagina.'">&lt;</a>
			</li>';

		for($i=$start; $i<=$end; $i++) {
			$i == $page ? $pagina =  'active' : $pagina = '';
			echo '<li class="page-item '.$pagina.'">
				<a class="page-link" id="paginador" op="100" iden="'.$i.'">'.$i.'</a>
			</li>';
		}

		$page >= $total_pages ? $enable = 'disabled' : $enable = '';
		$page < $total_pages ? $pagina = ($page+1) : $pagina = $total_pages;
		echo '<li class="page-item '.$enable.'">
				<a class="page-link" id="paginador" op="100" iden="'.$pagina.'">&gt;</a>
			</li>';

		echo '<li class="page-item '.$enable.'">
				<a class="page-link" id="paginador" op="38" iden="'.$total_pages.'">&gt;&gt;</a>
			</li>

			</ul>';



	 	 }  // end pagination 
  
    }








} // fin de la clase

 ?>