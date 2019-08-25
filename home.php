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
                        <a class="nav-link" onMouseOver="this.style.color='#594946'" onMouseOut="this.style.color='#F6705D'"
                            style="color: #F6705D;" href="#">Link 1</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" onMouseOver="this.style.color='#594946'" onMouseOut="this.style.color='#F6705D'"
                            style="color: #F6705D;" href="#">Link 2</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" onMouseOver="this.style.color='#594946'" onMouseOut="this.style.color='#F6705D'"
                            style="color: #F6705D;" href="#">Link 3</a>
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








    <!-- JQUERY / POPPER / BOOTSTRAP.JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>

</html>