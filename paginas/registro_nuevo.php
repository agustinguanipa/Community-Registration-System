<?php 
  session_start();

  if (!isset($_SESSION['active'])) {
    header('Location: usuario_inicio.php');
    exit();
  }

  require_once('includes/admin_header.php');
?>

<div class="container col-lg-10">
  <div class="form-group text-center">
    <div class="card">
      <div class="card-header">
        <b>Nuevo Registro</b>
      </div>
      <div class="card-body">
        <form role="form" id="registro_nuevo" class="justify-content-center mx- my-1" align="center" enctype="multipart/form-data" action="../ajax/guardar_registro.php" method="post">
          <div class="form-row">
            <div class="col form-group col-lg-8">
              <label class="form-label" for="nombr_reg"><b>Nombre: </b></label>
              <input type="text" class="form-control" name="nombr_reg" autocomplete="off" id="nombr_reg"  maxlength="100" required>
            </div>
            <div class="col form-group col-lg-4">
              <label class="form-label" for="fecre_reg"><b>Fecha de Registro: </b></label>
              <input type="date" class="form-control" name="fecre_reg" autocomplete="off" id="fecre_reg" placeholder="">
            </div>
          </div>
          <div class="form-row">
            <div class="col form-group">
              <label class="form-label" for="descr_reg"><b>Descripción: </b></label>
              <input type="text" class="form-control" name="descr_reg" autocomplete="off" id="descr_reg" maxlength="100">
            </div>
          </div>
          <div class="form-row">
            <div class="col form-group">
              <label class="form-label" for="ident_jef"><b>Familias: </b></label>
              <?php 
                $query_jef = mysqli_query($conexion,"SELECT * FROM tab_jef");
                $result_jef = mysqli_num_rows($query_jef);
              ?>
              <select class="selectpicker" id="ident_jef" name="ident_jef" data-live-search="true" multiple>
                <?php 
                  if ($result_jef > 0) {
                  while ($jef = mysqli_fetch_array($query_jef)) {?>
                  <option value="<?php echo $jef['ident_jef'];?>"><?php echo $jef['ident_jef'];?> - <?php echo $jef['cedul_jef'];?> - <?php echo $jef['nombr_jef'];?> <?php echo $jef['apeli_jef'];?></option>
                <?php
                }
                }
                ?>
              </select>
            </div>
          </div>
          <div class="form-row">
            <div class="col form-group">
              <button type="submit" class="btn btn-primary btn-block"><i class="fa fa-save"></i> Guardar Registro</button>
              <button type="reset" class="btn btn-light btn-block"><i class="fa fa-undo"></i> Limpiar</button>
            </div>
          </div> 
        </form>    
      </div>
      <div class="card-footer">
         <a href="registro_lista.php" class="btn btn-info float-left"><i class="fa fa-arrow-left"></i> Volver al Listado</a> 
      </div>
    </div>
  </div>
</div>

<?php require_once('includes/admin_footer.php');  ?>

<script type="text/javascript">
  $( document ).ready( function () {
  $( "#noticia_registro" ).validate( {
    rules: {
      nombr_reg: {
        required: true,
        minlength: 6
      },
      descr_reg: {
        required: true,
        minlength: 15
      },
      descr_not: {
        required: true,
        minlength: 15
      },
    },

    messages: {
      nombr_reg: {
        required: "Ingrese un Título",
        minlength: "El Título debe contener al menos 6 caracteres"
      },
      descr_reg: {
        required: "Ingrese una Descripción Corta",
        minlength: "La Descripcion debe contener al menos 6 caracteres"
      },
      descr_not: {
        required: "Ingrese una Descripción Larga",
        minlength: "La Descripción debe contener al menos 15 caracteres"
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



<script type="text/javascript">
  
$('#data_source').multiselect({
    templates: {
        li: '<li><a href="javascript:void(0);"><label class="pl-2"></label></a></li>'
    },
    nonSelectedText: 'Seleccione los Jefes de Familia...',
    enableFiltering: true,
    filterBehavior: 'text',
    enableCaseInsensitiveFiltering: true,
    templates: {
        li: '<li><a href="javascript:void(0);"><label class="pl-2"></label></a></li>',
        filter: '<li class="multiselect-item filter"><div class="input-group m-0 mb-1"><input class="form-control multiselect-search" type="text"></div></li>',
        filterClearBtn: '<div class="input-group-append"><button class="btn btn btn-info multiselect-clear-filter" type="button"><i class="fa fa-times"></i></button></div>'
    },
});
var options = [
    {label: 'Tony', title: 'Tony', value: '1', selected: true},
    {label: 'Tammy', title: 'Tammy', value: '2'},
    {label: 'Bob', title: 'Bob', value: '3'},
    {label: 'Betty', title: 'Betty', value: '4'},
    {label: 'Jim', title: 'Jim', value: '5', selected: true},
    {label: 'James', title: 'James', value: '6'},
    {label: 'Jerry', title: 'Jerry', value: '7', disabled: true},
    {label: 'Amy', title: 'Amy', value: '8'},
    {label: 'Albert', title: 'Albert', value: '9'}
];


</script>