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
  <center>
    <div class="jumbotron">
      <img src="images/2.png" width="400"  >
      <br>
      &nbsp;
      &nbsp;
      &nbsp;
      
      <img src="images/1.png" width="300">
    </div>
  </center>          

    <div class="row">
      <div class="col-md-4">
      </div>
      <div class="col-md-4">
        <form method="post" action="./Login">
          <div class="form-group">
            <label>
              Usuario
            </label>
            <input type="text" class="form-control" placeholder="username" id="username" name="username">
          </div>
          <div class="form-group">
            <label>
              Contrase&ntildea
            </label>
            <input type="password" class="form-control" placeholder="contrase&ntilde;a" id="password" name="password">
          </div>
            <button type="submit" class="btn btn-lg btn-primary pull-right btn-block">Entrar</button>
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
      <hr>
      <p>
        © TODOS AYUDANDO UNIDOS A.C. 2014
      </p>
      <footer>
      </footer>
    </div>
  </body>

</html>
