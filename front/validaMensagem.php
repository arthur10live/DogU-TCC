<?php
$first_name = $_POST['add_first_name'];
$last_name = $_POST['add_last_name'];
$date = $_POST['add_date'];
$email = $_POST['add_email'];
$tel_resid = $_POST['add_tel_resid'];
$tel_movel = $_POST['add_tel_movel'];

$strcon = mysqli_connect('localhost', 'root', 'usbw', 'dbpw') or die('OPS! Ocorreu um erro interno. Tente novamente...');
?>