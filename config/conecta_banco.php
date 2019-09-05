<?php 
$con_login = "u765863036_dogu";
//$con_login = "root";
$con_senha = "123123asd";
//$con_senha = "usbw";

try {
    $conexao = new PDO('mysql:host=sql255.main-hosting.eu;dbname=u765863036_dogu', $con_login, $con_senha);
    $conexao->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch(PDOException $e) {
      echo 'ERROR: ' . $e->getMessage();
}

?> 