<div class="row">
    <div class="col-md-2">
        <a href="page-admin-config.php?page=home" class="btn btn-primary btn-lg btn-block">Voltar</a>
    </div>
    <div class="col-md-8 text-center">
        <h2>Solicitar alterações</h2>   
    </div>
    <div class="col-md-2"></div>
</div>
<div class="row justify-content-center">
    <div class="col-lg-3 col-md-3"></div>
    <div class="col-lg-6 col-md-6">
        <form class="form-group" action="page-admin-config.php" method="POST">
            <div class="form-group">
                <label>Qual é o tipo da Alteração:</label>
                <select name="opcao" class="form-control" required/>
                    <option>Atualizar informações de Perfil</option>
                    <option>Atualizar Endereço</option>
                    <option>Adicionar Endereço</option>
                    <option>Deletar Endereço</option>
                    <option>Diversos</option>
                    <option>Outra Opção</option>
                <select>
            </div>
            <div class="form-group">
                <label>Digite a alteração desejada:</label>
                <textarea class="form-control" name="alteracoes" rows="8" maxlength="1000" style="resize: vertical" required></textarea>
            </div>
            <div class="form-group">
                <button type="submit" name="btnSolicitar" class="btn btn-danger btn-lg btn-block" >Enviar solicitação</button>
            </div>
        </form>
    </div>
    <div class="col-lg-3  col-md-3"></div>
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