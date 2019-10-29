<?php
if($_SESSION['perm'][3][1] != 1 && $_SESSION['perm'][0][1] != 1){
    header("Location: index.php?sair=sim");  
}

if(isset($_POST['btnBuscar'])){
        $sql = mysqli_query('SELECT nm_pessoa, dt_nascimento,cd_cpf,cd_rg FROM tb_pessoa WHERE nm_pessoa = "'.$_POST['nmPessoa'].'",$conexao')
        or die ("<script language=javascript>alert('Erro');window.location.href='index.php';</script>");
        while ($row = mysqli_fetch_array($sql)){
        echo"<div class='row'>
        <div class='col-md-2'>
            <a href='index.php' class='btn btn-primary btn-lg btn-block'>Voltar</a>
        </div>
        <div class='col-md-8 text-center'>
            <h2>Buscar Cliente </h2>   
        </div>
        <div class='col-md-2'></div>
    </div>
    <div class='row justify-content-center'>
        <div class='col-lg-4 col-md-4'></div>
        <div class='col-lg-4 col-md-4'>
            <form class='form-group' name='buscusuario' action='page-admin-funcoes.php?funcao=busccli' method='POST'>
                <div class='form-group'>
                    <label>Nome do cliente:</label>
                    <a>".$row['nm_pessoa']."</a>
                    <label>Data de nascimento do cliente:</label>
                    <a>".$row['dt_nascimento']."</a>
                    <label>CPF do cliente:</label>
                    <a>".$row['cd_cpf']."</a>
                    <label>RG do cliente:</label>
                    <a>".$row['cd_rg']."</a>
                </div>";  
    
        }
}

?>
<div class="row">
    <div class="col-md-2">
        <a href="index.php" class="btn btn-primary btn-lg btn-block">Voltar</a>
    </div>
    <div class="col-md-8 text-center">
        <h2>Buscar Cliente </h2>   
    </div>
    <div class="col-md-2"></div>
</div>
<div class="row justify-content-center">
    <div class="col-lg-4 col-md-4"></div>
    <div class="col-lg-4 col-md-4">
        <form class="form-group" name="buscusuario" action="page-admin-funcoes.php?funcao=busccli" method="POST">
            <div class="form-group">
                <label>Nome da pessoa:</label>
                <input name="nmPessoa" class="form-control" type="text" autocomplete="off" required/>
            </div>
            <div class="form-group">
                <button type="submit" name="btnBuscar" class="btn btn-danger btn-lg btn-block" >Buscar Cliente</button>
            </div>

