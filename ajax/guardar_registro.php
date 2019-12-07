<?php

include "../paginas/conexion.php";

$nombr_reg = $_POST['nombr_reg'];
$descr_reg = $_POST['descr_reg'];
$fecre_reg = $_POST['fecre_reg'];

$ident_ref = 1;
$statu_reg = 1;


$query_insert = mysqli_query($conexion, "INSERT INTO tab_reg(nombr_reg,descr_reg,fecre_reg,statu_reg) VALUES('$nombr_reg','$descr_reg','$fecre_reg','$statu_reg')");

$ident_reg = mysqli_insert_id($conexion);
if ($query_insert) {

    foreach ($_POST['ident_jef'] as $ident_jef) {
        $query_insert_det = mysqli_query($conexion, "INSERT INTO det_reg(ident_reg,ident_jef) VALUES('$ident_reg','$ident_jef')");
    }

}

header('location: ../paginas/registro_registro_exito.php');