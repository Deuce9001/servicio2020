

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
          <a class="btn btn-primary btn-lg" href="darDeAlta.jsp" >Dar de Alta »</a>
          <a class="btn btn-primary btn-lg" href="darDeBaja.jsp" >Dar de Baja »</a>
          <a class="btn btn-primary btn-lg" href="modificar.jsp" >Modificar »</a>
          <a class="btn btn-primary btn-lg" href="horario.jsp" >Horario »</a>
          <a class="btn btn-primary btn-lg" href="historialClinico.jsp" >Historial Clinico »</a>

        </p>
      </div>
    </div>
        

   
          
            
            <!-- Dar de alta -->
                <div class="container">

            
      <div class="bs-docs-section">
        <div class="row">
            <div class="col-lg-12" id="darDeAlta" >
            <div class="page-header">
              <h1 id="forms">Modificar</h1>
            </div>
      

        <div class="row">
          <div class="col-lg-6">
            <div class="well bs-component">
              <form class="form-horizontal">
                <fieldset>
                    <legend>Modificar a un Alumno</legend>
                        
                                    
                    <div class="form-horizontal">
     
              
                        
                         <label class="col-lg-2 control-label">Nombre(s):</label>
                                &nbsp;
                                &nbsp;
                                
		<span>
                    <input id="element_1_1" name= "nombre" class="element text" maxlength="255" size="14" value=""/> 
                </span>
                                <br>
                                <br>
                        &nbsp;
                        &nbsp;
                         <label class="col-lg-2 control-label">Apellidos:</label>
		<span>
			<input id="element_1_2" name= "apellidos" class="element text" maxlength="255" size="14" value=""/>
		</span>
                    </div>
                    
                    <br>
                    <br>
            
                    

                    <label>Fecha de Nacimiento:</label>
                        &nbsp;
                        &nbsp;
		<span>
			<input id="element_3_1" name="mes" class="element text" size="2" maxlength="2" value="" type="text"> /
			<label for="element_3_1">MM</label>
		</span>
		<span>
			<input id="element_3_2" name="dia" class="element text" size="2" maxlength="2" value="" type="text"> /
			<label for="element_3_2">DD</label>
		</span>
		<span>
	 		<input id="element_3_3" name="ano" class="element text" size="4" maxlength="4" value="" type="text">
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
		 
                
                                        
                    <br>
                    <br>
                    <div class="form-group">
                        
                         <label class="col-lg-2 control-label">Sexo:</label>
                         
                    <div class="col-lg-10">
                     <select class="form-control" id="select" name="sexo">
                         
                         
                            <option value="femenino">Femenino</option>
                            <option value="masculino">Masculino</option>
                  
                            
                                                         
                            
                          </select>
                          <br>
                    </div>
                    </div>
                         
                         
                    <div class="form-horizontal">
                    
                         <label class="col-lg-2 control-label">Telefono:</label>
                        &nbsp;
			<input id="telefono" name= "telefono" class="element text" maxlength="8" size="10" />
                        
                    </div>
                         
                    <br>
                                          
                         

                    
                        <div class="form-horizontal">
                       <div class="form-group">
                         <label for="textArea" class="col-lg-2 control-label">Direccion:</label>
                            <div class="col-lg-10">
                                <textarea class="form-control" rows="3" id="textArea" name="direccion"></textarea>
                        </div>
                       </div>  
                        </div>   
                    
                                  

                        
                    <div class="form-group">
                        
                         <label class="col-lg-2 control-label">Escolaridad:</label>
                         
                    <div class="col-lg-10">
                        <select class="form-control" id="select" name="escolaridad">
                         
                         
                            <option value="1ro Maternal">1ro Maternal</option>
                            <option value="2do Maternal">2do Maternal</option>
                            <option value="3do Maternal">3ro Maternal</option>   
                            
                            <option value="1ro Preescolar">1ro Preescolar</option>                            
                            
                            <option value="1ro Primaria">1ro Primaria</option>
                            <option value="2ro Primaria">2do Primaria</option>
                            <option value="3ro Primaria">3ro Primaria</option>
                            <option value="4ro Primaria">4to Primaria</option>
                            <option value="5ro Primaria">5to Primaria</option>
                            <option value="6ro Primaria">6to Primaria</option>
                            
                            <option value="1ro Secundaria">1ro Secundaria</option>
                            <option value="2ro Secundaria">2do Secundaria</option>
                            <option value="3ro Secundaria">3ro Secundaria</option>
                            
                                                         
                            
                          </select>
                          <br>
                    </div>
                    </div>
                    
<div class="form-group">
                        
                         <label class="col-lg-2 control-label">Programa</label>
                         
                    <div class="col-lg-10">
                     <select class="form-control" id="select" name="programa">
                         
                         
                            <option value="Tiempo Completo">Tiempo Completo</option>
                            <option value="Regularizacion">Regularizacion</option>
                            
                                                         
                            
                          </select>
                          <br>
                    </div>
                    </div>                    
 
                     <br>
                 
                  
                                    <div class="form-horizontal">
                      
      <div class="col-lg-10 col-lg-offset-2">
        <button type="submit" class="btn btn-primary">Guardar</button>
        <a href="modificar3.jsp" class="btn btn-success">Continuar</a>
        
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