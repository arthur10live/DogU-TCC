<?php
session_start();
include_once("config/verifica_logado.php");
if($_SESSION['tpLogin'] != "adm"){
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
                <div class="row">
                    <div class="col-md-12">
                     <h2>BLANK PAGE </h2>   
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
              
                 <!-- /. ROW  -->           
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
