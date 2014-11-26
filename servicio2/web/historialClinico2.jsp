
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
          ${requestScope.res} Ni&ntildeos
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
          

        <div class="row">
          <div class="col-lg-6">
            <div class="well bs-component">
              <form class="form-horizontal">
                        
                  <fieldset>
                    
                    <h3><legend>Informacion</legend></h3>
           
                <label>Fecha de Inscripcion:</label>
		<span>
			<input id="disabledInput" name="element_3_1" class="element text" size="2" maxlength="2" value="" type="text" disabled=""> /
			<label for="element_3_1">MM</label>
		</span>
		<span>
			<input id="disabledInput" name="element_3_2" class="element text" size="2" maxlength="2" value="" type="text" disabled=""> /
			<label for="element_3_2">DD</label>
		</span>
		<span>
	 		<input id="disabledInput" name="element_3_3" class="element text" size="4" maxlength="4" value="" type="text"disabled="">
			<label for="element_3_3">YYYY</label>
		</span>
	
		<span id="disabledInput">
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
            
                         
                    <div class="form-horizontal">
                    
      <label for="textArea" class="col-lg-2 control-label">Peso:</label>
                        &nbsp;
			<input id="telefono" name= "Peso" class="element text" maxlength="8" size="10" value=""/>
                        
                    </div>     
                <br>
                <br>
                    <div class="form-horizontal">
                    
      <label for="textArea" class="col-lg-2 control-label">Estatura:</label>
                        &nbsp;
			<input id="telefono" name= "estatura" class="element text" maxlength="8" size="10" value=""/>
                        
                    </div>
                    <br>
                    <div class="form-group">
                        
                         <label class="col-lg-2 control-label">Programa:</label>
                         <br>
                         <br>
                    <div class="col-lg-10">
                     <select class="form-control" id="select">
                         
                            <option>A+</option>
                            <option>A-</option>
                            <option>B+</option>   
                            
                            <option>B-</option>                            
                            
                            <option>O+</option>
                            <option>O-</option>
                                          
                            
                          </select>
                          
                    </div>
                    </div>                     
                    
                         
                    
                                          
                         

                    
    <div class="form-group">
      <label for="textArea" class="col-lg-2 control-label">Enfermedades:</label>
      <br>
      <br>
      <div class="col-lg-10">
        <textarea class="form-control" rows="3" id="textArea"></textarea>
      </div>
    </div>   
                
    <div class="form-group">
      <label for="textArea" class="col-lg-2 control-label">Medicamentos:</label>
      <br>
      <br>
      <div class="col-lg-10">
        <textarea class="form-control" rows="3" id="textArea"></textarea>
      </div>
    </div>                
                    
    <div class="form-group">
      <label for="textArea" class="col-lg-2 control-label">Alergias</label>
      <br>
      <br>
      <div class="col-lg-10">
        <textarea class="form-control" rows="3" id="textArea"></textarea>
      </div>
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

         
      <div class="col-lg-10 col-lg-offset-2">
        <button type="guardar" class="btn btn-primary">Guardar</button>
        <a href="inicio.jsp" class="btn btn-info">Inicio</a>
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
