<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                        <a href="perfil.jsp" class="glyphicon-user">&nbsp;${username}</a>
                    </li>
                    <li>
                        <a href="logout.jsp">Logout</a>
                    </li>            
                </ul>
            </div>
        </div>
    </div>
    <div class="jumbotron">
        <div class="container">
            <h1>
              Ni&ntildeos
            </h1>
            <p>
                <a class="btn btn-primary btn-lg" href="listaDeNinos.jsp" >Lista de Ninos »</a>
                <a class="btn btn-primary btn-lg" href="darDeAlta.jsp" >Dar de Alta »</a>
                <a class="btn btn-primary btn-lg" href="darDeBaja.jsp" >Dar de Baja »</a>
                <a class="btn btn-primary btn-lg" href="modificar.jsp" >Modificar »</a>
                <a class="btn btn-primary btn-lg" href="horario.jsp" >Horario »</a>
                <a class="btn btn-primary btn-lg" href="historialClinico.jsp" >Historial Clinico »</a>
          </p>
        </div>
    </div>
                    
    <div class="container">
      <!-- Dar de baja
      ================================================== -->
      <div id="inscripcion">
        <div class="bs-docs-section">
            <div class="row">
                <div class="col-lg-12" id="darDeBaja" >
                    <div class="page-header">
                        <h1 id="forms">Dar de Baja</h1>
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
                                <form class="form-horizontal" method="post" action="BajaNino">
                                    <fieldset>
                                        <legend>Dar de Baja a un Alumno</legend>
                                        <div class="form-horizontal">
                                            <label>Matrícula: </label>
                                            <input type="text" size="10" maxlength="7" name="matricula" required="required"/>
                                        </div>
                                        <br>
                                        <div class="form-horizontal">
                                            <div class="col-lg-10 col-lg-offset-2">
                                                <c:if test="${not empty res}">
                                                    <c:if test="${not empty error}">
                                                        <button type="submit" class="btn btn-primary">Enviar</button>
                                                    </c:if>
                                                    <c:if test="${empty error}">
                                                        <a href="inicio.jsp" class="btn btn-success">Continuar</a>
                                                    </c:if>
                                                </c:if>
                                                    <c:if test="${empty res}">
                                                        <button type="submit" class="btn btn-primary">Enviar</button>
                                                        <a href="inicio.jsp" class="btn btn-danger">Cancelar</a>
                                                    </c:if>
                                            </div>
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
    </div>
</body>
</html>
