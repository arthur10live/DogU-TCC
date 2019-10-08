<!doctype html>
<html lang="pt-br">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Cadastro Passeador ◦ DogU</title>
    <link rel="icon" type="image/png" href="media/paws-dogu.ico">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet">    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- BOOTSTRAP.CSS -->
    <link rel="stylesheet" type="text/css" media="screen" href="css/bootstrap.css">

    <!-- STYLE.CSS DOGU -->
    <link rel="stylesheet" type="text/css" media="screen" href="css/style.css">

    <style>
    body {

        margin: 0;
        padding: 0;
        width: 100%;
        height: 100vh;
        background-image: linear-gradient(125deg, #F6705D, #FDDAAE);
        background-size: 400%;
        animation: bganimation 15s infinite;

    }

    @keyframes bganimation {
        0% {
            background-position: 0% 50%;
        }

        50% {
            background-position: 100% 50%;
        }

        100% {
            background-position: 0% 50%;

        }

    }
    </style>
</head>

<body>
    <header>
        <!-- BEGIN NAV -->

        <nav class="navbar navbar-expand-lg navbar-light" style="background-color:#F3F2F0;">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" onMouseOver="this.style.color='#594946'"
                            onMouseOut="this.style.color='#F6705D'" style="color: #F6705D;" href="home.php">Home</a>
                    </li>
                </ul>
                <form class="form-group form-inline my-4 my-lg-1">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="minhaConta.php" onMouseOver="this.style.color='#594946'"
                                onMouseOut="this.style.color='#01A58D'" style="color: #01A58D;">Minha conta</a>
                        </li>
                    </ul>
                </form>
            </div>
        </nav>
    </header>
    <!-- END NAV -->

    <!-- BEGIN BOX -->

    <div id="box-cadastro">
        <form action="mailSolicitaCadPasseador.php" name="cadastro" method="post">
            <div class="form-row">

                <div class="form-group col-md-12 text-center">
                    <h4 class="coral">Torne-se passeador!</h4>
                    <h6>Preencha os campos abaixo e retornaremos em breve.</h6>
                </div>

                <div class="form-group col-md-6">
                    <input class="form-control input-cadastro" placeholder="Nome" name="nome">
                    <input class="form-control input-cadastro" type="text" placeholder="Data Nascimento" name="dataNasc"
                        data-toggle="tooltip" data-placement="top" title="Data de Nascimento"
                        style="margin-bottom:15px;margin-top:2px;">
                </div>

                <div class="form-group col-md-6">
                    <input class="form-control input-cadastro" placeholder="Sobrenome" name="sobrenome"
                        data-toggle="tooltip" data-placement="top" title="Sobrenome">
                    <select class="custom-select my-1 mr-sm-2 input-cadastro" data-toggle="tooltip" data-placement="top"
                        title="Gênero">
                        <option>Feminino</option>
                        <option>Masculino</option>
                        <option>Outros</option>
                    </select>
                </div>
            </div>
            <div class="form-group">

                <input class="form-control input-cadastro" type="email" placeholder="E-mail" data-toggle="tooltip"
                    data-placement="top" title="E-mail" style="margin-bottom:5px;margin-top:5px;"
                    id="exampleInputEmail1">
                <input class="form-control input-cadastro" type="email" placeholder="Confirme seu e-mail"
                    name="name" id="exampleInputEmail1" data-toggle="tooltip" data-placement="top"
                    title="Confirme seu e-mail">
            </div>
            <div class="form-row">

                <div class="form-group col-md-6">
                    <input class="form-control input-cadastro" type="text" placeholder="Celular" name="cel"
                        data-toggle="tooltip" data-placement="top" title="Celular"
                        style="margin-bottom:5px;margin-top:5px;">
                </div>

                <div class="form-group col-md-6">
                    <input class="form-control input-cadastro" type="text" placeholder="Fixo ou Comercial"
                        name="tel" data-toggle="tooltip" data-placement="top" title="Residencial ou Comercial"
                        style="margin-bottom:5px;margin-top:5px;">
                </div>
            </div>
            <div class="form-group">
                <textarea class="form-control input-cadastro"
                    placeholder="Escreva uma breve mensagem, o porquê gostaria de tornar-se passeador."
                    name="msg" style="margin-bottom:15px;margin-top:2px;" id="exampleFormControlTextarea1"
                    rows="4" data-toggle="tooltip" data-placement="top"
                    title="Por que gostaria de tornar-se passeador?"></textarea>
            </div>
            <div class="form-group form-check">
                <input type="checkbox" class="form-check-input " id="exampleCheck1" data-toggle="tooltip"
                    data-placement="top" title="Concordo com os termos">
                <label class="form-check-label" for="exampleCheck1">Concordo com o <a
                        href="media/TERMO_DE_USO_E_CONDICOES_DOGU.pdf" target="framename">Termo de uso e condições.</a>
                </label>
            </div>
            <div class="form-group">
                <button type="submit" class="btn"
                    style="margin-top:15px; float: right;margin-bottom: 2px;background-color: #01A58D;color: #F3F2F0;"
                    onMouseOver="this.style.color='#04e0c0'" onMouseOut="this.style.color='#F3F2F0'">Enviar para
                    análise</button>
            </div>
        </form>
        <!-- END BOX -->









        <!-- JQUERY / POPPER / BOOTSTRAP.JS -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
        </script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
            integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous">
        </script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
            integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous">
        </script>
</body>

</html>