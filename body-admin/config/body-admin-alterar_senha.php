<div class="row">
    <div class="col-md-2">
        <a href="page-admin-config.php?page=home" class="btn btn-primary btn-lg btn-block">Voltar</a>
    </div>
    <div class="col-md-8 text-center">
        <h2>Alterar Senha </h2>   
    </div>
    <div class="col-md-2"></div>
</div>
<div class="row justify-content-center">
    <div class="col-lg-4 col-md-4"></div>
    <div class="col-lg-4 col-md-4">
        <form class="form-group" action="page-admin-config.php" method="POST">
            <div class="form-group">
                <label>Digite sua senha atual:</label>
                <input name="senha" class="form-control" type="password" required/>
            </div>
            <div class="form-group">
                <label>Digite a senha desejada:</label>
                <input name="novasenha1" class="form-control" type="password" autocomplete="off" required/>
            </div>
            <div class="form-group">
                <label>Repita a senha desejada:</label>
                <input name="novasenha2" class="form-control" type="password" autocomplete="off" required/>
            </div>
            <div class="form-group">
                <button type="submit" name="btnAlterar" class="btn btn-danger btn-lg btn-block" >ALTERAR SENHA</button>
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