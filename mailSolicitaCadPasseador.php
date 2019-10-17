<?php
/*
ini_set('display_errors', 1);

error_reporting(E_ALL);

// $from = $_POST['email'];
$nome = $_POST['nome'];
$sobrenome = $_POST['sobrenome'];
$dataNasc = $_POST['dataNasc'];
//$email = $_POST['email'];
$genero = 1;
$cel = $_POST['cel'];
$tel = $_POST['tel'];
$email = $_POST['email'];
$motivo = $_POST['msg'];

$to = "contato@system2002.com";

$subject = "Solicitação de Passeador (Análise) | DogU";

// $message = array(
//     'Saudação' => "Olá! Possuo interesse em tornar-me Passeador da DogU. Poderia me cadastrar?",
//     'Nome' => $nome,
//     'Nasc' => $dataNasc,
//     'E-mail'=> $email,
//     'Gênero' => $genero,
//     'Celular' => $cel,
//     'Telefone' => $tel,
//     'Motivo' => $motivo
// );
$message = "teste";
$destino = $to;

 // É necessário indicar que o formato do e-mail é html
  $headers  = 'MIME-Version: 1.0' . "\r\n";
      $headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
      $headers .= 'From: $nome <$email>';
  //$headers .= "Bcc: $EmailPadrao\r\n";
   
  $enviaremail = mail("contato@system2002.com", $subject, $message);
  if($enviaremail){
  $mgm = "Sua solicitação foi enviada.";
  echo " <meta http-equiv='refresh' content='10;URL=home.php'>";
  } else {
  $mgm = "ERRO AO ENVIAR E-MAIL!";
  echo "";
  }
*/

// the message
$msg = "First line of text\nSecond line of text";
$headers =  'MIME-Version: 1.0' . "\r\n"; 
$headers .= 'From: Your name <info@address.com>' . "\r\n";
$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n"; 
// use wordwrap() if lines are longer than 70 characters
$msg = wordwrap($msg,70);
$to = "contato@system2002.com";
$subject = "teste";
// send email
mail($to,$subject,$msg, $headers);


?>
