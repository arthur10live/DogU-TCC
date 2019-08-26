<!doctype html>
<html lang="pt-br">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>DogU ◦ App </title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- BOOTSTRAP.CSS -->
    <link rel="stylesheet" type="text/css" media="screen" href="css/bootstrap.css" />
    <!-- STYLE.CSS DOGU -->
    <link rel="stylesheet" type="text/css" media="screen" href="css/style.css" />
    <style>
    body {
        background-color: #F3F2F0;
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
                            onMouseOut="this.style.color='#F6705D'" style="color: #F6705D;" href="#paraPets">Para pets
                            saudáveis</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" onMouseOver="this.style.color='#594946'"
                            onMouseOut="this.style.color='#F6705D'" style="color: #F6705D;" href="#conhecaDogu">Conheça
                            a DogU</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" onMouseOver="this.style.color='#594946'"
                            onMouseOut="this.style.color='#F6705D'" style="color: #F6705D;" href="#porqueDogu">Por que a
                            DogU?</a>
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
        <!-- END NAV -->

        <!-- BEGIN BOX -->
        <section>
            <div id="box-download">
                <div class="container">
                    <div class="row">
                        <div class="col text-center">
                            <img id="logo-box" src="media/logo-box.png">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col text-center">
                            <img id="qrcode-box" src="media/qrcode-instagram.png">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col text-center">
                            <img class="download-image" src="media/download-android.png">
                            <img class="download-image" src="media/download-ios.png">
                        </div>
                    </div>
                </div>
            </div>
            <img id="dog-beach" src="media/dog-beach.gif">
        </section>
        <!-- END BOX -->
    </header>
    <article>
        <section class="div-parapets" id="paraPets"></section>
        <section class="div-conhecaDogu" id="conhecaDogu"></section>
        <section class="div-porqueDogu" id="porqueDogu"></section>
    </article>
    <!-- FOOTER -->
    <footer class="rodape-home">
        <section class="container">
            <section class="row">
                <section class="col-md-4">
                    <ul class="rodape-mapa">
                        <li>
                            <iframe
                                src="https://www.facebook.com/plugins/like.php?href=https%3A%2F%2Fwww.facebook.com%2Fappdogu%2F&width=152&layout=button_count&action=like&size=small&show_faces=true&share=true&height=46&appId"
                                width="152" height="46" style="border:none;overflow:hidden" scrolling="no"
                                frameborder="0" allowTransparency="true" allow="encrypted-media"></iframe>
                        </li>
                        <br>
                        <li><a href="#">Quem somos</a></li>
                    </ul>
                </section>
                <section class="col-md-4">
                </section>
                <section class="col-md-4">
                    <h4 class="chocolate">Newsletter</h4>
                    <form>
                        <div class="form-group">
                            <input class="form-control" type="email" data-toggle="tooltip" data-placement="top" title="E-mail"
                                id="exampleInputEmail1" placeholder="Digite seu e-mail" style="margin-bottom: 0px;">
                            <small class="chocolate" style="margin-top:0px; margin-bottom: 10px;"> Digite seu e-mail e
                                fique por dentro das novidades. É grátis!</small><br>
                            <button type="submit" name="entrar" class="btn"
                                style="margin-top:20px;padding-left: 40px; padding-right: 40px;background-color: #01A58D;color: #F3F2F0;"
                                onMouseOver="this.style.color='#04e0c0'" onMouseOut="this.style.color='#F3F2F0'">
                                Assinar
                            </button>

                        </div>
                    </form>
                </section>
            </section>
        </section>
    </footer>






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