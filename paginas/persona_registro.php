<?php 
  require_once('includes/admin_header.php');

  if (!isset($_SESSION['active'])) {
    header('Location: usuario_inicio.php');
    exit();
  }
?>

<div class="container col-lg-8">
  <div class="form-group text-center">
    <div class="card">
    	<div class="card-header">
		    <b>Registrar Usuario</b>
		  </div>
	   	<div class="card-body">
        <form role="form" id="persona_registro" class="justify-content-center mx- my-1" align="center" enctype="multipart/form-data" action="../ajax/guardar_persona.php" method="post">
          <div class="form-row">
            <div class="col form-group">
              <label class="form-label" for="cedul_per"><b>Cédula de Identidad: </b></label>
              <input type="text" class="form-control" name="cedul_per" autocomplete="off" id="cedul_per" placeholder="26607655" maxlength="20" onkeyup="this.value = this.value.toUpperCase();" required>
            </div>
            <div class="col form-group">
              <label class="form-label" for="nombr_per"><b>Nombre: </b></label>
              <input type="text" class="form-control" name="nombr_per" autocomplete="off" id="nombr_per" placeholder="Carlos" maxlength="20" onkeyup="this.value = this.value.toUpperCase();" required>
            </div>
            <div class="col form-group">
              <label class="form-label" for="apeli_per"><b>Apellido: </b></label>
              <input type="text" class="form-control" name="apeli_per" autocomplete="off" id="apeli_per" placeholder="Agustin" maxlength="20" onkeyup="this.value = this.value.toUpperCase();">
            </div>
          </div>
          <div class="form-row">
            <div class="col form-group">
              <label class="form-label" for="ident_tipu"><b>Tipo de Usuario: </b></label>
              <?php 
                $query_rol = mysqli_query($conexion,"SELECT * FROM  tab_tip");
                $result_rol = mysqli_num_rows($query_rol);
              ?>
              <select class="form-control" name="ident_tip" id="ident_tip">
                <?php 
                  if ($result_rol > 0) {
                  while ($rol = mysqli_fetch_array($query_rol)) {?>
                  <option value="<?php echo $rol['ident_tip'];?>"><?php echo $rol['nombr_tip'];?></option>
                <?php
                }
                }
                ?>
              </select>
            </div>
          </div>
          <div class="form-row">
            <div class="col form-group">
              <label class="form-label" for="telef_per"><b>Teléfono: </b></label>
              <input type="text" class="form-control telef-mask" name="telef_per" autocomplete="off" id="telef_per" placeholder="(0000) 000 0000" maxlength="15">
            </div>
          </div>
          <div class="form-row">
            <div class="col form-group">
              <label class="form-label" for="email_per"><b>E-Mail: </b></label>
              <input type="email" class="form-control" name="email_per" autocomplete="off" id="email_per" placeholder="correo@mail.com" onkeyup="this.value = this.value.toUpperCase();">
            </div>
          </div>
          <div class="form-row">
            <div class="col form-group">
              <label class="form-label" for="direc_per"><b>Dirección: </b></label>
              <input type="text" class="form-control" name="direc_per" autocomplete="off" id="direc_per" placeholder="Calle 2 Bellavista" onkeyup="this.value = this.value.toUpperCase();">
            </div>
          </div>
          <div class="form-row">
            <div class="col form-group">
              <label class="form-label" for="tibom_per"><b>Tipo de Bombona: </b></label>
              <select class="form-control" id="tibom_per" name="tibom_per">
                <option value="10 KG">10 KG</option>
                <option value="20 KG">20 KG</option>
                <option value="GRANEL">GRANEL</option>
              </select>
            </div>
          </div>
          <div class="form-row">
            <div class="col form-group">
              <label class="form-label" for="usuar_per"><b>Usuario: </b></label>
              <input type="text" class="form-control" name="usuar_per" autocomplete="off" id="usuar_per" placeholder="miusuario" maxlength="20" onkeyup="this.value = this.value.toUpperCase();">
            </div>
          </div>
          <div class="form-row">
            <div class="col form-group">
              <label class="form-label" for="contr_per"><b>Contraseña: </b></label>
              <input type="password" class="form-control" name="contr_per" autocomplete="off" id="contr_per" placeholder="********" maxlength="20">
            </div>
            <div class="col form-group">
              <label class="form-label" for="confirm_password"><b>Confirmar Contraseña: </b></label>
              <input type="password" class="form-control" name="confirm_password" autocomplete="off" id="confirm_password" placeholder="********" maxlength="20">
            </div>
          </div>
          <div class="form-row">
            <div class="col form-group">
              <button type="submit" class="btn btn-primary btn-block"><i class="fa fa-user"></i> Registrar Usuario</button>
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


<?php require_once('includes/admin_footer.php');  ?>

<script type="text/javascript">
	$( document ).ready( function () {
  $( "#usuario_registro" ).validate( {
    rules: {
      nombr_usua: {
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
      contr_usua: {
        required: true,
        minlength: 4
      },
      confirm_password: {
        required: true,
        minlength: 4,
        equalTo: "#contr_usua"
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
      nombr_usua: {
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
      contr_usua: {
        required: "Ingrese una Contraseña",
        minlength: "Tu Contraseña debe contener al menos 5 caracteres"
      },
      confirm_password: {
        required: "Ingrese una Contraseña",
        minlength: "Tu Contraseña debe contener al menos 5 caracteres",
        equalTo: "Ingrese la Misma Contraseña"
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