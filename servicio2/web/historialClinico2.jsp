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
            Alta Ni&ntilde;os
        </title>
    </head>

    <body>
        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="inicio.jsp">Todos Ayudando Unidos A.C.</a>
            </div>
          
            <div class="navbar-collapse collapse" id="navbar-main">
                <ul class="nav navbar-nav">
                    <li class="dropdown">
                        <a href="inicio.jsp"></a>
                    </li>
                    <li>
                        <a href="ninos.jsp">Niños</a>
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
                <a class="btn btn-primary btn-lg" href="inscripcion.jsp" >Inscripcion »</a>
                <a class="btn btn-primary btn-lg" href="darDeAlta.jsp" >Dar de Alta »</a>
                <a class="btn btn-primary btn-lg" href="darDeBaja.jsp" >Dar de Baja »</a>
                <a class="btn btn-primary btn-lg" href="modificar.jsp" >Modificar »</a>
                <a class="btn btn-primary btn-lg" href="horario.jsp" >Horario »</a>
                <a class="btn btn-primary btn-lg" href="historialClinico.jsp" >Historial Clinico »</a>
            </p>
        </div>
    </div>
                
            <!-- historial clinico 3
      ================================================== -->      
            
    <div class="container">
        <div class="bs-docs-section">
            <div class="row">
                <div class="col-lg-12" id="historialClinico3" >
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
                                <form class="form-horizontal" method="post" action="AltaHistoriaClinica">
                                    <fieldset>
                                        <legend>Historial Clínico</legend>
                                        <div class="form-horizontal">
                                            <label>Matricula: </label>     
                                            &nbsp;
                                            &nbsp;&nbsp;
                                            ${sessionScope.matricula}
                                        </div> 
                                        <div class="form-horizontal">
                                            <label for="textArea" class="col-lg-2 control-label">Peso:</label>
                                            &nbsp;
                                            <input type="text" name="Peso" class="element text" maxlength="8" size="10" /> &nbsp;Kg
                                        </div>
                                        <br>
                                        <div class="form-horizontal">
                                            <label for="textArea" class="col-lg-2 control-label">Estatura:</label>
                                            &nbsp;
                                            <input type="text" name= "estatura" class="element text" maxlength="8" size="10" /> &nbsp;metros
                                        </div>
                                        <br>
                                        <div class="form-group">
                                            <label for="select" class="col-lg-2 control-label">Tipo Sanguíneo:</label>
                                            <div class="col-lg-10">
                                                <select class="form-control" id="select" name="tipo_sang">
                                                    <option value="A+">A+</option>
                                                    <option value="A-">A-</option>
                                                    <option value="B+">B+</option>   
                                                    <option value="B-">B-</option>                            
                                                    <option value="O+">O+</option>
                                                    <option value="O-">O-</option>
                                                </select>
                                            </div>
                                        </div>   
                                        <div class="form-group">
                                            <label for="textArea" class="col-lg-2 control-label">Enfermedades:</label>
                                            <br>
                                            <br>
                                            <div class="col-lg-10">
                                                <textarea class="form-control" rows="3" id="textArea" name="enfermedades"></textarea>
                                            </div>
                                        </div>   
                                        <div class="form-group">
                                            <label for="textArea" class="col-lg-2 control-label">Medicamentos:</label>
                                            <br>
                                            <br>
                                            <div class="col-lg-10">
                                                <textarea class="form-control" rows="3" id="textArea" name="medicamentos"></textarea>
                                            </div>
                                        </div>                
                                        <br>
                                        <div class="col-lg-10 col-lg-offset-2">
                                            <c:if test="${not empty res}">
                                                <c:if test="${not empty error}">
                                                    <button type="submit" class="btn btn-primary">Guardar</button>
                                                </c:if>
                                                <c:if test="${empty error}">
                                                    <div class="form-horizontal">
                                                        <label>¿Desea continuar con el registro de tutores?</label>
                                                        <br>
                                                        <a href="darDeAltaT.jsp" class="btn btn-success">Continuar</a>
                                                        <a href="inicio.jsp" class="btn btn-primary">Finalizar</a>
                                                    </div>
                                                </c:if>
                                            </c:if>
                                                <c:if test="${empty res}">
                                                    <button type="submit" class="btn btn-primary">Guardar</button>
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
