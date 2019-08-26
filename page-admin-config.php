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
include_once("config/conecta_banco.php");
include_once("page-pattern/head-pattern.php");
?>
<body>
     
           
          
    <div id="wrapper">
         <!-- ENTRADA NO NAV PADRÃO  -->
        <?php
         include_once("page-pattern/nav-pattern.php");
         $cdPes = $_SESSION['cdPes'];
         $sql1 = "SELECT pes.cd_cpf, pes.cd_rg, pes.dt_nascimento FROM tb_pessoa AS pes WHERE pes.cd_pessoa = '$cdPes'";
         $sql2 = "SELECT e.ds_endereco, e.cd_cep, e.ds_complemento, te.ds_tipo_endereco, b.ds_bairro, c.ds_cidade, u.sg_uf, u.ds_uf
         FROM pessoa_endereco AS pe, tb_endereco AS e, tb_tipo_endereco AS te, tb_bairro AS b, tb_cidade AS c, tb_uf AS u 
             WHERE pe.cd_endereco = e.cd_endereco
             AND pe.cd_tipo_endereco = te.cd_tipo_endereco 
             AND e.cd_bairro = b.cd_bairro 
             AND b.cd_cidade = c.cd_cidade
             AND c.sg_uf = u.sg_uf
             AND cd_pessoa = '$cdPes';";
        $querry_infos = mysqli_query($conexao, $sql1);
        $resultado_infos = mysqli_fetch_assoc($querry_infos);
        $querry_endereco = $conexao->query($sql2);
        $numend = $querry_endereco->num_rows;        
        ?>
         <!-- SAIDA DO NAV PADÃO  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-lg-8 col-md-8">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                Meu Perfil
                            </div>
                            <div class="panel-body">
                                <p>
                                    <?php
                                        echo "Nome: ".$_SESSION['nmPes'].'<br>';
                                        echo "CPF: ".substr($resultado_infos['cd_cpf'], 0, 3).".".substr($resultado_infos['cd_cpf'], 3, 3).".".substr($resultado_infos['cd_cpf'], 6, 3)."-".substr($resultado_infos['cd_cpf'], 9, 2).'<br>';
                                        echo "RG: ".substr($resultado_infos['cd_rg'], 0, 2).".".substr($resultado_infos['cd_rg'], 2, 3).".".substr($resultado_infos['cd_rg'], 5, 3)."-".substr($resultado_infos['cd_rg'], 8, 1).'<br>';
                                        $dtNascimento = explode("-",$resultado_infos['dt_nascimento']);
                                        echo "Data de Nascimento: ".$dtNascimento[2]."/".$dtNascimento[1]."/".$dtNascimento[0].'<br>E-mail: '.$_SESSION['email'].'<br>';
                                    ?>
                                </p>
                            </div>
                            <div class="panel-heading">
                                <?php
                                    echo "Endereços: ".$numend." ";
                                ?> 
                            </div>
                            <div class="panel-body">
                                <?php
                                    if ($querry_endereco->num_rows > 0) {
                                        while($row = $querry_endereco->fetch_assoc()) {
                                            echo "<h2>".utf8_encode($row['ds_tipo_endereco'])."</h2>";
                                            echo "<p>CEP: ".substr($row['cd_cep'], 0, 5)."-".substr($row['cd_cep'], 5, 3)."<br>Rua: ".utf8_encode($row['ds_endereco'])."<br>Complemento: ".utf8_encode($row['ds_complemento']);
                                            echo "<br>Bairro: ".utf8_encode($row['ds_bairro'])."<br>Cidade: ".utf8_encode($row['ds_cidade'])."<br>UF: (".$row['sg_uf'].") ".utf8_encode($row['ds_uf']);
                                        }
                                    }
                                ?>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4">
                        <div class="row text-center pad-top">
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                <div class="div-square">
                                    <a href="#">
                                        <i class="fa fa-key fa-6x"></i>
                                        <h4>teste</h4>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> 
                <div class="row text-center pad-top">
                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                        <div class="div-square">
                            <a href="#">
                                <i class="fa fa-key fa-5x"></i>
                                <h4>teste</h4>
                            </a>
                        </div>
                    </div>
                </div>             
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
