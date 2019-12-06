<?php require_once('includes/principal_header.php'); ?>

<head>
  <title>Contacto | Consejo Comunal Ambrosio Plaza</title>
</head>

<main class="mt-5 pt-5">
  <div class="jumbotron text-center" style="margin-bottom:0; background-color: #FFFFFF;"> 
    <div class="container">
      <div class="row">
        <div class="col-sm-12 form-group">
          <h1>Contacto</h1>
          <hr class="my-4">
          <div class="row">
            <div class="col-sm-8 form-group">
              <form role="form" id="contact-form" class="contact-form" action="contacto_mail.php" method="post">
                <div class="row">
                  <div class="col-md-6 form-label">
                    <label><b>Nombres: </b></label>
                    <div class="form-group">
                      <input type="text" class="form-control" name="nombres" autocomplete="off" id="nombres" placeholder="Carlos Agustin" onkeyup="this.value = this.value.toUpperCase();" required>
                    </div>
                  </div>
                  <div class="col-md-6 form-label">
                    <label><b>Apellidos: </b></label>
                    <div class="form-group">
                      <input type="text" class="form-control" name="apellidos" autocomplete="off" id="apellidos" placeholder="Guanipa Alvarez" onkeyup="this.value = this.value.toUpperCase();" required>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-12 form-label">
                    <label><b>E-Mail: </b></label>
                    <div class="form-group">
                      <input type="email" class="form-control" name="email" autocomplete="off" id="email" placeholder="correo@mail.com" onkeyup="this.value = this.value.toUpperCase();" required>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-12 form-label">
                    <label><b>Mensaje: </b></label>
                    <div class="form-group">
                      <textarea class="form-control textarea" rows="3" name="mensaje" id="mensaje" placeholder="Mensaje" required></textarea>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-12">
                    <button type="submit" class="btn btn-primary">Enviar Mensaje</button>
                  </div>
                </div>
              </form>
            </div> 
            <div class="col-sm-4 form-group">
              <div>
                <img src="../imagen/com-2.png" alt="Imagen Contacto" height="325px">
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</main>

<?php require_once('includes/principal_footer.php'); ?>

<script type="text/javascript">
  $( document ).ready( function () {
  $( "#contact-form" ).validate( {
    rules: {
      nombres: {
        required: true,
        lettersonly: true,
        minlength: 2
      },
      apellidos: {
        required: true,
        lettersonly: true,
        minlength: 2
      },
      email: {
        required: true,
        email: true
      },
      mensaje: {
        required: true,
        minlength: 10
      },
    },

    messages: {
      nombres: {
        required: "Ingrese un Nombre",
        lettersonly: "El Nombre solo debe contener letras",
        minlength: "El Nombre debe contener al menos 2 caracteres"
      },
      apellidos: {
        required: "Ingrese un Apellido",
        lettersonly: "El Apellido solo debe contener letras espacios",
        minlength: "El Apellido debe contener al menos 2 caracteres"
      },
      email: {
        required: "Ingrese una Dirección de Correo Electrónico Válida",
        email: "Ingrese una Dirección de Correo Electrónico Válida"
      },
      mensaje: {
        required: "Ingrese un Mensaje",
        minlength: "El Mensaje debe contener al menos 10 caracteres"
      },
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
