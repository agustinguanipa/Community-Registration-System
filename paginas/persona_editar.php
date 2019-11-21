<?php 
  require_once('includes/admin_header.php');

  if (!isset($_SESSION['active'])) {
    header('Location: usuario_inicio.php');
    exit();
  }
?>

<?php 

include 'conexion.php' ;

if (empty($_GET['id'])) {
  header('location: persona_lista.php');
}

$id = $_GET['id'];

	$query_user = mysqli_query($conexion,"SELECT u.ident_per, u.cedul_per,u.nombr_per, u.apeli_per, u.fecna_per, u.telem_per, u.telec_per, u.email_per, u.direc_per, u.tifam_per, u.tibom_per, u.seria_per, u.usuar_per, r.ident_tip, r.nombr_tip FROM tab_per u INNER JOIN tab_tip r ON u.ident_tip = r.ident_tip WHERE ident_per = '$id' AND statu_per = 1");
	
	
$result_user = mysqli_num_rows($query_user);

if ($result_user == 0) 
{
	header('location: persona_lista.php');
}else{
	$data_per = mysqli_fetch_array($query_user);
	
	$cedul_per = $data_per['cedul_per'];
  $nombr_per = $data_per['nombr_per'];
  $apeli_per = $data_per['apeli_per'];
  $fecna_per = $data_per['fecna_per'];
  $telem_per = $data_per['telem_per'];
  $telec_per = $data_per['telec_per'];
  $email_per = $data_per['email_per'];
  $direc_per = $data_per['direc_per'];
  $tifam_per = $data_per['tifam_per'];
  $tibom_per = $data_per['tibom_per'];
  $seria_per = $data_per['seria_per'];
  $usuar_per = $data_per['usuar_per'];
  $ident_tip = $data_per['ident_tip'];
  $nombr_tip = $data_per['nombr_tip'];
}
mysqli_close($conexion);
?>

<div class="container col-lg-6">
  <div class="form-group text-center">
    <div class="card">
    	<div class="card-header">
			    <b>Editar Usuario</b>
			  </div>
		   	<div class="card-body">
  				<form role="form" id="usuario_editar" class="justify-content-center mx-3 my-1" align="center" enctype="multipart/form-data" action="../ajax/editar_usuario.php" method="post">
  					<input type="hidden" name="id" id="id" value="<?php echo $id ?>">
		        <div class="form-row">
		          <div class="col form-group">
		            <label class="form-label" for="nombr_per">Nombre: </label>
		            <input type="text" class="form-control" name="nombr_per" autocomplete="off" id="nombr_per" value="<?php echo $nombr_per; ?>" maxlength="20" onkeyup="this.value = this.value.toUpperCase();">
		          </div>
		          <div class="col form-group">
		            <label class="form-label" for="apeli_usua">Apellido: </label>
		            <input type="text" class="form-control" name="apeli_usua" autocomplete="off" id="apeli_usua" value="<?php echo $apeli_usua; ?>" maxlength="20" onkeyup="this.value = this.value.toUpperCase();">
		          </div>
		        </div>
		        <div class="form-row">
		          <div class="col form-group">
		            <label class="form-label" for="email_usua">E-Mail: </label>
		            <input type="email" class="form-control" name="email_usua" autocomplete="off" value="<?php echo $email_usua; ?>" id="email_usua" placeholder="correo@mail.com" maxlength="100" onkeyup="this.value = this.value.toUpperCase();">
		          </div>
		        </div>
		        <div class="form-row">
		          <div class="col form-group">
		            <label class="form-label" for="usuar_usua">Usuario: </label>
		            <input type="text" class="form-control" name="usuar_usua" autocomplete="off" value="<?php echo $usuar_usua; ?>" id="usuar_usua" placeholder="miusuario" maxlength="20" onkeyup="this.value = this.value.toUpperCase();">
		          </div>
		        </div>
		         <div class="form-row">
              <div class="col form-group">
                <div class="photo">
                      <label class="form-label" for="fotou_usua"><b>Imagen de Perfil: </b></label>  
                        <div class="prevPhoto">
                        <span class="delPhoto <?php $classRemove; ?>">X</span>
                        <label for="foto"></label>
                        <?php echo $foto; ?>
                        </div>
                        <div class="upimg">
                        <input type="file" name="foto" id="foto">
                        </div>
                        <div id="form_alert"></div>
                </div>
                <!-- <label class="form-label" for="fotou_usua"><b>Imagen de Perfil: </b></label>  
                <input type="file" class="filestyle" id="foto" name="foto" alt="Imagen de Perfil" data-btnClass="btn-primary" accept="image/*"> -->
              </div>
            </div>
		        <div class="form-row">
		          <div class="col form-group">
		            <label class="form-label" for="ident_tip"><b>Tipo de Usuario: </b></label>
		            <?php
		            	include "../conexion.php";
									$query_rol = mysqli_query($conexion,"SELECT * FROM  tab_tipusu");
									$result_rol = mysqli_num_rows($query_rol);
								?>
								<select class="form-control" name="ident_usua" id="ident_usua">
                  <option value="<?php echo $ident_tip;?>"><?php echo $nombr_tipu;?></option>
									<?php 
										if ($result_rol > 0) {
										while ($rol = mysqli_fetch_array($query_rol)) {?>
										<option value="<?php echo $rol['ident_tip'];?>"><?php echo $rol['nombr_tipu'];?></option>
									<?php
									}
									}
									?>
								</select>
		          </div>
		        </div>
		        <div class="form-row">
		          <div class="col form-group">
		            <button type="submit" class="btn btn-primary btn-block"><i class="fa fa-user"></i> Actualizar Usuario</button>
		            <button type="reset" class="btn btn-light btn-block"><i class="fa fa-undo"></i> Limpiar</button>
		          </div>
		        </div>
		      </form>
				</div>
				<div class="card-footer">
           <a href="usuario_lista.php" class="btn btn-primary float-left"><i class="fa fa-arrow-left"></i> Volver al Listado</a> 
				</div>
    </div> 
  </div>
</div>

<script type="text/javascript">
	$( document ).ready( function () {
  $( "#usuario_editar" ).validate( {
    rules: {
      nombr_per: {
        required: true,
        lettersonly: true,
        minlength: 2
      },
      apeli_usua: {
        required: true,
        lettersonly: true,
        minlength: 2
      },
      usuar_usua: {
        required: true,
        minlength: 2,
        remote: {
          url: "usuario_usuario_availability.php",
          type: "post",
          data:
            {
              usuar_usua: function()
              {
                return $('#usuario_registro :input[name="usuar_usua"]').val();
              }
            }
        }     
      },
      email_usua: {
        required: true,
        email: true,
        remote: {
          url: "usuario_email_availability.php",
          type: "post",
          data:
            {
              email_usua: function()
              {
                return $('#usuario_registro :input[name="email_usua"]').val();
              }
            }
        }  
      },
    },

    messages: {
      nombr_per: {
        required: "Ingrese su Nombre",
        lettersonly: "Tu Nombre solo debe contener letras sin espacios",
        minlength: "Tu Nombre debe contener al menos 2 caracteres"
      },
      apeli_usua: {
        required: "Ingrese su Apellido",
        lettersonly: "Tu Apellido solo debe contener letras sin espacios",
        minlength: "Tu Apellido debe contener al menos 2 caracteres"
      },
      usuar_usua: {
        required: "Ingrese un Nombre de Usuario",
        minlength: "Tu Nombre de Usuario debe contener al menos 2 caracteres",
        remote: jQuery.validator.format("{0} no esta disponible")
      },
      email_usua: {
        required: "Ingrese una Dirección de Correo Electrónico Válida",
        email: "Ingrese una Dirección de Correo Electrónico Válida",
        remote: jQuery.validator.format("{0} no esta disponible")
      }
    },

    errorElement: "em",
    errorPlacement: function ( error, element ) {
      // Add the `invalid-feedback` class to the error element
      error.addClass( "invalid-feedback" );

      if ( element.prop( "type" ) === "checkbox" ) {
        error.insertAfter( element.next( "label" ) );
      } else {
        error.insertAfter( element );
      }
    },
    highlight: function ( element, errorClass, validClass ) {
      $( element ).addClass( "is-invalid" ).removeClass( "is-valid" );
    },
    unhighlight: function (element, errorClass, validClass) {
      $( element ).addClass( "is-valid" ).removeClass( "is-invalid" );
    }
  } );

} );

	jQuery.validator.addMethod("lettersonly", function(value, element) {
  return this.optional(element) || /^[A-Z^\s]+$/i.test(value);
}, "Letters only please"); 
</script>

<?php require_once('includes/admin_footer.php');  ?>