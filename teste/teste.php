<?php
    $_SESSION['perm'] = array();
    $sql = "SELECT pe.cd_permissao, ap.ic_permitir FROM administrador_permissao as ap, tb_permissao as pe WHERE ap.cd_permissao = pe.cd_permissao AND cd_administrador = 1;";
    $busca_permissao = $conexao->query($sql);
    if ($busca_permissao->num_rows > 0) {
        $contador = 0;
        while($rowbusca_permissao = $busca_permissao->fetch_assoc()) {
            $_SESSION['perm'][$contador] = (array($rowbusca_permissao['cd_permissao'],$rowbusca_permissao['ic_permitir']));
            $contador++;
        }
    }
?> 