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
          ${requestScope.res}Tutores
        </h1>
        <p>
          <a class="btn btn-primary btn-lg" href="darDeAltaT.jsp" >Dar de Alta »</a>
          <a class="btn btn-primary btn-lg" href="darDeBajaT.jsp" >Dar de Baja »</a>
          <a class="btn btn-primary btn-lg" href="modificarT.jsp" >Modificar »</a>
          <a class="btn btn-primary btn-lg" href="consultarT.jsp" >Consultar »</a>
   
        </p>
      </div>
    </div>
        


            
            <!-- Dar de alta -->
                <div class="container">

            
      <div class="bs-docs-section">
        <div class="row">
            <div class="col-lg-12" id="modificarT2" >
            <div class="page-header">
              <h1 id="forms">Modificar</h1>
            </div>
      

        <div class="row">
          <div class="col-lg-6">
            <div class="well bs-component">
              <form class="form-horizontal">
                <fieldset>
                    <legend>Modificar a un Tutor</legend>
                        
                                    
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
                         <h2>Fecha de Nacimiento:</h2>
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
                    
                        <h2></h2>Telefono(1):
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        
			<input id="telefono" name= "tel1" class="element text" maxlength="8" size="30" value=""/>
                        
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
                        &nbsp;			<input id="telefono" name= "tel2" class="element text" maxlength="8" size="30" value=""/>
                        
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
                                                
			<input id="telefono" name= "calular" class="element text" maxlength="8" size="30" value=""/>
                        
                    </div>                    
                    <br>
                    <div class="form-horizontal">
                    
                        <h2></h2>Correo electronico:
                        &nbsp;
                        &nbsp;
			<input id="correo" name= "tel2" class="element text" maxlength="8" size="30" value=""/>
                        
                    </div>   
                    <br>
                    <div class="form-horizontal">
                    
                        <h2></h2>Parentesco:
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;                        
			<input id="parentesco" name= "tel2" class="element text" maxlength="8" size="30" value=""/>
                        
                    </div>      
                    <br>
                    <br>
         
                    <div class="form-group">
                        &nbsp;
                        &nbsp;
                         <label >Lugar de Nacimiento:</label>
                         <br>
                         
                    <div class="col-lg-10">
                     <select class="form-control" id="select">
                         
	<option value="Aguascalientes">Aguascalientes</option>
	<option value="Baja California">Baja California</option>
	<option value="Baja California Sur">Baja California Sur</option>
	<option value="Campeche">Campeche</option>
	<option value="Chiapas">Chiapas</option>
	<option value="Chihuahua">Chihuahua</option>
	<option value="Coahuila">Coahuila</option>
	<option value="Colima">Colima</option>
	<option value="Distrito Federal">Distrito Federal</option>
	<option value="Durango">Durango</option>
	<option value="Estado de México">Estado de México</option>
	<option value="Guanajuato">Guanajuato</option>
	<option value="Guerrero">Guerrero</option>
	<option value="Hidalgo">Hidalgo</option>
	<option value="Jalisco">Jalisco</option>
	<option value="Michoacán">Michoacán</option>
	<option value="Morelos">Morelos</option>
	<option value="Nayarit">Nayarit</option>
	<option value="Nuevo León">Nuevo León</option>
	<option value="Oaxaca">Oaxaca</option>
	<option value="Puebla">Puebla</option>
	<option value="Querétaro">Querétaro</option>
	<option value="Quintana Roo">Quintana Roo</option>
	<option value="San Luis Potosí">San Luis Potosí</option>
	<option value="Sinaloa">Sinaloa</option>
	<option value="Sonora">Sonora</option>
	<option value="Tabasco">Tabasco</option>
	<option value="Tamaulipas">Tamaulipas</option>
	<option value="Tlaxcala">Tlaxcala</option>
	<option value="Veracruz">Veracruz</option>
	<option value="Yucatán">Yucatán</option>
	<option value="Zacatecas">Zacatecas</option>
                     </select>
                       
                    </div>
                    </div>                    

                    <div class="form-group">
                        &nbsp;
                        &nbsp;
                         <label >Estado civil:</label>
                         <br>
                    <div class="col-lg-10">
                     <select class="form-control" id="select">
                         
	<option value="casado">Casado</option>
	<option value="divorciado">Divorciado</option>
	<option value="soltero">Soltero</option>
	
                     </select>
                       
                    </div>
                    </div>    
                    
                    <div class="form-group">
                        &nbsp;
                        &nbsp;
                         <label >Escolaridad:</label>
                         <br>
                    <div class="col-lg-10">
                     <select class="form-control" id="select">
                         
	<option value="primaria">Primaria</option>
	<option value="secundaria">Secundaria</option>
	<option value="universidad">Universidad</option>
	
                     </select>
                       
                    </div>
                    </div>                    
                    
                        <div class="form-horizontal">
                       <div class="form-group">
                         <label for="textArea" class="col-lg-2 control-label">Direccion:</label>
                         <br>
                         <br>
                            <div class="col-lg-10">
                       <textarea class="form-control" rows="3" id="textArea"></textarea>
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
        
        
</body>
</html>