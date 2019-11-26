<?php
if($_SESSION['perm'][3][1] != 1 && $_SESSION['perm'][0][1] != 1){
    header("Location: index.php?sair=sim");  
}
?>
<div class="row">
    <div class="col-md text-center">
        <h2>Buscar Cliente </h2>   
    </div>
    <div class="col-md-2"></div>
</div>
<div class="row justify-content-center">
    <div class="col-lg-4 col-md-4"></div>
    <div class="col-lg-4 col-md-4">
        <form class="form-group" name="buscusuario" action="page-admin-funcoes.php?funcao=busccli" method="POST">
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

            while ($row = mysqli_fetch_array($result)){
            $pessoa = $row['cd_pessoa'];
            echo"<div class='row'>
            <div class='col-md text-center'>
                <h2>Dados do Cliente </h2>   
            </div>
        </div>
        <div class='row justify-content-center'>
            <div class='col-lg'>
                <form class='form-group' name='buscusuario' action='page-admin-funcoes.php?funcao=busccli' method='POST'>
                    <div class='form-group'>
                        <label>Nome do cliente:</label>
                        <a>".$row['nm_pessoa']."</a>
                        <label>Data de nascimento do cliente:</label>
                        <a>".$row['dt_nascimento']."</a></br>
                        <label>CPF do cliente:</label>
                        <a>".$row['cd_cpf']."</a></br>
                        <label>RG do cliente:</label>
                        <a>".$row['cd_rg']."</a></br>"; 

                        $cliente = 'SELECT cd_cliente from tb_cliente WHERE cd_pessoa = "$pessoa"';
                            $result_cli = mysqli_query($conexao,$cliente)
                                or die ("<script language=javascript>alert('Erro 4');window.location.href='page-admin-funcoes.php?funcao=busccli';</script>");


                        $select_end = 'SELECT cd_pessoa, cd_endereco FROM pessoa_endereco WHERE cd_pessoa = "$pessoa"';
                            $result_end = mysqli_query($conexao,$select_end)
                                or die ("<script language=javascript>alert('Erro 2');window.location.href='page-admin-funcoes.php?funcao=busccli';</script>");
                        while ($row1 = mysqli_fetch_array($result_end)){
                            $idend = $row1['cd_endereco'];
                        }

                        $endereco = 'SELECT ds_endereco, cd_cep FROM tb_endereco WHERE cd_endereco = "$idend"';
                            $result_endereco = mysqli_query($conexao,$endereco)
                                or die ("<script language=javascript>alert('Erro 3');</script>");
                                while($row3 = mysqli_fetch_array($result_endereco)){
                                    echo"<label>Endereço do cliente:</label>
                                    <a>".$row3['ds_endereco']."</a>
                                    <label>CEP do cliente:</label>
                                    <a>".$row3['cd_cep']."</a>";
                                    };

                        
                        $pet = "SELECT cd_pet FROM cliente_pet WHERE cd_cliente = '$pessoa'";
                            $result_pet = mysqli_query($conexao,$pet)
                                or die ("<script language=javascript>alert('Erro 3');</script>");
                                while($row4 = mysqli_fetch_array($result_pet)){
                                    $idpet = $row4['cd_pet'];
                                }

                        $dados_pet = "SELECT nm_pet, dt_nascimento FROM tb_pet WHERE cd_pet = '$idpet'";
                            $result_dados = mysqli_query($conexao,$dados_pet)
                                or die ("<script language=javascript>alert('Erro 5');</script>");
                                while($row5 = mysqli_fetch_array($result_dados)){
                                    echo"<label>Nome do Pet: </label>";
                                    echo"<a>".$row5['nm_pet']."</a></br>";
                                    echo"<label>Data de nascimento do Pet:</label>";
                                    echo"<a>".$row5['dt_nascimento']."</a>";
                                }
                    }
    
            echo"</div>";  
    }
    ?>

