<%-- 
    Document   : inicio
    Created on : Nov 8, 2014, 8:35:10 PM
    Author     : Alejandra
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="true" %>

<!DOCTYPE html>
<html>
    <head>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>                
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/bootstrap.css" media="screen">
        <link rel="stylesheet" href="css/bootswatch.min.css">
        <meta name="description" content="">
        <meta name="author" content="">
        <script type="text/javascript" src="js/view.js"></script>
        <script type="text/javascript" src="js/calendar.js"></script>
        <title>
            Login
        </title>
    </head>

<body >
    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="inicio.jsp">Todos Unidos Ayudando A.C.</a>
            </div>
            <div class="navbar-collapse collapse" id="navbar-main">
                <ul class="nav navbar-nav">
                    <li class="dropdown">
                        <a href="#"></a>
                    </li>
                    <li>
                        <a href="ninos.jsp">Ninos</a>
                    </li>
                    <li>
                        <a href="general.jsp">General</a>
                    </li>
                    <li>
                        <a href="tutores.jsp">Tutores</a>
                    </li>
                    <li>
                        <a href="personal.jsp">Personal</a>
                    </li>
                    <li>
                        <a href="almacen.jsp">Almacen</a>
                    </li>
                    <li>
                        <a href="eventos.jsp">Eventos</a>
                    </li>
                    <li>
                        <a href="grupos.jsp">Grupos</a>
                    </li>
                    <li>
                        <ul class="nav navbar-nav navbar-right">
                            <li id="fat-menu" class="dropdown">
                                <button id="dLabel" type="button" data-target="#" data-toggle="dropdown" aria-haspopup="true" role="button" aria-expanded="false">
                                    ${username}
                                    <span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu dropdown-menu-right" role="menu" aria-labelledby="dLabel">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="perfil.jsp">Perfil</a></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="perfiModificar">Modificar</a></li>
                                    <li role="presentation" class="divider"></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="logout.jsp">Logout</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    
    <center>
    <div>
        
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <h1>Bienvenid@ ${sessionScope.username}</h1>
        <br/>
        <br/>        
      <img src="images/2.png" width="400"  >
      <br>
      &nbsp;
      &nbsp;
      &nbsp;
      
      <img src="images/1.png" width="300">
    </div>
  </center>  
        
              
    </body>
    
    
    
</html>
