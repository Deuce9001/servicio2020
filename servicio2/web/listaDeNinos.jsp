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
    <title>
        Lista Ni&ntilde;os
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
    
       
              <!-- Lista de ninos
      ================================================== -->
    <div class="container">  
        <div class="bs-docs-section">
            <div class="row">
                <div class="col-lg-12" id="listaDeNinos" >
                    <div class="page-header">
                        <h1 id="tables">Lista de Ni&ntilde;os</h1>
                    </div>
                    <form class="form-inline" role="form" method="get" action="ListaNinos">
                        <div class="form-group">
                            <div class="input-group">
                                <div class="input-group-addon"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></div>
                                <input type="search" class="form-control" id="buscar" name="buscar" placeholder="Buscar ni&ntilde;os por nombre" value="${buscar}" />
                            </div>
                        </div>
                    </form>
                    <br/>   
                    <div class="bs-component">
                        <table id="table" class="table table-hover">
                            <tr>
                                <th>
                                    ID
                                </th>
                                <th>
                                    Nombre
                                </th>
                                <th>
                                    Fecha de Nacimiento
                                </th>
                                <th>
                                    Grado Escolar
                                </th>
                                <th>
                                    Sexo
                                </th>
                                <th>
                                    Direcci&oacute;n
                                </th>
                                <th>
                                    Tel&eacute;fono
                                </th>
                                <th>
                                    Programa
                                </th>
                                <th>
                                    Alergias
                                </th>
                            </tr>
                            <c:forEach items="${ninos}" var="nino">
                                <tr>
                                    <td>
                                        ${nino.id}
                                    </td>
                                    <td>
                                        ${nino.nombre}
                                    </td>
                                    <td>
                                        ${nino.fecha_nac}
                                    </td>
                                    <td>
                                        ${nino.grado_escolar}
                                    </td>
                                    <td>
                                        ${nino.sexo}
                                    </td>
                                    <td>
                                        ${nino.direccion}
                                    </td>
                                    <td>
                                        ${nino.tel}
                                    </td>
                                    <td>
                                        ${nino.programa}
                                    </td>
                                    <td>
                                        ${nino.alergias}
                                    </td>
                                </tr>
                            </c:forEach>
                        </table>
                    </div>
                    <a href="inicio.jsp" class="btn btn-info">Volver</a>
                </div>
            </div>
        </div>        
    </div>
</body>
</html>
