<?php
$con_ip = "sql255.main-hosting.eu";
//$con_ip = "localhost";
$con_login = "u765863036_dogu";
//$con_login = "root";
$con_senha = "123123asd";
//$con_senha = "";
$con_db = "u765863036_dogu";
$conexao = mysqli_connect($con_ip, $con_login, $con_senha, $con_db);

if (mysqli_connect_errno())
{
    $results = array('error' => 'Erro ao se conectar com o banco de dados!');
}else {
    $obj = file_get_contents('php://input');// receber json
    $obj = json_decode($obj, true); // transformar json em objeto

    if($obj['action'] == "logar"){
        $email = mysqli_real_escape_string($conexao, $obj['email']);
        $senha = mysqli_real_escape_string($conexao, $obj['senha']);
        $sql = "SELECT cd_login, nm_pessoa, cd_passeador FROM tb_passeador AS pa, tb_pessoa AS pe WHERE cd_login = (SELECT cd_login FROM tb_login WHERE cd_email = '$email' AND cd_senha = MD5('$senha') LIMIT 1) AND pa.cd_pessoa = pe.cd_pessoa;";
        $resultado_usuario = mysqli_query($conexao, $sql);
        $resultado = mysqli_fetch_assoc($resultado_usuario);
        if(isset($resultado)){
            $results = array('logado' => 1, 'cdLogin' => $resultado['cd_login'], 'nmPessoa' => $resultado['nm_pessoa'], 'tpLogin' => 'PAS', 'cdPasseador' => $resultado['cd_passeador']);
        }else{	
          $sql = "SELECT cd_login, nm_pessoa, cd_cliente FROM tb_cliente AS cl, tb_pessoa AS pe WHERE cd_login = (SELECT cd_login FROM tb_login WHERE cd_email = '$email' AND cd_senha = MD5('$senha') LIMIT 1) AND cl.cd_pessoa = pe.cd_pessoa;";
          $resultado_usuario = mysqli_query($conexao, $sql);
          $resultado = mysqli_fetch_assoc($resultado_usuario);
          if(isset($resultado)){
            $results = array('logado' => 1, 'cdLogin' => $resultado['cd_login'], 'nmPessoa' => $resultado['nm_pessoa'], 'tpLogin' => 'CLI', 'cdCliente' => $resultado['cd_cliente']);
          }else{
            $results = array('error' => 'Credenciais Incorretas!');
          }
        }
    }else if($obj['action'] == "cadastrar"){
        if (verificarLogin($obj['email']) == false) {
          if (verificarRG($obj['rg']) == false){
            if (verificarRG($obj['cpf']) == false){
              $cpf = mysqli_real_escape_string($conexao, $obj['cpf']);
              $rg = mysqli_real_escape_string($conexao, $obj['rg']);
              $nome = mysqli_real_escape_string($conexao, $obj['nome']);
              $email = mysqli_real_escape_string($conexao, $obj['email']);
              $senha = mysqli_real_escape_string($conexao, $obj['senha']);
              $nascimento = mysqli_real_escape_string($conexao, $obj['nascimento']);
              $sql = "CALL criarUsuario( '$cpf','$rg','$nome','$email','$senha','$nascimento');";
              try{
                mysqli_query($conexao, $sql);
              } catch (Exception $e){}
              $sql = "SELECT cd_login FROM tb_login WHERE cd_email = '$email' AND cd_senha = MD5('$senha') LIMIT 1;";
              $resultado_usuario = mysqli_query($conexao, $sql);
              $resultado = mysqli_fetch_assoc($resultado_usuario);
              if(isset($resultado)){
                  $results = array('sucesso' => 1);
              }else{	
                  $results = array('sucesso' => 0, 'msg' => 'Erro ao cadastrar usuário!');
              }
            }else{
              $results = array('sucesso' => 0, 'msg' => 'CPF já cadastrado!');
            }
          }else{
            $results = array('sucesso' => 0, 'msg' => 'RG já cadastrado!');
          }
        }else{
          $results = array('sucesso' => 0, 'msg' => 'E-mail já cadastrado!');
        } 
      }else if($obj['action'] == "passear"){
        $cdPasseador = mysqli_real_escape_string($conexao, $obj['cdPasseador']);
        $cdStatus = mysqli_real_escape_string($conexao, $obj['cdStatus']);
        $latPasseador = mysqli_real_escape_string($conexao, $obj['latPasseador']);
        $lonPasseador = mysqli_real_escape_string($conexao, $obj['lonPasseador']);
        $sql = "SELECT cd_passeio, dt_passeio FROM tb_passeio WHERE cd_passeador = '$cdPasseador' AND cd_status = '$cdStatus';";
        $resultado_usuario = mysqli_query($conexao, $sql);
        $resultado = mysqli_fetch_assoc($resultado_usuario);
        if(isset($resultado)){
            $sql = "CALL atualizarPasseio('".$cdPasseador."');";
            mysqli_query($conexao, $sql); 
            $results = array('sucesso' => 'Dado Atualizado', 'data' => $sql);
        }else{	
          $sql = "call criarPasseio('$cdPasseador', '$cdStatus','$latPasseador','$lonPasseador');";
          mysqli_query($conexao, $sql);
          $results = array('sucesso' => 'Criado o novo passeio!');
        }
      }else if($obj['action'] == "parametros-client"){
        $cdCliente = mysqli_real_escape_string($conexao, $obj['cdCliente']);
        $sql = "SELECT pet.cd_pet, pet.nm_pet, ta.ds_tipo_animal, an.ds_animal FROM tb_cliente AS cli, cliente_pet AS cp, tb_pet AS pet, tb_tipo_animal AS ta, tb_porte AS po, tb_animal as an WHERE cli.cd_cliente = cp.cd_cliente AND cp.cd_pet = pet.cd_pet AND pet.cd_tipo_animal = ta.cd_tipo_animal AND ta.cd_porte = po.cd_porte AND po.cd_animal = an.cd_animal AND cli.cd_cliente = $cdCliente ;";
        $resultados_pets = mysqli_query($conexao, $sql);
        $resultado = mysqli_fetch_assoc($resultados_pets);
        if(isset($resultado)){
          $querry_pets = $conexao->query($sql);
          $cont = 1;
          while($row = $querry_pets->fetch_assoc()) {
            $results[$cont] = array('cdPet' => utf8_encode($row['cd_pet']), 'nmPet' => utf8_encode($row['nm_pet']), 'dsTipoAnimal' => utf8_encode($row['ds_tipo_animal']), 'dsAnimal' => utf8_encode($row['ds_animal']));
            $cont++;
          }
        }else{
          $results = array('erro' => 'Sem registros de PET!');
        }
      } else{
        $results = array('error' => 'Função não encontrada!');
    }
  }

echo json_encode($results);

function verificarLogin($val_email){
  $email = mysqli_real_escape_string($conexao, $val_email);
  $sql = "SELECT cd_login FROM tb_login WHERE cd_email = '$email' LIMIT 1;";
  $resultado_usuario = mysqli_query($conexao, $sql);
  $resultado = mysqli_fetch_assoc($resultado_usuario);
  if(isset($resultado)){
      return true;
  }else{	
      return false;
   }
   return true;
}
function verificarRG($val_rg){
  $rg = mysqli_real_escape_string($conexao, $val_rg);
  $sql = "SELECT cd_pessoa FROM tb_pessoa WHERE cd_rg = '$rg' LIMIT 1;";
  $resultado_usuario = mysqli_query($conexao, $sql);
  $resultado = mysqli_fetch_assoc($resultado_usuario);
  if(isset($resultado)){
      return true;
  }else{	
      return false;
   }
   return true;
}
function verificarCPF($val_cpf){
  $cpf = mysqli_real_escape_string($conexao, $val_cpf);
  $sql = "SELECT cd_pessoa FROM tb_pessoa WHERE cd_cpf = '$cpf' LIMIT 1;";
  $resultado_usuario = mysqli_query($conexao, $sql);
  $resultado = mysqli_fetch_assoc($resultado_usuario);
  if(isset($resultado)){
      return true;
  }else{	
      return false;
   }
   return true;
}
?>