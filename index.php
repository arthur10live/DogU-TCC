<?php
if(isset($_SESSION['logado'])){
    include_once("admin.php");
}else{
    include_once("home.php");
}
?>