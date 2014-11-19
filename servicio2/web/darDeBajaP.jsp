
<%-- 
    Document   : darDeBaja
    Created on : Nov 8, 2014, 8:35:10 PM
    Author     : Alejandra
--%>

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
          <a class="navbar-brand" href="#">Todos Ayudando Unidos A.C.</a>
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
          ${requestScope.res}Personal
        </h1>
        <p>
          <a class="btn btn-primary btn-lg" href="darDeAltaP.jsp" >Dar de Alta »</a>
          <a class="btn btn-primary btn-lg" href="darDeBajaP.jsp" >Dar de Baja »</a>
          <a class="btn btn-primary btn-lg" href="modificarP.jsp" >Modificar »</a>
          <a class="btn btn-primary btn-lg" href="consultarP.jsp" >Consultar »</a>
   
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
          
        <div class="row">
          <div class="col-lg-6">
            <div class="well bs-component">
              <form class="form-horizontal">
                        
                  <fieldset>
                    
                    <h3><legend>Dar de Baja a Personal</legend></h3>
                  
                    <div class="form-horizontal">
                        
                        
    <div class="form-group">
      <label for="select" class="col-lg-2 control-label">Alumno</label>
      <div class="col-lg-10">
        <select class="form-control" id="select">
          <option>Personal1</option>
          <option>Personal2</option>
          <option>Personal3</option>
          <option>Personal4</option>
          <option>Personal5</option>
        </select>
        <br>
      </div>
    </div>
                        
                        
    <div class="form-group">
      <label for="textArea" class="col-lg-2 control-label">Razon de baja</label>
      <div class="col-lg-10">
        <textarea class="form-control" rows="3" id="textArea"></textarea>
      </div>
    </div>                        
                        
                                    
                                    <div class="form-horizontal">
                      
      <div class="col-lg-10 col-lg-offset-2">
        <button type="guardar" class="btn btn-primary">Guardar</button>
        <a href="inicio.jsp" class="btn btn-info">Volver</a>
      </div>
                             
                      
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
                
      <!-- Termina
      ================================================== -->          
        
    </body>
</html>