<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <title>Minha conta ◦ DogU</title>
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <!-- BOOTSTRAP.CSS -->
  <link rel="stylesheet" type="text/css" media="screen" href="css/bootstrap.css">
  <!-- STYLE.CSS DOGU -->
  <link rel="stylesheet" type="text/css" media="screen" href="css/style.css" />

  <style>
    body {
        background-color: #fddaae;
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
            <a class="nav-link" onMouseOver="this.style.color='#594946'" onMouseOut="this.style.color='#F6705D'" style="color: #F6705D;"
              href="home.php">Home</a>
          </li>
        </ul>
        <form class="form-group form-inline my-4 my-lg-1">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item">
              <a class="nav-link" href="minhaConta.php" onMouseOver="this.style.color='#594946'" onMouseOut="this.style.color='#01A58D'"
                style="color: #01A58D;">Minha conta</a>
            </li>
          </ul>
        </form>
      </div>
    </nav>
    <!-- END NAV -->

    <!-- BEGIN BOX -->
    <div id="box-minhaconta">
      <form class="form-group">
        <h4 class="coral">Minha conta</h4>
        <br />
        <input class="form-control" type="email" placeholder="E-mail" style="margin: 5px;" />
        <input class="form-control" type="password" placeholder="Senha" style="margin: 5px;margin-bottom: 1px;" />
        <small><a href="#" class="chocolate" style="margin-bottom: 5px;">Esqueceu a senha?</a></small><br />
        <select>
          <option>Passeador</option>
          <option>Administrador</option>
        </select>
        <button type="submit" class="btn" style="margin-top:20px; margin-left: 120px;margin-bottom: 20px; padding-left: 40px; padding-right: 40px;background-color: #01A58D;color: #F3F2F0;"
          onMouseOver="this.style.color='#04e0c0'" onMouseOut="this.style.color='#F3F2F0'">
          Entrar
        </button>
        <hr />
        <p class="coral" style="font-size: 14px;">
          Ainda não é passeador?
          <a href="cadastro.php" onMouseOver="this.style.color='#594946'" onMouseOut="this.style.color='#01A58D'"
            style="color: #01A58D;">Cadastre-se!</a>
        </p>
      </form>
    </div>
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