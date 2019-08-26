<?php
if(!isset($_SESSION['logado']) || !isset($_COOKIE['logado']) || !isset($_COOKIE['login'])){
    header("Location: index.php?sair=sim");  
}
?>