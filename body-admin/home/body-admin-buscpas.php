<?php
if($_SESSION['perm'][6][1] != 1 && $_SESSION['perm'][0][1] != 1){
    header("Location: index.php?sair=sim");  
}
if(isset($_POST['btnBuscar'])){
    $sql = mysqli_query('SELECT nm_pessoa, dt_nascimento,cd_cpf,cd_rg FROM tb_pessoa WHERE nm_pessoa = "'.$_POST['nmPasseador'].'",$conexao')
    or die ("<script language=javascript>alert('Erro');window.location.href='index.php';</script>");
    while ($row = mysqli_fetch_array($sql)){
    echo"<div class='row'>
    <div class='col-md-2'>
        <a href='index.php' class='btn btn-primary btn-lg btn-block'>Voltar</a>
    </div>
    <div class='col-md-8 text-center'>
        <h2>Buscar Passeador</h2>   
    </div>
    <div class='col-md-2'></div>
</div>
<div class='row justify-content-center'>
    <div class='col-lg-4 col-md-4'></div>
    <div class='col-lg-4 col-md-4'>
        <form class='form-group' name='buscpasseador' action='page-admin-funcoes.php?funcao=busccli' method='POST'>
            <div class='form-group'>
                <label>Nome do passeador:</label>
                <a>".$row['nm_pessoa']."</a>
                <label>Data de nascimento do passeador:</label>
                <a>".$row['dt_nascimento']."</a>
                <label>CPF do passeador:</label>
                <a>".$row['cd_cpf']."</a>
                <label>RG do passeador:</label>
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
    <h2>Buscar Passeador </h2>   
</div>
<div class="col-md-2"></div>
</div>
<div class="row justify-content-center">
<div class="col-lg-4 col-md-4"></div>
<div class="col-lg-4 col-md-4">
    <form class="form-group" name="buscusuario" action="page-admin-funcoes.php?funcao=buscpas" method="POST">
        <div class="form-group">
            <label>Nome do passeador:</label>
            <input name="nmPasseador" class="form-control" type="text" autocomplete="off" required/>
        </div>
        <div class="form-group">
            <button type="submit" name="btnBuscar" class="btn btn-danger btn-lg btn-block" >Buscar Passeador</button>
        </div>