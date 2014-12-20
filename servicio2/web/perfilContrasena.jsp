
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
                            <a href="perfil.jsp">${username}</a>
                        </li>
                        <li>
                            <a href="logout.jsp">Logout</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        
        <div class="container">  
            <div class="bs-docs-section">
                <div class="row">
                    <div class="col-lg-12" id="horario"  >
                        <div class="page-header">
                            <h1 id="tables">Perfil</h1>
                        </div>
                        <c:if test="${not empty res}">
                            <c:if test="${not empty error}">
                                <div class="alert alert-warning" role="alert">${res}</div>
                            </c:if>
                            <c:if test="${empty error}">
                                <div class="alert alert-success" role="alert">${res}</div>
                            </c:if>
                        </c:if>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="well bs-component">
                                    <form class="form-horizontal" method="post" action="CambioContrasena">
                                        <fieldset>
                                            <legend>
                                                Cambio de Contraseña
                                            </legend>
                                            <div class="form-horizontal">
                                                <div class="form-group">
                                                    <label for="input" class="col-lg-5 control-label">Contraseña anterior: </label>
                                                    <div class="col-lg-5">
                                                        <input class="form-control" type="password" name="password" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-horizontal">
                                                <div class="form-group">
                                                    <label for="input" class="col-lg-5 control-label">Contraseña nueva: </label>
                                                    <div class="col-lg-5">
                                                        <input class="form-control" type="password" name="password" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-horizontal">
                                                <div class="form-group">
                                                    <label for="input" class="col-lg-5 control-label">Escriba la contraseña nueva de nuevo: </label>
                                                    <div class="col-lg-5">
                                                        <input class="form-control" type="password" name="password" />
                                                    </div>
                                                </div>
                                            </div>
                                            <br>
                                            <div class="form-horizontal">
                                                <c:if test="${not empty res}">
                                                    <c:if test="${not empty error}">
                                                        <button class="btn btn-primary" type="submit" name="submit">Guardar</button>
                                                        <a href="perfil.jsp" class="btn btn-danger">Cancelar</a>
                                                    </c:if>
                                                    <c:if test="${empty error}">
                                                        <a href="perfil.jsp" class="btn btn-success">Continuar</a>
                                                    </c:if>
                                                </c:if>
                                                <c:if test="${empty res}">
                                                    <button class="btn btn-primary " type="submit" name="submit">Guardar</button>
                                                </c:if>
                                            </div>
                                        </fieldset>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    
    
</html>