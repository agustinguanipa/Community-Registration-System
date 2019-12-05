<?php 

$host = 'sql203.epizy.com';
$user = 'epiz_24886940';
$pw = '52Glgvyfp9ZaIpP';
$bd = 'epiz_24886940_ccambpla';

$conexion = @mysqli_connect($host,$user,$pw,$bd);



if (!$conexion) {
    echo 'Error en la conexion!';
}
?>