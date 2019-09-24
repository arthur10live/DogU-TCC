<!doctype html>
<html lang="pt-br">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>DogU ◦ App </title>
    <link rel="icon" type="image/png" href="media/paws-dogu.ico">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- BOOTSTRAP.CSS -->
    <link rel="stylesheet" type="text/css" media="screen" href="css/bootstrap.css" />
    <!-- STYLE.CSS DOGU -->
    <link rel="stylesheet" type="text/css" media="screen" href="css/style.css" />
    <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!--ANIMATE.CSS-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
    <script src="js/myscripts.js">
    </script>
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
        <!-- SECTION PARA PETS -->
        <section class="div-parapets  " id="paraPets">
            <section class="container">
                <section class="row">

                    <section class="col-md-3 text-center ">
                        <div class="dog-circles hover01"><i class="fa fa-paw icons-circles" aria-hidden="true"></i>
                        </div>
                        <span class="desc-icon"><b>Todas as raças*</b></span>
                    </section>
                    <section class="col-md-3 text-center ">
                        <div class="dog-circles hover01"> <i class="fa fa-map-marker icons-circles"
                                aria-hidden="true"></i>
                        </div>
                        <span class="desc-icon"><b>Localização</b></span>
                    </section>
                    <section class="col-md-3 text-center ">
                        <div class="dog-circles hover01"> <i class="fa fa-heart-o icons-circles" aria-hidden="true"></i>
                        </div>
                        <span class="desc-icon"><b>Saúde</b></span>
                    </section>
                    <section class="col-md-3 text-center ">
                        <div class="dog-circles hover01"> <i class="fa fa-quote-left icons-circles"
                                aria-hidden="true"></i>
                        </div>
                        <span class="desc-icon"><b>Avaliações</b></span>
                    </section>

                </section>
            </section>
        </section>
        <!-- SECTION CONHEÇA A DOGU -->
        <section class="div-conhecaDogu" id="conhecaDogu">
            <section class="container">
                <section class="row">

                    <section class="col-md-8 chocolate" style="margin-top: 70px;">
                        <h3>Você sabia que os animais precisam passear e caminhar ao ar livre,
                            mesmo com uma casa ou um grande quintal?
                            Na rotina normal dos cães em seu habitat natural, eles mesmos procuram sua própria
                            água e comida. Na natureza, os cães caminham em média 8h a 12h por dia, seguindo o
                            seu líder.
                            Todos sabem que ficamos bastante ocupados com as nossas atividades diárias.
                            Seu pet não precisa sentir por sua falta de tempo, conheça a DogU!</h3>
                    </section>
                    <section class="col-md-4 text-center">
                        <img id="img-mobile" src="media/mobile1.png">
                    </section>
                </section>
            </section>
        </section>

        <!-- SECTION POR QUE A DOGU -->
        <section class="div-porqueDogu" id="porqueDogu">
            <section class="container">
                <section class="row">

                    <section class="col-md-5">
                        <!--   <video id="videoPitch" scr="media/pitch.mp4"></video> -->

                        <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <!-- CARD 1 -->
                                    <div class="card ">
                                        <img src="media/img-card1.jpg" class="card-img-top" alt="...">
                                        <div class="card-body">
                                            <p class="card-text chocolate">"Ótima iniciativa para região. Às
                                                vezes depois de um dia corrido, posso chamar alguém para passear com o
                                                Taz e acompanhar pelo cel, super tranquilo."
                                                <br>
                                            </p>
                                            <strong class="chocolate"><em>Ana - Santos/SP</em></strong>
                                        </div>
                                    </div>
                                </div>
                                <!-- END CARD 1 -->
                                <div class="carousel-item">
                                    <!-- CARD 2 -->
                                    <div class="card">
                                        <img src="media/img-card2.jpg" class="card-img-top" alt="...">
                                        <div class="card-body">
                                            <p class="card-text chocolate">"Tempo pra mim é difícil na
                                                semana, pois trabalho e estudo. Então quando estou em casa, enquanto
                                                estudo, posso chamar alguém pelo app facilmente."
                                            </p>
                                            <strong class="chocolate"><em>Roberta - Santos/SP</em></strong>
                                        </div>
                                    </div>
                                </div>
                                <!-- END CARD 2 -->
                                <div class="carousel-item">
                                    <!-- CARD 3 -->
                                    <div class="card">
                                        <img src="media/img-card3.jpg" class="card-img-top" alt="...">
                                        <div class="card-body">
                                            <p class="card-text chocolate">"A Mabel adora passear com outros cães, como
                                                não conheço muitas pessoas aqui na região, optei por baixar o aplicativo
                                                e experimentar. Já virou rotina!"
                                                <br>
                                            </p>
                                            <strong class="chocolate"><em>Pedro - Santos/SP</em></strong>
                                        </div>
                                    </div>
                                </div>
                                <!-- END CARD 3 -->
                            </div>
                        </div>
                    </section>
                    <section class="col-md-7 chocolate">
                        <h3 style="margin-top: 100px;">
                            Passear com seu cão além de gastar sua energia e acalmá-lo também pode trazer diversos
                            outros benefícios como ensinar seu cão a ter paciência e não sair correndo e puxando a
                            coleira, o ajuda também a socializar com outros cães e aprender a respeitar o espaço do
                            outro.
                        </h3>
                    </section>
                </section>
            </section>
        </section>
    </article>
    <!-- FOOTER -->
    <footer class="rodape-home">
        <section class="container">
            <section class="row">
                <section class="col-md-5">
                    <ul class="rodape-mapa">
                        <li>
                            <iframe
                                src="https://www.facebook.com/plugins/like.php?href=https%3A%2F%2Fwww.facebook.com%2Fappdogu%2F&width=152&layout=button_count&action=like&size=small&show_faces=true&share=true&height=46&appId"
                                width="152" height="46" style="border:none;overflow:hidden" scrolling="no"
                                frameborder="0" allowTransparency="true" allow="encrypted-media"></iframe>
                        </li>
                        <li><small>Ao cadastrar-se, você concorda com a nossa <a href="media/termo_de_uso_dogu.pdf"
                                    target="_blank" onMouseOver="this.style.color='#594946'"
                                    onMouseOut="this.style.color='#01A58D'" style="color: #01A58D;">Política de
                                    Privacidade e Termos de Uso.</a></small></li>
                        <br>
                        <li><small class="chocolate">*De acordo com a disponilibilidade de passeadores na
                                região.</small></li>
                    </ul>
                </section>
                <section class="col-md-3">
                </section>
                <section class="col-md-4">
                    <h4 class="chocolate">Newsletter</h4>
                    <form>
                        <div class="form-group">
                            <input class="form-control" type="email" data-toggle="tooltip" data-placement="top"
                                title="E-mail" id="exampleInputEmail1" placeholder="Digite seu e-mail"
                                style="margin-bottom: 0px;">
                            <small class="chocolate" style="margin-top:0px; margin-bottom: 10px;">
                                Digite seu e-mail e
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
        <button onclick="topFunction()" id="myBtn" title="Ir para o top">Top</button>
        <div class="text-center">
            <span class="chocolate text-center" style="bottom: 5px;"><small>DogU ® Copyright 2019</small><span>
        </div>
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
    <script type="text/javascript" scr="js/myscripts.js"></script>

</body>

</html>