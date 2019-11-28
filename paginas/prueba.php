<?php 
  require_once('includes/admin_header.php');

  if (!isset($_SESSION['active'])) {
    header('Location: usuario_inicio.php');
    exit();
  }
?>

<div class="container col-lg-10">
  <select class="form-control">
    <option value="CIUDADANO">CIUDADANO</option>
    <option value="home-select">ADMINISTRADOR</option>
</select>

<div class="form-group">
    <input class="form-control tipo" name="h-p1-fn" placeholder="First name" type="text"/>
</div>
<div class="form-group">
    <input class="form-control tipo" name="h-p1-ln" placeholder="Last name" type="text"/>
</div>
</div>

<?php require_once('includes/admin_footer.php');  ?>

<script type="text/javascript">
  $(function() {
  $("select.form-control").on("change",function() {
    $(".tipo").prop('disabled',this.value=="CIUDADANO");
  }).change(); // execute on load
});
</script>