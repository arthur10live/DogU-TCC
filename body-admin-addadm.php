<?php
if($_SESSION['perm'][9][1] != 1){
    header("Location: index.php?sair=sim");  
}
?>
<div class="row">
    <div class="col-md-2">
        <a href="index.php" class="btn btn-primary btn-lg btn-block">Voltar</a>
    </div>
    <div class="col-md-8 text-center">
        <h2>Adicionar Administrador</h2>   
    </div>
    <div class="col-md-2"></div>
</div>