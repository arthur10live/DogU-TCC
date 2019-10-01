<?php
//Variáveis

$email = $_POST['email'];
$data_envio = date('d/m/Y');
$hora_envio = date('H:i:s');


  // emails para quem será enviado o formulário
  $emailenviar = "ariclv@hotmail.com";
  $destino = $emailenviar;
  $assunto = "Newsletter";
 
  // É necessário indicar que o formato do e-mail é html
  $headers  = 'MIME-Version: 1.0' . "\r\n";
      $headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
      $headers .= 'From: $nome <$email>';
  //$headers .= "Bcc: $EmailPadrao\r\n";
   
  $enviaremail = mail($destino, $assunto, $arquivo, $headers);
  if($enviaremail){
  $mgm = "E-MAIL ENVIADO COM SUCESSO! <br> O link será enviado para o e-mail fornecido no formulário";
  echo " <meta http-equiv='refresh' content='10;URL=contato.php'>";
  } else {
  $mgm = "ERRO AO ENVIAR E-MAIL!";
  echo "";
  }
?>
<!-- 
<html>
        <table width='510' border='1' cellpadding='1' cellspacing='1' bgcolor='#CCCCCC'>
            <tr>
              <td>
                <tr>
                  <td width='320'>E-mail:<b>$email</b></td>
     </tr>
                <tr>
                  <td width='320'>Oi, quero participar da newsletter DogU!</td>
                </tr>
            </td>
          </tr>  
          <tr>
            <td>Este e-mail foi enviado em <b>$data_envio</b> às <b>$hora_envio</b></td>
          </tr>
        </table>
    </html>

//enviar -->
