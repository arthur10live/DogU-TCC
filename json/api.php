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
    }else{
        $results = array('error' => 'Função não encontrada!');
    }
}

echo json_encode($results);

?>