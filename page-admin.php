<!DOCTYPE html>
<html lang="PT-BR">

<head>
    <!-- STYLE.CSS DOGU -->
    <link rel="stylesheet" type="text/css" media="screen" href="css/style.css" />
    <style>
    body {
        background-color: #F6705D;
    }
    </style>
</head>
<?php
$_SESSION['perm'] = array();
$cdAdm = $_SESSION['cdAdm'];
$sql = "SELECT pe.cd_permissao, ap.ic_permitir FROM administrador_permissao as ap, tb_permissao as pe WHERE ap.cd_permissao = pe.cd_permissao AND cd_administrador = '$cdAdm';";
$busca_permissao = $conexao->query($sql);
if ($busca_permissao->num_rows > 0) {
    $contador = 0;
    while($rowbusca_permissao = $busca_permissao->fetch_assoc()) {
        $_SESSION['perm'][$contador] = (array($rowbusca_permissao['cd_permissao'],$rowbusca_permissao['ic_permitir']));
        $contador++;
    }
}
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
        <div id="page-wrapper" style="background-color: #F3F2F0;">
            <div id="page-inner">
                <div class="row">
                    <div class="col-lg-12" style="border-radius: 2em;">
                        <h2>Painel Administrador</h2>
                    </div>
                </div>
                <!-- /. ROW  -->
                <hr />
                <div class="row">
                    <div class="col-lg-12 ">
                        <div class="alert alert-info">
                            <?php
                             echo '<strong>Bem-vindo Administrador, '.$_SESSION['nmPes'].'! </strong> ';
                            ?>
                        </div>
                    </div>
                </div>
                <?php
$fun_buttons = array(
array("2", "page-admin-funcoes.php?funcao=addcli", "Adicionar Cliente", "fa-user-plus"),
array("3", "page-admin-funcoes.php?funcao=altcli", "Alterar Cliente", "fa-address-card"),
array("4", "page-admin-funcoes.php?funcao=busccli", "Buscar Cliente", "fa-users"),
array("5", "page-admin-funcoes.php?funcao=addpas", "Adicionar Passeador", "fa-plus-square"),
array("6", "page-admin-funcoes.php?funcao=altpas", "Alterar Passeador", "fa-refresh"),
array("7", "page-admin-funcoes.php?funcao=buscpas", "Buscar Passeador", "fa-search-plus"),
array("8", "page-admin-funcoes.php?funcao=addpet", "Adicionar PET", "fa-paw"),
array("9", "page-admin-funcoes.php?funcao=altpet", "Alterar PET", "fa-pencil-square-o"),
array("10", "page-admin-funcoes.php?funcao=buscpet", "Buscar PET", "fa-search"),
array("11", "page-admin-funcoes.php?funcao=addadm", "Adicionar Administrador", "fa-user-secret"),
array("12", "page-admin-funcoes.php?funcao=addperm", "Adicionar Permisão", "fa-key"),
array("13", "page-admin-funcoes.php?funcao=altperm", "Alterar Permisão", "fa-gavel"),
array("14", "page-admin-funcoes.php?funcao=gerperm", "Gerenciar Permisões", "fa-lock"),
array("15", "page-admin-funcoes.php?funcao=addtel", "Adicionar Telefone", "fa-phone"));

echo "<script>";
$numteste = count($_SESSION['perm']);
for ($contteste = 0; $contteste < $numteste; $contteste++){
    echo "console.log(".$_SESSION['perm'][$contteste][1].");";
}
echo "</script>";

if($_SESSION['perm'][0][1] == 1){
    $num = ceil(count($fun_buttons) / 6);
    $ca = 0;
    for ($i = 1; $i <= $num; $i++) {
        //echo "<script>alert('Teste! $i');</script>";
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
       // echo "<script>alert('Teste!');</script>";
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
    <script src="https://use.fontawesome.com/5cda576476.js"></script>
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>


</body>

</html>