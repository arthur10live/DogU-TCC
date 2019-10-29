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
        $sql = "SELECT cd_login FROM tb_login WHERE cd_email = '$email' AND cd_senha = MD5('$senha') LIMIT 1;";
        $resultado_usuario = mysqli_query($conexao, $sql);
        $resultado = mysqli_fetch_assoc($resultado_usuario);
        if(isset($resultado)){
            $results = array('logado' => 1, 'cdLogin' => $resultado['cd_login']);
        }else{	
            $results = array('error' => 'Credenciais Incorretas!');
        }
    }else if($obj['action'] == "cadastrar"){
        $cpf = mysqli_real_escape_string($conexao, $obj['cpf']);
        $rg = mysqli_real_escape_string($conexao, $obj['rg']);
        $nome = mysqli_real_escape_string($conexao, $obj['nome']);
        $email = mysqli_real_escape_string($conexao, $obj['email']);
        $senha = mysqli_real_escape_string($conexao, $obj['senha']);
        $nascimento = mysqli_real_escape_string($conexao, $obj['nascimento']);
        $sql = "CALL criarUsuario( '$cpf','$rg','$nome','$email','$senha','$nascimento');";
        try{  
          mysqli_query($conexao, $sql) or die ($_SESSION['error'] = 1);
        } catch (Exception $e){}
        if(isset($_SESSION['error'])){
          $results = array('sucesso' => 0, 'error' => 'Erro ao cadastrar usuário!');            
        } else {
          $results = array('sucesso' => 1);
        }            
        unset($_SESSION['error']);
    } else{
        $results = array('error' => 'Função não encontrada!');
    }
}

echo json_encode($results);

?>