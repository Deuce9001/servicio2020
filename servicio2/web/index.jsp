<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.css" media="screen">
    <link rel="stylesheet" href="css/bootswatch.min.css">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>
        Login
    </title>

  
</head>
  
  <body>
    <!-- /.container -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"
    >
    </script>
    <script src="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"
    >
    </script>
    <div class="jumbotron">
      <img src="https://s3.amazonaws.com/media.jetstrap.com/6B6pVJ0wTerow0dAVEk4_logo.png"
      width="400">
      <img src="https://s3.amazonaws.com/media.jetstrap.com/gOhjW4DyS4OEkhATd7gh_Logo2.png"
      width="300">
    </div>
    <div class="row">
      <div class="col-md-4">
      </div>
      <div class="col-md-4">
        <form method="POST" action="./Login">
          <div class="form-group">
            <label>
              Usuario
            </label>
            <input type="text" class="form-control" placeholder="usuario" name="username">
          </div>
          <div class="form-group">
            <label>
              Contrase&ntildea
            </label>
            <input type="password" class="form-control" placeholder="contrase&ntilde;a" name="password">
          </div>
          <button type="submit" class="btn btn-lg btn-primary pull-right btn-block">
            Entrar
          </button>
          <div class="row">
          </div>
        </form>
          ${requestScope.res}
      </div>
      <div class="col-md-4">
      </div>
    </div>
    <div class="btn-group">
    </div>
    <div class="container">
      <!-- Example row of columns -->
      <hr>
      <p>
        © TODOS AYUDANDO UNIDOS A.C. 2014
      </p>
      <footer>
      </footer>
    </div>
  </body>

</html>
