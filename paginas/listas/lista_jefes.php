<?php 
  require_once '../conexion.php';

	use Dompdf\Dompdf;
?>

<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Jefes de Familia | Consejo Comunal Ambrosio Plaza</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="././libs/bootstrap-4.1.3-dist/css/bootstrap.min.css"/>
  <script src="././libs/bootstrap-4.1.3-dist/js/bootstrap.min.js"></script>
</head>
<body>

<div id="page_pdf">
	<br>
	<table id="lista_head">
		<tr>
			<td class="logo_lista">
				<div>
					<img src="img/cc-1.png" width="75px">
				</div>
			</td>
			<td class="info_empresa" colspan="2">
				<div class="card">
					<span><h1><b>Consejo Comunal Ambrosio Plaza</b></h1></span>
					<p>Sector Pueblo Nuevo</p>
					<p>San Cristobal - Estado Tachira</p>
				</div>
			</td>
			<td class="logo_lista" align="right">
				<div>
					<img src="img/cc-2.jpg" width="80px">
				</div>
			</td>
		</tr>
	</table>
	<hr>
	<br>
	<table id="lista_cliente">
		<tr>
			<td class="info_cliente">
				<div class="card">
					<div class="card-header">
						<h3 class="h3"><b>Jefes de Familia</b></h3>
					</div>
				</div>
			</td>
		</tr>
	</table>
	
	<table id="lista_detalle">
			<thead>
				<tr align="center" class="bold">
		      <th class='text-center'>#</th>
					<th class='text-center'>Cedula</th>
					<th class='text-center'>Nombre</th>
					<th class='text-center'>Apellido</th>
					<th class='text-center'>Telef. Celular</th>
					<th class='text-center'>Calle</th>
		    </tr>
			</thead>
			<tbody id="detalle_productos">
				<?php
				        
			    $sql = "SELECT * FROM tab_jef WHERE statu_jef = 1 AND ident_jef != 1 ORDER BY ident_tip";

			    $result = mysqli_query($conexion, $sql);

			    while ($row = mysqli_fetch_row($result)) {
			    
			      ?>
			        <tr align="center">
			          <td><?php echo $row[0] ?></td>
			          <td><?php echo $row[1] ?></td>
			          <td><?php echo $row[2] ?></td>
			          <td><?php echo $row[3] ?></td>
			          <td><?php echo $row[5] ?></td>
			          <td><?php echo $row[8] ?></td>
			        </tr>
			      <?php
			      
			     }
			  ?>
			</tbody>	
	</table>
	<br><br>
	<div align="center">
		<hr>
		<p>Consejo Comunal Ambrosio Plaza</p>
		<p>San Cristobal - Venezuela</p>
	</div>

</div>

</body>
</html>
