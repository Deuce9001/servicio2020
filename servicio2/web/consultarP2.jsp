
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
        
        
                    
            <!-- Dar de alta -->
                <div class="container">

            
      <div class="bs-docs-section">
        <div class="row">
            <div class="col-lg-12" id="darDeAlta"  disabled="">
            <div class="page-header">
              <h1 id="forms">Consultar</h1>
            </div>
      

        <div class="row">
          <div class="col-lg-6">
            <div class="well bs-component">
              <form class="form-horizontal">
                <fieldset>
                    <legend>Consultar a Personal</legend>
                        
                                    
                    <div class="form-horizontal">
     
              
                        
                 <h2></h2>Nombre(s):
                                &nbsp;
		<span>
			<input id="disabledInput" disabled="" name= "element_1_1" class="element text" maxlength="255" size="8" value=""/>
                        &nbsp;
                        &nbsp;
                        <h2></h2>Apellidos:
                        &nbsp;
		</span>
                               
		<span>
			<input id="disabledInput" disabled="" name= "element_1_2" class="element text" maxlength="255" size="14" value=""/>
		</span>
                    </div>
                    <br>
                <div class="form-horizontal"
                         <h2>Fecha de Nacimiento:</h2>
		<span>
			<input id="disabledInput" disabled="" name="element_3_1" class="element text" size="2" maxlength="2" value="" type="text"> /
			<label for="element_3_1">MM</label>
		</span>
		<span>
			<input id="disabledInput" disabled="" name="element_3_2" class="element text" size="2" maxlength="2" value="" type="text"> /
			<label for="element_3_2">DD</label>
		</span>
		<span>
	 		<input id="disabledInput" disabled="" name="element_3_3" class="element text" size="4" maxlength="4" value="" type="text">
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
                    
                   
                    <br>
                     <div class="form-horizontal">
                                      
                        
                      <div class="checkbox">
                        <label>
                            <input type="checkbox" id="disabledInput" disabled=""> Curriculum
                        </label>                          
                      </div>                
                      
                    </div>
                    <br>
                         
                    <div class="form-horizontal">
                    
                        <h2></h2>Telefono(1):
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        
			<input id="disabledInput" disabled="" name= "tel1" class="element text" maxlength="8" size="30" value=""/>
                        
                    </div>
                         
                    <br>
                                          
                    <div class="form-horizontal">
                    
                        <h2></h2>Telefono(2):
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;			<input id="disabledInput" disabled="" name= "tel2" class="element text" maxlength="8" size="30" value=""/>
                        
                    </div>                         
                    <br>
                    <div class="form-horizontal">
                    
                        <h2></h2>Celular:
                        
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                                                
			<input id="disabledInput" disabled="" name= "calular" class="element text" maxlength="8" size="30" value=""/>
                        
                    </div>  
                    <br>
<div class="form-horizontal">
                    
                        <h2></h2>Posicion:
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        
			<input id="disabledInput" disabled="" name= "tel1" class="element text" maxlength="8" size="30" value=""/>
                        
                    </div>                   
                    <br>
         
                    <div class="form-group">
                        &nbsp;
                        &nbsp;
                         <label >Estado:</label>
                         <br>
                         
                    <div class="col-lg-10">
                     <select class="form-control" id="disabledInput" disabled="">
                         
	<option value="activo">Activo</option>
	<option value="inactivo">Inactivo</option>
	<option value="vetado">Vetado</option>
	
                     </select>
                       
                    </div>
                    </div>                    

                    <div class="form-group">
                        &nbsp;
                        &nbsp;
                         <label >Tipo:</label>
                         <br>
                    <div class="col-lg-10">
                     <select class="form-control" id="select" disabled="">
                         
	<option value="nomida">Nomina</option>
	<option value="voluntario">Voluntario</option>
	
                     </select>
                       
                    </div>
                    </div>    
                    
                                     
                    
                        
                    <div class="form-horizontal">
                       <div class="form-group">
                         <label for="textArea" class="col-lg-2 control-label">Actividades</label>
                         <br>
                         <br>
                            <div class="col-lg-10">
                       <textarea class="form-control" rows="3" id="disabledInput" disabled=""></textarea>
                        </div>
                       </div>  
                        </div>  
                    
                    <div class="form-horizontal">
                       <div class="form-group">
                         <label for="textArea" class="col-lg-2 control-label">Direccion:</label>
                         <br>
                         <br>
                            <div class="col-lg-10">
                       <textarea class="form-control" rows="3" id="disabledInput" disabled=""></textarea>
                        </div>
                       </div>  
                        </div>  
                    
                    
                    
                    <br>
                  
                                    <div class="form-horizontal">
                      
      <div class="col-lg-10 col-lg-offset-2">
        <button type="guardar" class="btn btn-primary">Guardar</button>
        <a href="inicio.jsp" class="btn btn-info">Volver</a>
      </div>
                             
                      
                  </div>              
                    
                    
                    

          </div>
        </div>
      </div>     
    </div>
 </div>          
