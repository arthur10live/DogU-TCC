<?php

ini_set('display_errors', 1);

error_reporting(E_ALL);

$from = $_POST['email'];

$to = "contato@system2002.com";

$subject = "Newsletter | DogU";

$message = "Olá! Desejo assinar a Newsletter da DogU. Poderia me cadastrar? <br> Email: ". $from;

$headers = "De:". $from;

mail($to, $subject, $message, $headers);
header("refresh:2;home.php"); 

?>
<script>
alert('Parabéns! Você acabar de assinar nossa Newsletter.')
</script>
