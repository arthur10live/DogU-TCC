<?php
session_start();
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
include_once("config/conecta_banco.php");
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
                if($_GET['page'] == "alterar-senha"){
                    include_once("body-admin-alterar_senha.php");                   
                }else if($_GET['page'] == "alteracao"){
                    include_once("body-admin-alterar_senha.php");                   
                }else{
                    include_once("body-admin-config.php");
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
