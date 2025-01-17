<?php 
  session_start();

  if (!isset($_SESSION['active'])) {
    header('Location: usuario_inicio.php');
    exit();
  }

  require_once('includes/admin_header.php');
?>

<div class="container col-lg-6">
  <div class="form-group text-center">
    <div class="card">
    	<div class="card-header">
			    <b>Registrar Jefe de Familia</b>
			  </div>
		   	<div class="card-body">
  				<h2><b>¡El Jefe de Familia ha sido Registrado Exitosamente!</b></h2>
				</div>
				<div class="card-footer">
           <a href="jefe_registro.php" class="btn btn-info float-left"><i class="fa fa-plus"></i> Registrar otro Jefe</a> 
           <a href="jefe_lista.php" class="btn btn-primary float-right">Ir al Listado <i class="fa fa-arrow-right"></i></a> 
				</div>
    </div> 
  </div>
</div>

<?php require_once('includes/admin_footer.php');  ?>

