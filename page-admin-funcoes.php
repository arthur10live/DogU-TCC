<?php
session_start();
include_once("config/conecta_banco.php");
if(isset($_POST['btnSolicitar'])){
    unset($_POST['btnSolicitar']);
    $_GET['page'] = "alteracao";
    $_SESSION['erro'] = "Função desabilitada para desenvolvimento!";
}

include_once("config/verifica_logado.php");
if($_SESSION['tpLogin'] != "adm"){
    header("Location: index.php?sair=sim");  
}
if(!isset($_GET['funcao'])){
    header("Location: index.php");      
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
        <div id="page-wrapper" >
            <div id="page-inner">
               <?php    
                if($_GET['funcao'] == "addadm"){
                    include_once("body-admin/home/body-admin-addadm.php");                   
                }else if($_GET['funcao'] == "addperm"){
                    include_once("body-admin/home/body-admin-addperm.php");       
                }else if($_GET['funcao'] == "addpet"){
                    include_once("body-admin/home/body-admin-addpet.php");                   
                }else if($_GET['funcao'] == "altperm"){
                    include_once("body-admin/home/body-admin-altperm.php");    
                }else if($_GET['funcao'] == "altpet"){
                    include_once("body-admin/home/body-admin-altpet.php");                   
                }else if($_GET['funcao'] == "buscpet"){
                    include_once("body-admin/home/body-admin-buscpet.php");       
                }else if($_GET['funcao'] == "gerperm"){
                    include_once("body-admin/home/body-admin-gerperm.php");                   
                }else if($_GET['funcao'] == "addcli"){
                    include_once("body-admin/home/body-admin-addcli.php");                   
                }else if($_GET['funcao'] == "altcli"){
                    include_once("body-admin/home/body-admin-altcli.php");                   
                }else if($_GET['funcao'] == "busccli"){
                    include_once("body-admin/home/body-admin-busccli.php");                   
                }else if($_GET['funcao'] == "addpas"){
                    include_once("body-admin/home/body-admin-addpas.php");                   
                }else if($_GET['funcao'] == "altpas"){
                    include_once("body-admin/home/body-admin-altpas.php");                   
                }else if($_GET['funcao'] == "buscpas"){
                    include_once("body-admin/home/body-admin-buscpas.php");                   
                }else if($_GET['funcao'] == "addtel"){
                    include_once("body-admin/home/body-admin-addtel.php");                   
                }else{
                    header("Location: index.php");  
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
        document.getElementById("painel-funcoes").classList.add("active-link");
    </script>
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
    
   
</body>
</html>