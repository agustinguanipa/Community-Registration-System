<?php require_once('includes/logreg_header.php'); ?>

<head>
  <title>Iniciar Sesión | Biblioteca UNEFA Táchira</title>
</head>

<body>

<!-- Header --->

<header class="section-header mt-5">
  <section class="header-main">
    <div class="container" align="center">
      <div class="row align-items-center">
        <div class="col-sm-12">
          <div class="brand-wrap">
            <a href="../index.php" style="color: #000000; text-decoration: none;">
              <img class="logo" src="../imagen/logo-cc-color.png">
              <h2 class="logo-text"><b>Consejo Comunal Ambrosio Plaza</b></h2>
            </a>
          </div>
        </div>
      </div>
    </div>
  </section>
</header>

<body>
  <div class="container">
    <div class="form-group text-center">
      <div class="formulario-registro-inicio">
        <form name="form" id="usuario_inicio" class="justify-content-center" align="center" action="" method="post">
          <h3>Iniciar Sesión</h3>
          <hr class="my-4">
          <div class="form-row">
            <div class="col form-group">
              <label class="form-label" for="usuar_usua"><b>Usuario: </b></label>
              <input type="text" class="form-control" name="usuar_usua" autocomplete="off" id="usuar_usua" placeholder="miusuario" maxlength="20" onkeyup="this.value = this.value.toUpperCase();">
            </div>
          </div>
          <div class="form-row">
            <div class="col form-group">
              <label class="form-label" for="contr_usua"><b>Contraseña: </b></label>
              <input type="password" class="form-control" name="contr_usua" autocomplete="off" id="contr_usua" placeholder="********" maxlength="20">
            </div>
          </div>
          <div class="form-row">
            <div class="col form-group">
              <button type="submit" class="btn btn-primary btn-block"><i class="fa fa-user"></i> Iniciar Sesión</button>
              <button type="reset" class="btn btn-light btn-block"><i class="fa fa-undo"></i> Limpiar</button>
            </div>
          </div>
          <p class="text-center">No Tienes una Cuenta? <a href="usuario_registro.php">Registrarse</a> </p>
        </form>
      </div> 
    </div>
  </div>
</body>

<?php require_once('includes/logreg_footer.php'); ?>
