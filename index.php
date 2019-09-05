<?php
session_start();
include_once("config/conecta_banco.php");    
if(isset($_POST['email'])){
    $email = $_POST['email'];
    $senha = $_POST['senha'];
    $sql = "SELECT cd_login FROM tb_login WHERE cd_email = '$email' AND cd_senha = MD5('$senha') LIMIT 1;";
    $resultado = $conexao->query($sql);
    while ($idLogin = $resultado->fetch(PDO::FETCH_ASSOC)) {
    $login = $idLogin['cd_login'];
    }
    if(isset($login)){
        $_SESSION['cdLogin'] = $login;
        if($_POST['tpLogin'] == "adm"){
            $sql = "SELECT a.cd_administrador, p.cd_pessoa, p.nm_pessoa FROM tb_administrador AS a, tb_pessoa AS p WHERE a.cd_pessoa = p.cd_pessoa AND cd_login = '$login';";
        }else if($_POST['tpLogin'] == "pas"){
            $sql = "SELECT pa.cd_passeador, p.cd_pessoa, p.nm_pessoa FROM tb_passeador AS pa, tb_pessoa AS p WHERE pa.cd_pessoa = p.cd_pessoa AND cd_login = '$login';";
        }else{
            $sql = "SELECT c.cd_cliente, p.cd_pessoa, p.nm_pessoa FROM tb_cliente AS c, tb_pessoa AS p WHERE c.cd_pessoa = p.cd_pessoa AND cd_login = '$login';";
        }
        $resultado_login = $conexao->query($sql);
        while ($resultado_final = $resultado_login->fetch(PDO::FETCH_ASSOC)) {
            if($_POST['tpLogin'] == "adm"){
                $_SESSION['logado'] = 1;
                setcookie('logado', "1", time()+600);
                setcookie('login', MD5($resultado_final['nm_pessoa']), time()+600);
                $_SESSION['cdAdm'] = $resultado_final['cd_administrador'];
                $_SESSION['cdPes'] = $resultado_final['cd_pessoa'];
                $_SESSION['nmPes'] = $resultado_final['nm_pessoa'];
                $_SESSION['tpLogin'] = $_POST['tpLogin'];
                $_SESSION['email'] = $_POST['email'];
            }else if($_POST['tpLogin'] == "pas"){
                $_SESSION['logado'] = 1;
                setcookie('logado', "1", time()+600);
                setcookie('login', MD5($resultado_final['nm_pessoa']), time()+600);
                $_SESSION['cdPas'] = $resultado_final['cd_passeador'];
                $_SESSION['cdPes'] = $resultado_final['cd_pessoa'];
                $_SESSION['nmPes'] = $resultado_final['nm_pessoa'];
                $_SESSION['tpLogin'] = $_POST['tpLogin'];
                $_SESSION['email'] = $_POST['email'];
            }else{
                $_SESSION['logado'] = 1;
                setcookie('logado', "1", time()+600);
                setcookie('login', MD5($resultado_final['nm_pessoa']), time()+600);
                $_SESSION['cdCli'] = $resultado_final['cd_Cliente'];
                $_SESSION['cdPes'] = $resultado_final['cd_pessoa'];
                $_SESSION['nmPes'] = $resultado_final['nm_pessoa'];
                $_SESSION['tpLogin'] = $_POST['tpLogin'];
                $_SESSION['email'] = $_POST['email'];
            }       
        }
        if($_SESSION['logado'] == 1){}
        else{
            erroLogin("Erro ao realizar o Login! Combinação de Login e Senha inválida! ");
        }
    }
    else{
        erroLogin("Erro ao realizar o Login! Combinação de Login e Senha inválida! ");
    }
}
if(isset($_GET['sair'])){
    session_destroy();
    header("Location: home.php");  
}
else if(isset($_SESSION['logado'])){
    if($_SESSION['tpLogin'] == "adm"){
        include_once("page-admin.php");
    }
}else{
    if(isset($_SESSION['errocad'])){
        header("Location: minhaConta.php");          
    }else{
        header("Location: index.php?sair=sim");  
    }
}

function erroLogin($msg){
    $_SESSION['errocad'] = $msg;
    header("Location: minhaConta.php");  
}
?>