<!DOCTYPE html>
<html lang="es">

<head>
  <title>Panel de Administración | Consejo Comunal Ambrosio Plaza</title>
  <meta name="description" content="Consejo Comunal Ambrosio Plaza | Comunidad de Ambrosio Plaza, San Cristóbal, Estado Táchira, Venezuela">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <!--- Favicon --->
  <link rel="shortcut icon" href="imagen/favicon.ico" type="image/x-icon">
  <link rel="icon" href="imagen/favicon.ico" type="image/x-icon">
  <!--- CSS --->
  <link rel="stylesheet" type="text/css" href="../css/estilos_admin.css">
  <!--- JS --->
 
  <!-- Bootstrap core CSS -->
  <link href="../libs/MDB-Free_4.8.11/css/bootstrap.min.css" rel="stylesheet">
  <!-- Material Design Bootstrap -->
  <link href="../libs/MDB-Free_4.8.11/css/mdb.min.css" rel="stylesheet">
  <!-- Font Awesome -->
  <link href="../libs/fontawesome-free-5.11.2-web/css/all.css" rel="stylesheet"> <!--load all styles -->
  <!-- Scripts -->
  <!-- JQuery -->
  <script type="text/javascript" src="../libs/MDB-Free_4.8.11/js/jquery-3.4.1.min.js"></script>
  <!-- Bootstrap tooltips -->
  <script type="text/javascript" src="../libs/MDB-Free_4.8.11/js/popper.min.js"></script>
  <!-- Bootstrap core JavaScript -->
  <script type="text/javascript" src="../libs/MDB-Free_4.8.11/js/bootstrap.min.js"></script>
  <!-- MDB core JavaScript -->
  <script type="text/javascript" src="../libs/MDB-Free_4.8.11/js/mdb.min.js"></script>
  <!-- Initializations -->
  <script type="text/javascript">
    // Animations initialization
    new WOW().init();
  </script>
  <!--- jQuery Validation --->
  <script type="text/javascript" src="../libs/jquery-validation-1.19.0/lib/jquery-1.11.1.js"></script>
  <script type="text/javascript" src="../libs/jquery-validation-1.19.0/dist/jquery.validate.js"></script>
  <!--- jQuery Mask Plugin --->
  <script type="text/javascript" src="../libs/jQuery-Mask-Plugin/dist/jquery.mask.js"></script>
</head>

<body class="grey lighten-3">
  <!--Main Navigation-->
  <header>
    <!-- Navbar -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark warning-color-dark scrolling-navbar">
      <div class="container-fluid">
        <!-- Collapse -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <!-- Links -->
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <!-- Left -->
          <ul class="navbar-nav mr-auto"> 
          </ul>
          <!-- Right -->
          <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
            <li class="nav-item active">
              <a class="nav-link" href="admin_panel.php" style="color: #FFFFFF;"><i class="fa fa-user"></i> <b>Bienvenido</b></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="admin_cerrar.php" style="color: #FFFFFF;"><i class="fa fa-sign-out-alt"></i> <b>Cerrar Sesión</b></a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <!-- Navbar -->
    <!-- Sidebar -->
    <div class="sidebar-fixed position-fixed">
      <a class="logo-wrapper waves-effect" align="center">
        <img src="../imagen/logo-cc-color.png" class="img-fluid" alt="Logo CC"></br>
        <span class="" style="color: #000000; font-size: 14px; font-weight: bold;"><b>Panel de Administración</b></span>
      </a>
      <div class="list-group list-group-flush">
        <a href="admin_panel.php" class="list-group-item warning-color-dark text-white waves-effect">
          <i class="fa fa-home mr-3"></i>Inicio
        </a>
        <a href="#" class="list-group-item list-group-item-action waves-effect">
          <i class="fa fa-newspaper mr-3"></i>Noticias</a>
        <a href="#" class="list-group-item list-group-item-action waves-effect">
          <i class="fa fa-users mr-3"></i>Personas</a>
        <a href="#" class="list-group-item list-group-item-action waves-effect">
          <i class="fas fa-table mr-3"></i>Usuarios</a>
        <a href="#" class="list-group-item list-group-item-action waves-effect">
          <i class="fas fa-cogs mr-3"></i>Configuracion</a>
      </div>
    </div>
    <!-- Sidebar -->
  </header>
  <!--Main Navigation-->