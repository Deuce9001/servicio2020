<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
                <img src="images/2.png" width="400" alt="Logo Todos Ayudando Unidos" />
                <br>
                &nbsp;
                &nbsp;
                &nbsp;
                <img src="images/1.png" width="300" alt="Logo Todos Ayudando Unidos"/>
            </div>
        </center>          
        <div class="row">
            <div class="col-md-4">
            </div>
            <div class="col-md-4">
                <form method="post" action="Login">
                    
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon glyphicon-user">&nbsp;Usuario:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                        <input type="text" class="form-control" name="username">
                    </div>
                    <br>
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon">@ Contraseña:</span>
                        <input type="password" class="form-control" name="password">
                    </div>
                    <br>
                    
                    <button type="submit" class="btn btn-lg btn-primary pull-right btn-block">Entrar</button>
                    <div class="row"></div>
                </form>
                <c:if test="${not empty res}">
                    <c:if test="${not empty error}">
                        <div class="alert alert-warning" role="alert">${res}</div>
                    </c:if>
                    <c:if test="${empty error}">
                        <div class="alert alert-success" role="alert">${res}</div>
                    </c:if>
                </c:if>
            </div>
            <div class="col-md-4"></div>
        </div>
        <div class="btn-group"></div>
        <br>
        <br>
        
        <div class="container">
            <footer>© TODOS AYUDANDO UNIDOS A.C. 2014</footer>
        </div>
    </body>
</html>
