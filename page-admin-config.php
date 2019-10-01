<?php
session_start();
include_once("config/conecta_banco.php");
if(isset($_POST['btnAlterar'])){
    unset($_POST['btnAlterar']);
    $_GET['page'] = "alterar-senha";
    if($_POST['novasenha1'] == $_POST['novasenha2']){
        $email = $_SESSION['email'];
        $senha = $_POST['senha'];
        $novasenha = $_POST['novasenha1'];
        $sql = "SELECT cd_login FROM tb_login WHERE cd_email = '$email' AND cd_senha = MD5('$senha');";
        $busca_login = $conexao->query($sql);
        if ($busca_login->num_rows > 0) {
            while($row_login = $busca_login->fetch_assoc()) {
                $cdLogin = $row_login['cd_login'];
                $sql = "UPDATE tb_login SET cd_senha= MD5('$novasenha') WHERE  cd_login = '$cdLogin';";
                mysqli_query($conexao,$sql) or die($_SESSION['erro'] = "Erro ao atualizar a senha!");
                $_SESSION['sucesso'] = "Senha atualizada com sucesso!";
            }
        }
        else{
            $_SESSION['erro'] = "Senha atual inválida!";
        }
    }else{
        $_SESSION['erro'] = "As senhas devem ser iguais!";
    }
}

if(isset($_POST['btnSolicitar'])){
    unset($_POST['btnSolicitar']);
    $_GET['page'] = "alteracao";
    $_SESSION['erro'] = "Função desabilitada para desenvolvimento!";
}

include_once("config/verifica_logado.php");
if($_SESSION['tpLogin'] != "adm"){
    header("Location: index.php");  
}
if(!isset($_GET['page'])){
    $_GET['page'] = "home";
}
?>
<!DOCTYPE html>
<html lang="PT-BR">

<?php
include_once("page-pattern/head-pattern.php");
?>

<body>



    <div id="wrapper">
        <!-- ENTRADA NO NAV PADRÃO  -->
        <?php
         include_once("page-pattern/nav-pattern.php");
        ?>
        <!-- SAIDA DO NAV PADÃO  -->
        <div id="page-wrapper" style="background-color: #F3F2F0;">
            <div id="page-inner" style="background-color: #F3F2F0; border-radius: 15px;">
                <?php           
                if($_GET['page'] == "alterar-senha"){
                    include_once("body-admin/config/body-admin-alterar_senha.php");                   
                }else if($_GET['page'] == "alteracao"){
                    include_once("body-admin/config/body-admin-alteracao.php");                   
                }else{
                    include_once("body-admin/config/body-admin-config.php");
                }
                ?>
            </div>
            <!-- /. PAGE INNER  -->
        </div>
        <!-- /. PAGE WRAPPER  -->
    </div>
    <?php
            include_once("page-pattern/footer-pattern.php");
        ?>


    <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <script>
    document.getElementById("page-blank").classList.add("active-link");
    </script>
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>


</body>

</html>