<?php 

	include "../paginas/conexion.php";

	$nombr_reg = $_POST['nombr_reg'];
	$descr_reg = $_POST['descr_reg'];
	$fecre_reg = $_POST['fecre_reg'];
	$ident_jef=$_POST['ident_jef'];


 $jefe = implode(', ', $ident_jef['ident_jef']);
 

	$ident_ref = 1;
	$statu_reg = 1;
	

		$query_insert = mysqli_query($conexion,"INSERT INTO tab_reg(nombr_reg,descr_reg,fecre_reg,statu_reg,ident_jef,ident_ref) VALUES('$nombr_reg','$descr_reg','$fecre_reg','$statu_reg','$jefe','$ident_ref')");

		 
	header('location: ../paginas/noticia_registro_exito.php');
?>