<%-- 
    Document   : inicio
    Created on : Nov 8, 2014, 8:35:10 PM
    Author     : Alejandra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
                <a class="navbar-brand" href="#">Todos Unidos Ayudando A.C.</a>
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
                </ul>
            </div>
        </div>
    </div>
    <div class="jumbotron">
        <div class="container">
            <h1>
                Personal
            </h1>
            <p>
              <a class="btn btn-primary btn-lg" href="darDeAltaP.jsp" >Dar de Alta »</a>
              <a class="btn btn-primary btn-lg" href="darDeBajaP.jsp" >Dar de Baja »</a>
              <a class="btn btn-primary btn-lg" href="modificarP.jsp" >Modificar »</a>
              <a class="btn btn-primary btn-lg" href="consultarP.jsp" >Consultar »</a>
            </p>
        </div>
    </div>
            <!-- Dar de alta -->
    <div class="container">
        <div class="bs-docs-section">
            <div class="row">
                <div class="col-lg-12" id="darDeAlta">
                    <div class="page-header">
                        <h1 id="forms">Dar de Alta</h1>
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
                                <form class="form-horizontal" method="post" action="AltaPersonal">
                                    <fieldset>
                                        <legend>Dar de Alta Personal</legend>
                                        <div class="form-horizontal">
                                            <label class="col-lg-2 control-label">Nombre(s):</label>
                                            &nbsp;
                                            &nbsp;
                                            <span>
                                                <input id="element_1_1" name="nom" class="element text" maxlength="255" size="14"/>
                                            </span>
                                            <br>
                                            <br>
                                            &nbsp;
                                            &nbsp;
                                            <label class="col-lg-2 control-label">Apellidos:</label>
                                            <span>
                                                <input id="element_1_2" name="apellido" class="element text" maxlength="255" size="14"/>
                                            </span>
                                        </div>
                                        <br>
                                        <br>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label">Curriculum:</label>
                                            <div class="col-lg-10">
                                                <select class="form-control" id="select" name="curriculum">
                                                    <option>Seleccione..</option>
                                                    <option value="Entregado">Entregado</option>
                                                    <option value="No entregado">No Entregado</option>
                                                </select>
                                                <br>
                                            </div>
                                        </div>
                                        <div class="form-horizontal">
                                            <label class="col-lg-2 control-label">Tel&eacute;fono:</label>
                                            &nbsp;
                                            <input id="telefono" name= "tel" class="element text" maxlength="8" size="30" value=""/>
                                        </div>
                                        <br>
                                        <div class="form-horizontal">
                                            <label class="col-lg-2 control-label">Celular:</label>
                                            &nbsp;
                                            <input id="celular" name= "cel" class="element text" maxlength="8" size="30" value=""/>
                                        </div>
                                        <br>
                                        <div class="form-horizontal">
                                            <label class="col-lg-2 control-label">Posici&oacute;n:</label>
                                            &nbsp;
                                            <input id="posicion" name="posicion" class="element text" maxlength="8" size="30" value=""/>
                                        </div>                  
                                        <br><br>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label">Tipo:</label>
                                            <div class="col-lg-10">
                                                <select class="form-control" id="select" name="tipo">
                                                    <option value="nomina">Nomina</option>
                                                    <option value="voluntario">Voluntario</option>
                                                </select>
                                                <br>
                                            </div>
                                        </div>    
                                        <div class="form-horizontal">
                                            <div class="form-group">
                                                <label for="textArea" class="col-lg-2 control-label">Actividades:</label>
                                                <div class="col-lg-10">
                                                    <textarea class="form-control" rows="3" id="textArea" name="actividades"></textarea>
                                                </div>
                                            </div>  
                                        </div>  
                                            <div class="form-horizontal">
                                            <div class="form-group">
                                                <label for="textArea" class="col-lg-2 control-label">Dirección:</label>
                                                <div class="col-lg-10">
                                                    <textarea class="form-control" rows="3" id="textArea" name="direccion"></textarea>
                                                </div>
                                            </div>  
                                            </div>
                                        <br>
                                        <div class="form-horizontal">
                                            <div class="col-lg-10 col-lg-offset-2">
                                                <button type="submit" name="enviar" class="btn btn-primary">Guardar</button>
                                                <a href="inicio.jsp" class="btn btn-danger">Cancelar</a>
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
    </body>
</html>
