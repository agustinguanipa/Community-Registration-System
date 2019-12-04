<?php 
session_start();
 include "../paginas/conexion.php";

 $actual = md5($_POST['txtPassUser']);
 $nueva = md5($_POST['txtNewPassUser']);
 $confirmacion = $_POST['txtPassConfirm'];
 $idUser = $_SESSION['idUser'];

	 
	$query_user = mysqli_query($conexion,"SELECT * FROM tab_jef WHERE contr_jef = '$actual' AND ident_jef = '$ident_jef'");
	$result_user = mysqli_num_rows($query_user);

	if ($result_user > 0)
	{
		$query_update = mysqli_query($conexion,"UPDATE tab_jef SET contr_jef = '$nueva' WHERE ident_jef = '$ident_jef'");

		if ($query_update) 
		{
			echo 'actualizo';
		}

		}else{
			echo 'La clave actual es incorrecta';
			header('location: ../paginas/admin_configuracion.php');
		}
		header('location: ../paginas/configuracion_actualizar_exito.php');
 ?>

