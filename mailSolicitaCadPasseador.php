<?php


$nome = $_POST['nome'];
$sobrenome = $_POST['sobrenome'];
$dataNasc = $_POST['dataNasc'];
$genero = 1;
$cel = $_POST['cel'];
$tel = $_POST['tel'];
$email = $_POST['email'];
$motivo = $_POST['msg'];

$message = array(
    'Saudação' => "Olá! Possuo interesse em tornar-me Passeador da DogU. Poderia me cadastrar?",
    'Nome' => $nome,
    'Nasc' => $dataNasc,
    'E-mail'=> $email,
    'Gênero' => $genero,
    'Celular' => $cel,
    'Telefone' => $tel,
    'Motivo' => $motivo
);

json_encode($message);

$headers =  'MIME-Version: 1.0' . "\r\n"; 
$headers .= 'From: $nome <info@address.com>' . "\r\n";
$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n"; 
// use wordwrap() if lines are longer than 70 characters

$to = "contato@system2002.com";
$subject = "Solicitação de Passeador (Análise) | DogU";
// send email
mail($to,$subject,$message, $headers);


?>
