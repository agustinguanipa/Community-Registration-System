<?php 
include '../conexion.php';


session_start();

//FORMULARIO CAMBIAR CONTRASEÑA
	if ($_POST['action'] == 'changePassword') 
	{
		if (!empty($_POST['txtPassUser']) && !empty($_POST['txtNewPassUser'])) 
		{
		$actual = md5($_POST['txtPassUser']);
 $nueva = md5($_POST['txtNewPassUser']);
 $confirmacion = $_POST['txtPassConfirm'];
 $idUser = $_SESSION['idUser'];

			$code = '';
			$msg = '';
			$arrData = array();

			 
	$query_user = mysqli_query($conexion,"SELECT * FROM tab_jef WHERE contr_jef = '$actual' AND ident_jef = '$ident_jef'");
	$result_user = mysqli_num_rows($query_user);


			if ($result_user > 0)
			{
				$query_update = mysqli_query($conexion,"UPDATE tab_jef SET contr_jef = '$nueva' WHERE ident_jef = '$ident_jef'");

				if ($query_update) 
				{
					$code = '00';
					$msg = '<p style="color: green;">Su contraseña se ha actualizado con exito.</p>';
				}else{
					$code = '2';
					$msg = '<p style="color: red;">No es posible cambiar su contraseña.</p>';
				}
			}else{
				$code = '1';
				$msg = '<p style="color: red;">La contraseña actual es incorrecta.</p>';
			}

			$arrData =array('cod' => $code, 'msg' => $msg);
			echo json_encode($arrData,JSON_UNESCAPED_UNICODE);
		}else
		{
			echo "error";
		}
		exit;
	}

	?>
	