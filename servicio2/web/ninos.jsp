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

<script>
    function hide(){
    document.getElementById('inscripcion').style.display = 'none';
    //alert('swag');
    }
    function show(){
    document.getElementById('inscripcion').style.display = 'block';
    //alert('swag');
    }
    function showIncripcion(){
        document.getElementById('inscripcion').style.display = 'none';
        document.getElementById('listaNinos').style.display = 'block';
    }
    function showBajasEmpresa(){
        document.getElementById('bajaEmpresa').style.display = 'block';
        document.getElementById('altaEmpresa').style.display = 'none';
    }
    function hideAll(){
        document.getElementById('altaEmpresa').style.display = 'none';
        document.getElementById('bajaEmpresa').style.display = 'none';
    }
</script>

<body onload="hideAll();">
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
          <a class="btn btn-primary btn-lg" href="#" onclick="showListaDeNinos();">Lista de Ninos »</a>
          <a class="btn btn-primary btn-lg" href="#" onclick="showInscripcion();">Inscripcion »</a>
          <a class="btn btn-primary btn-lg" href="#" onclick="showDarDeAlta();">Dar de Alta »</a>
          <a class="btn btn-primary btn-lg" href="#" onclick="showDarDeBaja();">Dar de Baja »</a>
          <a class="btn btn-primary btn-lg" href="#" onclick="showModificar();">Modificar »</a>
        </p>
      </div>
    </div>
        
              <!-- Lista de ninos
      ================================================== -->
        <div class="container">  
        
      <div class="bs-docs-section">

        <div class="row">
          <div class="col-lg-12" id="listaDeNinos">
            <div class="page-header">
                <h1 id="tables">Lista de Ni&ntildeos</h1>
            </div>

            <div class="bs-component">
              <table class="table table-striped table-hover ">
                <thead>
                  <tr>
                    <th>#id</th>
                    <th>Nombre</th>
                    <th>Fecha de Nacimiento</th>
                    <th>Sexo</th>
                    <th>Direccion</th>
                    <th>Telefono</th>
                    <th>Grado Escolar</th>
                    <th>Programa</th>
                    <th>Foto</th>
                    <th>Alergias</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>1</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    
                  </tr>
                  <tr>
                    <td>2</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                  </tr>
                  <tr class="info">
                    <td>3</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                  </tr>
                  <tr class="success">
                    <td>4</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                  </tr>
                  <tr class="danger">
                    <td>5</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                  </tr>
                  <tr class="warning">
                    <td>6</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                  </tr>
                  <tr class="active">
                    <td>7</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                  </tr>
                </tbody>
              </table> 
            </div>
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
                  &nbsp;
                  &nbsp;
                  &nbsp;  
                  &nbsp;
                  &nbsp;
                                   
                                   
              <a href="#" class="btn btn-info">Volver</a>
          </div>
        </div>
      </div>        
      </div>
      </div>
              
              
         

 
   




      <!-- Nuevo alumno
      ================================================== -->
       <div class="container">
      <div id="inscripcion">
      <div class="bs-docs-section">
        <div class="row">
          <div class="col-lg-12" id="inscripcion">
            <div class="page-header">
              <h1 id="forms">Nuevo Alumno</h1>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="col-lg-6">
            <div class="well bs-component">
              <form class="form-horizontal">
                        
                  <fieldset>
                    
                    <h3><legend>Inscripcion</legend></h3>
                  
                    <div class="form-horizontal">
                        
                        
                        
                        <h2></h2>Matricula:       
                  &nbsp;
                  &nbsp;
                  &nbsp;
                  &nbsp;
                  &nbsp;
                  &nbsp;
                    <input id="disabledInput" type="text" placeholder="Matricula" disabled="" required="required" name="id" />
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
        <a href="#" class="btn btn-info">Volver</a>
      </div>
                             
                      
                  </div>
                                
                  
                  </div>
                 
                </fieldset>
              </form>
            </div>
          </div>
          
            
            <!-- Dar de alta -->
                <div class="container">

            
      <div class="bs-docs-section">
        <div class="row">
          <div class="col-lg-12">
            <div class="page-header">
              <h1 id="forms">Dar de Alta</h1>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="col-lg-6">
            <div class="well bs-component">
              <form class="form-horizontal">
                <fieldset>
                    <legend>Dar de Alta a un Alumno</legend>
                        
                                    
                    <div class="form-horizontal">
     
              
                        
                 <h2></h2>Nombre(s):
                                &nbsp;
		<span>
			<input id="element_1_1" name= "element_1_1" class="element text" maxlength="255" size="8" value=""/>
                        &nbsp;
                        &nbsp;
                        <h2></h2>Apellidos:
                        &nbsp;
		</span>
                               
		<span>
			<input id="element_1_2" name= "element_1_2" class="element text" maxlength="255" size="14" value=""/>
		</span>
                    </div>
                    <br>
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
                    
                    <div class="form-horizontal">
                                      
                        
                        <h2></h2>Sexo:
                      <div class="checkbox">
                        <label>
                          <input type="checkbox"> Masculino
                        </label>                          
                      </div>                
                      <div class="checkbox">
                        <label>
                          <input type="checkbox"> Femenino
                        </label>                          
                      </div> 
                    </div>
                         
                         
                    <div class="form-horizontal">
                    
                        <h2></h2>Telefono:
                        &nbsp;
			<input id="telefono" name= "Telefono" class="element text" maxlength="8" size="10" value=""/>
                        
                    </div>
                         
                    <br>
                                          
                         

                    
                        <div class="form-horizontal">
                       <div class="form-group">
                         <label for="textArea" class="col-lg-2 control-label">Direccion:</label>
                            <div class="col-lg-10">
                       <textarea class="form-control" rows="3" id="textArea"></textarea>
                        </div>
                       </div>  
                        </div>   
                    
                    
                    
                        <div class="form-horizontal">
                       <div class="form-group">
                         <label for="textArea" class="col-lg-2 control-label">Alergias:</label>
                            <div class="col-lg-10">
                       <textarea class="form-control" rows="3" id="textArea"></textarea>
                        </div>
                       </div>  
                        </div>                    

                        
                    <div class="form-group">
                        
                         <label class="col-lg-2 control-label">Programa:</label>
                         
                    <div class="col-lg-10">
                     <select class="form-control" id="select">
                         
                         
                            <option>1ro Maternal</option>
                            <option>2do Maternal</option>
                            <option>3ro Maternal</option>   
                            
                            <option>1ro Preescolar</option>                            
                            
                            <option>1ro Primaria</option>
                            <option>2do Primaria</option>
                            <option>3ro Primaria</option>
                            <option>4to Primaria</option>
                            <option>5to Primaria</option>
                            <option>6to Primaria</option>
                            
                            <option>1ro Secundaria</option>
                            <option>2do Secundaria</option>
                            <option>3ro Secundaria</option>
                            
                                                         
                            
                          </select>
                          <br>
                    </div>
                    </div>
                    
                <div class="form-horizontal">

		<label class="description" for="element_2">Hola de Salida: </label>
		<span>
			<input id="element_2_1" name="element_2_1" class="element text " size="2" type="text" maxlength="2" value=""/> : 
			<label>HH</label>
		</span>
		<span>
			<input id="element_2_2" name="element_2_2" class="element text " size="2" type="text" maxlength="2" value=""/> : 
			<label>MM</label>
		</span>
		<span>
			<input id="element_2_3" name="element_2_3" class="element text " size="2" type="text" maxlength="2" value=""/>
			<label>SS</label>
		</span>
                 &nbsp;
		<span>
			<select class="element select" style="width:4em" id="element_2_4" name="element_2_4">
				<option value="AM" >AM</option>
				<option value="PM" >PM</option>
			</select>
			<label>AM/PM</label>
		</span> 
		                 
                    
                </div>
                    
                    <br>
                   
                    
                    <div class="form-horizontal">

		<label class="description" for="element_2">Hola de Salida: </label>
		<span>
			<input id="element_2_1" name="element_2_1" class="element text " size="2" type="text" maxlength="2" value=""/> : 
			<label>HH</label>
		</span>
		<span>
			<input id="element_2_2" name="element_2_2" class="element text " size="2" type="text" maxlength="2" value=""/> : 
			<label>MM</label>
		</span>
		<span>
			<input id="element_2_3" name="element_2_3" class="element text " size="2" type="text" maxlength="2" value=""/>
			<label>SS</label>
		</span>
                &nbsp;
		<span>
			<select class="element select" style="width:4em" id="element_2_4" name="element_2_4">
				<option value="AM" >AM</option>
				<option value="PM" >PM</option>
			</select>
			<label>AM/PM</label>
		</span> 
		                 
                    
                </div>
                     <br>
                 
                  
                                    <div class="form-horizontal">
                      
      <div class="col-lg-10 col-lg-offset-2">
        <button class="btn btn-default">Cancelar</button>
        <button type="guardar" class="btn btn-primary">Guardar</button>
        <a href="#" class="btn btn-info">Volver</a>
      </div>
                             
                      
                  </div>              
                    
                    
                    

          </div>
        </div>
      </div>     
    </div>
 </div>  
        
            
            
    <div class="container">




      <!-- Dar de baja
      ================================================== -->
      <div id="inscripcion">
      <div class="bs-docs-section">
        <div class="row">
          <div class="col-lg-12" id="inscripcion">
            <div class="page-header">
              <h1 id="forms">Dar de Baja</h1>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="col-lg-6">
            <div class="well bs-component">
              <form class="form-horizontal">
                        
                  <fieldset>
                    
                    <h3><legend>Dar de Baja a un Alumno</legend></h3>
                  
                    <div class="form-horizontal">
                        
                        
    <div class="form-group">
      <label for="select" class="col-lg-2 control-label">Alumno</label>
      <div class="col-lg-10">
        <select class="form-control" id="select">
          <option>Alumno1</option>
          <option>Alumno2</option>
          <option>Alumno3</option>
          <option>Alumno4</option>
          <option>Alumno5</option>
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
        <button class="btn btn-default">Cancelar</button>
        <button type="guardar" class="btn btn-primary">Guardar</button>
        <a href="#" class="btn btn-info">Volver</a>
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
                
      <!-- Termina
      ================================================== -->            
            
            <!-- Modificar
      ================================================== -->      
            
       <div class="container">
      <div id="inscripcion">
      <div class="bs-docs-section">
        <div class="row">
          <div class="col-lg-12" id="inscripcion">
            <div class="page-header">
              <h1 id="forms">Modificar a un Alumno</h1>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="col-lg-6">
            <div class="well bs-component">
              <form class="form-horizontal">
                        
                  <fieldset>
                    
                    <h3><legend>Modificar</legend></h3>
                  
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
                  
                  
                  &nbsp;
                  &nbsp;
                  &nbsp;
                  &nbsp;
                  &nbsp;
                  &nbsp;
                  
                  <div class="form-group">
                    <div class="col-lg-10 col-lg-offset-2">
                      <button class="btn btn-default">Cancelar</button>
                      <button type="submit" class="btn btn-primary">Guardar</button>
                
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
                  &nbsp;
                  &nbsp;
                  &nbsp;
                  &nbsp;
                  &nbsp;
                  &nbsp;
                  &nbsp;
                  &nbsp;
                  
                                    
                      <a href="#" class="btn btn-success">Continuar</a>
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
                  &nbsp; 
                  &nbsp;
                                   
                      <a href="#" class="btn btn-info">Volver</a>
                    </div>
                  </div>
                </fieldset>
              </form>
            </div>
          </div>
          
            
            <!-- Dar de alta -->
                <div class="container">

            
      <div class="bs-docs-section">
        <div class="row">
          <div class="col-lg-12">
            <div class="page-header">
              <h1 id="forms">Dar de Alta</h1>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="col-lg-6">
            <div class="well bs-component">
              <form class="form-horizontal">
                <fieldset>
                    <legend>Dar de Alta a un Alumno</legend>
                        
                                    
                    <div class="form-horizontal">
     
              
                        
                 <h2></h2>Nombre(s):
                                &nbsp;
		<span>
			<input id="element_1_1" name= "element_1_1" class="element text" maxlength="255" size="8" value=""/>
                        &nbsp;
                        &nbsp;
                        <h2></h2>Apellidos:
                        &nbsp;
		</span>
                               
		<span>
			<input id="element_1_2" name= "element_1_2" class="element text" maxlength="255" size="14" value=""/>
		</span>
                    </div>
                    <br>
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
                    
                    <div class="form-horizontal">
                                      
                        
                        <h2></h2>Sexo:
                      <div class="checkbox">
                        <label>
                          <input type="checkbox"> Masculino
                        </label>                          
                      </div>                
                      <div class="checkbox">
                        <label>
                          <input type="checkbox"> Femenino
                        </label>                          
                      </div> 
                    </div>
                         
                         
                    <div class="form-horizontal">
                    
                        <h2></h2>Telefono:
                        &nbsp;
			<input id="telefono" name= "Telefono" class="element text" maxlength="8" size="10" value=""/>
                        
                    </div>
                         
                    <br>
                                          
                         

                    
                        <div class="form-horizontal">
                       <div class="form-group">
                         <label for="textArea" class="col-lg-2 control-label">Direccion:</label>
                            <div class="col-lg-10">
                       <textarea class="form-control" rows="3" id="textArea"></textarea>
                        </div>
                       </div>  
                        </div>   
                    
                    
                    
                        <div class="form-horizontal">
                       <div class="form-group">
                         <label for="textArea" class="col-lg-2 control-label">Alergias:</label>
                            <div class="col-lg-10">
                       <textarea class="form-control" rows="3" id="textArea"></textarea>
                        </div>
                       </div>  
                        </div>                    

                        
                    <div class="form-group">
                        
                         <label class="col-lg-2 control-label">Programa:</label>
                         
                    <div class="col-lg-10">
                     <select class="form-control" id="select">
                         
                         
                            <option>1ro Maternal</option>
                            <option>2do Maternal</option>
                            <option>3ro Maternal</option>   
                            
                            <option>1ro Preescolar</option>                            
                            
                            <option>1ro Primaria</option>
                            <option>2do Primaria</option>
                            <option>3ro Primaria</option>
                            <option>4to Primaria</option>
                            <option>5to Primaria</option>
                            <option>6to Primaria</option>
                            
                            <option>1ro Secundaria</option>
                            <option>2do Secundaria</option>
                            <option>3ro Secundaria</option>
                            
                                                         
                            
                          </select>
                          <br>
                    </div>
                    </div>
                    
                <div class="form-horizontal">

		<label class="description" for="element_2">Hola de Salida: </label>
		<span>
			<input id="element_2_1" name="element_2_1" class="element text " size="2" type="text" maxlength="2" value=""/> : 
			<label>HH</label>
		</span>
		<span>
			<input id="element_2_2" name="element_2_2" class="element text " size="2" type="text" maxlength="2" value=""/> : 
			<label>MM</label>
		</span>
		<span>
			<input id="element_2_3" name="element_2_3" class="element text " size="2" type="text" maxlength="2" value=""/>
			<label>SS</label>
		</span>
                 &nbsp;
		<span>
			<select class="element select" style="width:4em" id="element_2_4" name="element_2_4">
				<option value="AM" >AM</option>
				<option value="PM" >PM</option>
			</select>
			<label>AM/PM</label>
		</span> 
		                 
                    
                </div>
                    
                    <br>
                   
                    
                    <div class="form-horizontal">

		<label class="description" for="element_2">Hola de Salida: </label>
		<span>
			<input id="element_2_1" name="element_2_1" class="element text " size="2" type="text" maxlength="2" value=""/> : 
			<label>HH</label>
		</span>
		<span>
			<input id="element_2_2" name="element_2_2" class="element text " size="2" type="text" maxlength="2" value=""/> : 
			<label>MM</label>
		</span>
		<span>
			<input id="element_2_3" name="element_2_3" class="element text " size="2" type="text" maxlength="2" value=""/>
			<label>SS</label>
		</span>
                &nbsp;
		<span>
			<select class="element select" style="width:4em" id="element_2_4" name="element_2_4">
				<option value="AM" >AM</option>
				<option value="PM" >PM</option>
			</select>
			<label>AM/PM</label>
		</span> 
		                 
                    
                </div>
                    
                  &nbsp;
                  &nbsp;
                  &nbsp;
                  &nbsp;
                  &nbsp;
                  &nbsp;
                  
                  <div class="form-group">
                    <div class="col-lg-10 col-lg-offset-2">
                      <button class="btn btn-default">Cancelar</button>
                      <button type="submit" class="btn btn-primary">Guardar</button>
                
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
                  &nbsp;
                  &nbsp;
                  &nbsp;
                  &nbsp;
                  &nbsp;
                  &nbsp;
                  &nbsp;
                  &nbsp;
                  
                                    
                      <a href="#" class="btn btn-success">Aceptar</a>
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
                  &nbsp;
                  &nbsp;
                  &nbsp;
                  &nbsp;
                  
                  
                  
                 
                  
                 
                                  
                          <a href="#" class="btn btn-info">Volver</a>
                      
                    </div>
                  </div>                    
                    
                    
                    

          </div>
        </div>
      </div>     
    </div>
 </div>  
        
            
            
    <div class="container">




      <!-- Dar de baja
      ================================================== -->
      <div id="inscripcion">
      <div class="bs-docs-section">
        <div class="row">
          <div class="col-lg-12" id="inscripcion">
            <div class="page-header">
              <h1 id="forms">Dar de Baja</h1>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="col-lg-6">
            <div class="well bs-component">
              <form class="form-horizontal">
                        
                  <fieldset>
                    
                    <h3><legend>Dar de Baja a un Alumno</legend></h3>
                  
                    <div class="form-horizontal">
                        
                        
    <div class="form-group">
      <label for="select" class="col-lg-2 control-label">Alumno</label>
      <div class="col-lg-10">
        <select class="form-control" id="select">
          <option>Alumno1</option>
          <option>Alumno2</option>
          <option>Alumno3</option>
          <option>Alumno4</option>
          <option>Alumno5</option>
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
                        
                  <div class="form-group">
                    <div class="col-lg-10 col-lg-offset-2">
                      <button class="btn btn-default">Cancelar</button>
                      <button type="submit" class="btn btn-primary">Dar de Baja</button>
                
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
                  &nbsp;
                  &nbsp;
                  &nbsp;
                  &nbsp;
                  &nbsp;
                  &nbsp;
                  &nbsp;
                  &nbsp;
                  
                                  
                  
                                    
                <a href="#" class="btn btn-info">Volver</a>         
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
                
      <!-- Termina
      ================================================== -->            
            
            
            
            
    </body>
</html>
