<?php
if($_SESSION['perm'][6][1] != 1 && $_SESSION['perm'][0][1] != 1){
    header("Location: index.php?sair=sim");  
}
?>
<div class="row">

<div class="col-md text-center">
    <h2>Buscar Passeador </h2>   
</div>
<div class="col-md-2"></div>
</div>
<div class="row justify-content-center">
<div class="col-lg-4 col-md-4"></div>
<div class="col-lg-4 col-md-4">
    <form class="form-group" name="buscusuario" action="page-admin-funcoes.php?funcao=buscpas" method="POST">
        <div class="form-group">
        <label>CPF:</label>
                <input name="cpf" class="form-control" type="number" autocomplete="off" required/>
            </div>
            <div class="form-group">
                <button type="submit" name="btnBuscar" class="btn btn-danger btn-lg btn-block" >Buscar Cliente</button>
                <a href="index.php" class="btn btn-primary btn-lg btn-block">Voltar</a>
            </div>
            <?php
            if(isset($_POST['btnBuscar'])){
                $sql = 'SELECT cd_pessoa, nm_pessoa, dt_nascimento,cd_cpf,cd_rg FROM tb_pessoa WHERE cd_cpf = "'.$_POST['cpf'].'"';
                        $result = mysqli_query($conexao,$sql)
                        or die ("<script language=javascript>alert('Erro');window.location.href='page-admin-funcoes.php?funcao=busccli';</script>");
                
                        $select_end = 'SELECT cd_pessoa, cd_endereco FROM pessoa_endereco WHERE cd_pessoa = "$pessoa"';
                        $result_end = mysqli_query($conexao,$select_end)
                        or die ("<script language=javascript>alert('Erro 2');window.location.href='page-admin-funcoes.php?funcao=busccli';</script>");
                        while ($row1 = mysqli_fetch_array($result_end)){
                            $idend = $row1['cd_endereco'];
                        }
                        $endereco = 'SELECT ds_endereco, cd_cep FROM tb_endereco WHERE cd_endereco = "$idend"';
                        $result_endereco = mysqli_query($conexao,$endereco)
                        or die ("<script language=javascript>alert('Erro 3');</script>");
                
                        while ($row = mysqli_fetch_array($result)){
                        $pessoa = $row['cd_pessoa'];
                        echo"<div class='row'>
                        <div class='col-md text-center'>
                            <h2>Dados do Passeador </h2>   
                        </div>
                        <div class='col-md'></div>
                    </div>
                    <div class='row justify-content-center'>
                        <div class='col-lg'>
                            <form class='form-group' name='buscusuario' action='page-admin-funcoes.php?funcao=busccli' method='POST'>
                                <div class='form-group'>
                                    <label>Nome do passeador:</label>
                                    <a>".$row['nm_pessoa']."</a>
                                    <label>Data de nascimento do passeador:</label>
                                    <a>".$row['dt_nascimento']."</a></br>
                                    <label>CPF do passeador:</label>
                                    <a>".$row['cd_cpf']."</a></br>
                                    <label>RG do passeador:</label>
                                    <a>".$row['cd_rg']."</a>";  
                        }
                            while($row3 = mysqli_fetch_array($result_endereco)){
                            echo"<label>Endereço do passeador:</label>
                            <a>".$row3['ds_endereco']."</a>
                            <label>CEP do passeador:</label>
                            <a>".$row3['cd_cep']."</a>";
                            };
                
                        echo"</div>";  
                }
                
            ?>