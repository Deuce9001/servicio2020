<%-- 
    Document   : listaDeNinos
    Created on : Nov 11, 2014, 7:53:01 PM
    Author     : Alejandra
--%>

<%-- 
    Document   : inicio
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
          ${requestScope.res}Ni&ntildeos
        </h1>
        <p>
          <a class="btn btn-primary btn-lg" href="listaDeNinos.jsp" >Lista de Ninos »</a>
          <a class="btn btn-primary btn-lg" href="inscripcion.jsp" >Inscripcion »</a>
          <a class="btn btn-primary btn-lg" href="darDeAlta.jsp" >Dar de Alta »</a>
          <a class="btn btn-primary btn-lg" href="darDeBaja.jsp" >Dar de Baja »</a>
          <a class="btn btn-primary btn-lg" href="modificar.jsp" >Modificar »</a>
   
        </p>
      </div>
    </div>
        



      <!-- Nuevo alumno
      ================================================== -->
       <div class="container">
      <div class="bs-docs-section">
        <div class="col-lg-12" id="inscripcion" >          
        <div class="row">
          
            <div class="page-header">
              <h1 id="forms">Inscripcion</h1>
            </div>

        <div class="row">
          <div class="col-lg-6">
            <div class="well bs-component">
              <form class="form-horizontal">
                        
                  <fieldset>
                    
                    <h3><legend>Nuevo Alumno</legend></h3>
                  
                    <div class="form-horizontal">
                        
                        
                        
                        <h2></h2>Matricula:       
                  &nbsp;
                  &nbsp;
                  &nbsp;
                  &nbsp;
                  &nbsp;
                  &nbsp;
                    <input id="disabledInput" type="text" placeholder="Matricula" disabled="">
                  &nbsp;
                  &nbsp;
                  &nbsp;
                  &nbsp;
                  &nbsp;
                  &nbsp;
                    <a href="#" class="btn btn-primary btn-sm">Generar</a>
                    </div>

                  &nbsp;
                  &nbsp;
                  &nbsp;                    
                    
                    <div class="form-horizontal"
                         <h2>Fecha de Inscripcion:</h2>
		<span>
			<input id="element_3_1" name="element_3_1" class="element text" size="2" maxlength="2" value="" type="text"> /
			<label for="element_3_1">MM</label>
		</span>
		<span>
			<input id="element_3_2" name="element_3_2" class="element text" size="2" maxlength="2" value="" type="text"> /
			<label for="element_3_2">DD</label>
		</span>
		<span>
	 		<input id="element_3_3" name="element_3_3" class="element text" size="4" maxlength="4" value="" type="text">
			<label for="element_3_3">YYYY</label>
		</span>
	
		<span id="calendar_3">
			<img id="cal_img_3" class="datepicker" src="images/calendar.gif" alt="Pick a date.">	
		</span>
		<script type="text/javascript">
			Calendar.setup({
			inputField	 : "element_3_3",
			baseField    : "element_3",
			displayArea  : "calendar_3",
			button		 : "cal_img_3",
			ifFormat	 : "%B %e, %Y",
			onSelect	 : selectDate
			});
		</script>
		 
                    </div>
                  

                  &nbsp;
                  &nbsp;
                  &nbsp;
                  
                  <div class="form-horizontal">
                    <div>
                                             <h2>Requisitos</h2>

                      <div class="checkbox">
                        <label>
                          <input type="checkbox"> Acta de Nacimiento
                        </label>                          
                      </div>
                    
                      <div class="checkbox">
                        <label>
                          <input type="checkbox"> Cartilla de Vacunacion
                        </label>                          
                      </div>                 
                 
                      <div class="checkbox">
                        <label>
                          <input type="checkbox"> Aviso de Privacidad
                        </label>                          
                      </div>      
                        
                      <div class="checkbox">
                        <label>
                          <input type="checkbox"> CURP
                        </label>                          
                      </div>                        
                  
                      <div class="checkbox">
                        <label>
                          <input type="checkbox"> Reglamento
                        </label>                          
                      </div>
                        
                      <div class="checkbox">
                        <label>
                          <input type="checkbox"> Expediente Médico
                        </label>                          
                      </div>
                        
                      <div class="checkbox">
                        <label>
                          <input type="checkbox"> Boleta de Calificaciones
                        </label>                          
                      </div>                        
                        
                    </div>
                  </div>
                  
                  
                  &nbsp;
                  &nbsp;
                  &nbsp;
                  &nbsp;
                  &nbsp;
                  &nbsp;
                  
                  <div class="form-horizontal">
                      
      <div class="col-lg-10 col-lg-offset-2">
        <button class="btn btn-default">Cancelar</button>
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
        
        
    </body>
</html>