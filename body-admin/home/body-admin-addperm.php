<?php
if($_SESSION['perm'][11][1] != 1 && $_SESSION['perm'][0][1] != 1){
    header("Location: index.php?sair=sim");  
}
function validaDados() {
    if(
        !isset($_POST['dsPermissao'])
    ){
        echo "<script>alert('Ops! Preencha todos os campos!');</script>";
        apagarDados();
        return false;
    }else{
        return true;
    }
}

function apagarDados() {
    unset($_POST['dsPermissao']);
    return;
}

if(isset($_POST['btnAdicionar'])){
    if(validaDados()){
        unset($_POST['btnAdicionar']);
        $sql = 'CALL criarPermissao("'.strtoupper($_POST['dsPermissao']).'");';
        mysqli_query($conexao,$sql) or die(header("Location: index.php"));
        $_SESSION['sucesso'] = "Cadatro realizado com sucesso!";
        apagarDados();        
    }
}

?>
<div class="row">
    <div class="col-md-2">
        <a href="index.php" class="btn btn-primary btn-lg btn-block">Voltar</a>
    </div>
    <div class="col-md-8 text-center">
        <h2>Adicionar Permissão </h2>   
    </div>
    <div class="col-md-2"></div>
</div>
<div class="row justify-content-center">
    <div class="col-lg-4 col-md-4"></div>
    <div class="col-lg-4 col-md-4">
        <form class="form-group" name="addusuario" action="page-admin-funcoes.php?funcao=addperm" method="POST">
            <div class="form-group">
                <label>Descrição da Permissão:</label>
                <textarea class="form-control" name="dsPermissao" rows="8" type="text" maxlength="1000" style="resize: vertical" autocomplete="off" required></textarea>
                <button type="submit" name="btnAdicionar" class="btn btn-danger btn-lg btn-block" style="margin-top: 10px">Adicionar Permissão</button>
            </div>
        </form>
    </div>
    <div class="col-lg-4 col-md-4"></div>
</div>
<div class="row justify-content-center">
    <div class="col-lg-4 col-md-4"></div>
    <div class="col-lg-4 col-md-4">
        <?php
        if(isset($_SESSION['erro'])){
        echo"<div class='alert alert-danger' role='alert'>
                ".$_SESSION['erro']."
            </div>";
        unset($_SESSION['erro']);
        }else if(isset($_SESSION['sucesso'])){
        echo"<div class='alert alert-info' role='alert'>
                ".$_SESSION['sucesso']."
            </div>";
        unset($_SESSION['sucesso']);
        }
        ?>
    </div>
    <div class="col-lg-4 col-md-4"></div>
</div>
