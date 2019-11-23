<?php
if($_SESSION['perm'][7][1] != 1 && $_SESSION['perm'][0][1] != 1){
    header("Location: index.php?sair=sim");  
}

    if(isset($_POST['btnAdicionar'])){
            $sql = mysqli_query('INSERT INTO tb_pet (nm_pet, dt_nascimento)
             VALUES ("'.$_POST['nmPet'].'", "'.$_POST['dtNascimento'].'"), $conexao') or die 
             ("<script language=javascript>alert( 'Erro!' );window.location.href='index.php';</script>");
            mysqli_result($conexao,$sql);
            $_SESSION['sucesso'] = "Cadatro realizado com sucesso!";
            apagarDados();        
        }
    
    
?>
<div class="row">
    <div class="col-md-2">
        <a href="index.php" class="btn btn-primary btn-lg btn-block">Voltar</a>
    </div>
    <div class="col-md-8 text-center">
        <h2>Adicionar PET</h2>   
    </div>
    <div class="col-md-2"></div>
</div>
<div class="row justify-content-center">
    <div class="col-lg-4 col-md-4"></div>
    <div class="col-lg-4 col-md-4">
        <form class="form-group" name="addanimal" action="page-admin-funcoes.php?funcao=addpet" method="POST">
            <div class="form-group">
                <label>Nome do pet:</label>
                <input name="nmPet" class="form-control" type="text" autocomplete="off" required/>
            </div>
            <div class="form-group">
                <label>Data de Nascimento:</label>
                <input name="dtNascimento" class="form-control" type="date" autocomplete="off" required/>
            </div>
            <div class="form-group">
                <label>Raça:</label>
                <input name="raca" class="form-control" type="text" autocomplete="off" required/>
            </div>
            <div class="form-group">
                <label>Porte:</label>
                <input name="porte" class="form-control" type="text" autocomplete="off" required/>
            </div>
            <div class="form-group">
                <button type="submit" name="btnAdicionar" class="btn btn-danger btn-lg btn-block" >Adicionar Pet</button>
            </div>
            </div>
            </div>