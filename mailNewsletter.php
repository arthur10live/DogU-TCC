<?php

ini_set('display_errors', 1);

error_reporting(E_ALL);

$from = $_POST['email'];

$to = "contato@system2002.com";

$subject = "Olá! Desejo assinar a Newsletter da DogU.". $from;

$message = "O correio do PHP funciona bem";

$headers = "De:". $from;

mail($to, $subject, $message, $headers);


?>
<script>
alert('Parabéns! Você acabar de assinar nossa Newsletter.')
</script>
<?php header("home.php"); ?>