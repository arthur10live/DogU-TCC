<?php 
//$con_ip = "sql255.main-hosting.eu";
$con_ip = "localhost";
//$con_login = "u765863036_dogu";
$con_login = "root";
//$con_senha = "123123asd";
$con_senha = "usbw";
$con_db = "u765863036_dogu";
$conexao = mysqli_connect($con_ip, $con_login, $con_senha, $con_db);

//Se der erro, mensagem:
if (mysqli_connect_errno())
{
    echo "A conexão MySQLi apresentou erro: " . mysqli_connect_error();
}

//O tipo de caracteres a ser usado
header('Content-Type: text/html; charset=utf-8');
?> 