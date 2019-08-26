<div class="navbar navbar-inverse navbar-fixed-top">
<div class="adjust-nav">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#">
            <img src="assets/img/logo.png" />
        </a>
    </div>
    <span class="logout-spn" >
      <a href="index.php?sair=sim" style="color:#fff;">LOGOUT</a>  
    </span>
</div>
</div>
<nav class="navbar-default navbar-side" role="navigation">
<div class="sidebar-collapse">
    <ul class="nav" id="main-menu">
        <li id="painel-funcoes">
            <a href="index.php" ><i class="fa fa-desktop "></i>Painel de Funções</a>
        </li>
        <?php
        if($_SESSION['perm'][0][1] == 1){
        echo' <li id="dev">
                <a href="page-admin-dev.php"><i class="fa fa-table "></i>UI Elements  <span class="badge">Included</span></a>
            </li>';
        }
        ?>
        <li id="page-blank">
            <a href="page-admin-config.php"><i class="fa fa-edit "></i>Minhas Configurações</a>
        </li>                    
    </ul>
</div>
</nav>