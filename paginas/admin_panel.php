<?php require_once('includes/admin_header.php'); ?>

  <!--Main Layout-->
  <main class="pt-5 lg-5">
    <div class="container-fluid mt-5">
      <div class="jumbotron jumbotron-fluid" align="center">
        <h2 class="display-6"><b>Consejo Comunal Ambrosio Plaza</b></h2>
        <hr class="my-1">
        <a class="btn btn-deep-orange" href="../index.php" role="button">Ir a la Web</a>
      </div>
      <!-- Card deck -->
      <div class="card-deck" align="center">
        <!-- Card -->
        <div class="card mb-4">
          <!--Card image-->
          <div class="view overlay">
            <img class="card-img-top" src="../imagen/panel-3.jpg" alt="Panel Noticias">
            <a href="#!">
              <div class="mask rgba-white-slight"></div>
            </a>
          </div>
          <!--Card content-->
          <div class="card-body">
            <!--Title-->
            <h4 class="card-title">Noticias</h4>
            <!--Text-->
            <p class="card-text">Agrega y Visualiza todas las Noticias Publicadas.</p>
            <!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
            <button type="button" class="btn btn-deep-orange btn-md">Ver Noticias</button>
          </div>
        </div>
        <!-- Card -->
        <!-- Card -->
        <div class="card mb-4">
          <!--Card image-->
          <div class="view overlay">
            <img class="card-img-top" src="../imagen/panel-1.jpg" alt="Panel Personas">
            <a href="#!">
              <div class="mask rgba-white-slight"></div>
            </a>
          </div>
          <!--Card content-->
          <div class="card-body">
            <!--Title-->
            <h4 class="card-title">Personas</h4>
            <!--Text-->
            <p class="card-text">Listado de Personas que integran la Comunidad.</p>
            <!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
            <button type="button" class="btn btn-deep-orange btn-md">Ver Personas</button>
          </div>
        </div>
        <!-- Card -->
        <!-- Card -->
        <div class="card mb-4">
          <!--Card image-->
          <div class="view overlay">
            <img class="card-img-top" src="../imagen/panel-2.jpg" alt="Panel Usuarios">
            <a href="#!">
              <div class="mask rgba-white-slight"></div>
            </a>
          </div>
          <!--Card content-->
          <div class="card-body">
            <!--Title-->
            <h4 class="card-title">Usuarios</h4>
            <!--Text-->
            <p class="card-text">Usuarios Registrados para Administrar el Sistema</p>
            <!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
            <button type="button" class="btn btn-deep-orange btn-md">Ver Usuarios</button>
          </div>
        </div>
        <!-- Card -->
      </div>
      <!-- Card deck -->
    </div>
  </main>
  <!--Main Layout-->

  <?php require_once('includes/admin_footer.php'); ?>
