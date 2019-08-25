﻿<!DOCTYPE html>
<html lang="PT-BR">
<?php
include_once("page-pattern/head-pattern.php");
include_once("config/conecta_banco.php");
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
                    <div class="col-lg-12">
                     <h2>ADMIN DASHBOARD</h2>   
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
                <div class="row">
                    <div class="col-lg-12 ">
                        <div class="alert alert-info">
                             <strong>Welcome Jhon Doe ! </strong> You Have No pending Task For Today.
                        </div>
                    </div>
                </div>
<?php
$_SESSION['perm'] = array();
$sql = "SELECT pe.cd_permissao, ap.ic_permitir FROM administrador_permissao as ap, tb_permissao as pe WHERE ap.cd_permissao = pe.cd_permissao AND cd_administrador = 1;";
$busca_permissao = $conexao->query($sql);
if ($busca_permissao->num_rows > 0) {
    $contador = 0;
    while($rowbusca_permissao = $busca_permissao->fetch_assoc()) {
        $_SESSION['perm'][$contador] = (array($rowbusca_permissao['cd_permissao'],$rowbusca_permissao['ic_permitir']));
        $contador++;
    }
}

$fun_buttons = array(
array("2", "blank.php", "ADICIONAR CLIENTE", "fa-comments-o"),
array("3", "blank.php", "ALTERAR CLIENTE", "fa-lightbulb-o"),
array("4", "blank.php", "BUSCAR CLIENTE", "fa-users"),
array("5", "blank.php", "ADICIONAR PASSEADOR", "fa-envelope-o"),
array("6", "blank.php", "ALTERAR PASSEADOR", "fa-circle-o-notch"),
array("7", "blank.php", "BUSCAR PASSEADOR", "fa-key"),
array("8", "blank.php", "BUSCAR PASSEADOR", "fa-key"),
array("9", "blank.php", "BUSCAR PASSEADOR", "fa-key"));
if($_SESSION['perm'][0][1] == 1){
    echo "<script>alert('A primeira foi!');</script>";
    $num = ceil(count($fun_buttons) / 6);
    $ca = 0;
    for ($i = 1; $i <= $num; $i++) {
        echo "<script>alert('Teste! $i');</script>";
        echo '<div class="row text-center pad-top">';
        $ca6 = $ca + 6;        
        while ($ca != $ca6){
            if($ca == count($fun_buttons)){
                $ca = $ca6;
            } else{
            echo '<div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">';
            echo '      <div class="div-square">';
            echo '          <a href="'.$fun_buttons[$ca][1].'" >';
            echo '              <i class="fa '.$fun_buttons[$ca][3].' fa-5x"></i>';
            echo '              <h4>'.$fun_buttons[$ca][2].'</h4>';
            echo '          </a>';
            echo '      </div>';
            echo '</div>';
            $ca++;
            }
        } 
        echo "</div>";
    }
}else{
    $buttons_adm = array();
    $cb = 0;
    for ($c = 0; $c < count($fun_buttons); $c++) {
        if($_SESSION['perm'][$c + 1][0] == $fun_buttons[$c][0]){
            if($_SESSION['perm'][$c + 1][1] == 1){
                $buttons_adm[$cb] = (array($fun_buttons[$c][1], $fun_buttons[$c][2], $fun_buttons[$c][3]));
                $cb++;
            }
        }
    }
    $num = ceil(count($buttons_adm) / 6);
    $ca = 0;
    for ($i = 1; $i <= $num; $i++) {
        echo "<script>alert('Teste! $i');</script>";
        echo '<div class="row text-center pad-top">';
        $ca6 = $ca + 6;        
        while ($ca != $ca6){
            if($ca == count($buttons_adm)){
                $ca = $ca6;
            } else{
            echo '<div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">';
            echo '      <div class="div-square">';
            echo '          <a href="'.$buttons_adm[$ca][0].'" >';
            echo '              <i class="fa '.$buttons_adm[$ca][2].' fa-5x"></i>';
            echo '              <h4>'.$buttons_adm[$ca][1].'</h4>';
            echo '          </a>';
            echo '      </div>';
            echo '</div>';
            $ca++;
            }
        } 
        echo "</div>";
    }
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
