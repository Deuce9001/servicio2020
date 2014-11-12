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

<script type="text/javascript" language="JavaScript"><!--
function HideContent(d) {
document.getElementById(d).style.display = "none";
}
function ShowContent(d) {
document.getElementById(d).style.display = "block";
}
function ReverseDisplay(d) {
if(document.getElementById(d).style.display == "none") { document.getElementById(d).style.display = "block"; }
else { document.getElementById(d).style.display = "none"; }
}
//--></script>



<script type="text/javascript" language="JavaScript">

function HideAllShowOne(d) {
// Between the quotation marks, list the id values of each div.

var IDvaluesOfEachDiv = "llegada salida informacionGeneral informacionGeneral2 horario";

//-------------------------------------------------------------
IDvaluesOfEachDiv = IDvaluesOfEachDiv.replace(/[,\s"']/g," ");
IDvaluesOfEachDiv = IDvaluesOfEachDiv.replace(/^\s*/,"");
IDvaluesOfEachDiv = IDvaluesOfEachDiv.replace(/\s*$/,"");
IDvaluesOfEachDiv = IDvaluesOfEachDiv.replace(/  +/g," ");

var IDlist = IDvaluesOfEachDiv.split(" ");
for(var i=0; i<IDlist.length; i++) { HideContent(IDlist[i]); }
ShowContent(d);
}

</script>






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
          ${requestScope.res}General
        </h1>
        <p>
          <a class="btn btn-primary btn-lg" href="javascript:HideAllShowOne('llegada')" >Llegadas »</a>
          <a class="btn btn-primary btn-lg" href="javascript:HideAllShowOne('salida')" >Salidas »</a>
          <a class="btn btn-primary btn-lg" href="javascript:HideAllShowOne('informacionGeneral')" >Informacion General »</a>
          <a class="btn btn-primary btn-lg" href="javascript:HideAllShowOne('horario')" >Horario »</a>
          <a class="btn btn-primary btn-lg" href="javascript:HideAllShowOne('historialClinico')" >Historial Clinico »</a>
                    

        </p>
      </div>
    </div>
        
              <!-- Lista de llegadas
      ================================================== -->
            <div class="container">  
        
      <div class="bs-docs-section">

        <div class="row">
          
          <div class="col-lg-12" id="llegada" style="display: none;">
            <div class="page-header">
                <h1 id="tables">Lista de Llegadas</h1>
            </div>

            <div class="bs-component">
              <table class="table table-striped table-hover ">
                <thead>
                  <tr>
                    <th>#id</th>
                    <th>Nombre</th>
                    <th>Matricula</th>
                    <th>Hora</th>
                    <th>Asistencia<th>
                    
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>1</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>
                      <div class="checkbox">
                        <label>
                          <input type="checkbox" > 
                        </label>                          
                      </div>                        
                    </td>
                
                    
                  </tr>
                  <tr>
                    <td>2</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>
                      <div class="checkbox">
                        <label>
                          <input type="checkbox" > 
                        </label>                          
                      </div>  
                    </td>
               
                  </tr>
                  <tr class="info">
                    <td>3</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>
                      <div class="checkbox">
                        <label>
                          <input type="checkbox" > 
                        </label>                          
                      </div>   
                    </td>
                
                  </tr>
                  <tr class="success">
                    <td>4</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>
                      <div class="checkbox">
                        <label>
                          <input type="checkbox" > 
                        </label>                          
                      </div>  
                    </td>
               
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
                                
                                   
                                   
              <a href="inicio.jsp" class="btn btn-info">Volver</a>
          </div>
        </div>
      </div>        
      </div>
              
              
         

 
   



        
              <!-- Lista de salidas
      ================================================== -->
        <div class="container">  
        
      <div class="bs-docs-section">

        <div class="row">

          <div class="col-lg-12" id="salida" style="display: none;" >
            <div class="page-header">
                <h1 id="tables">Lista de Salidas</h1>
            </div>

            <div class="bs-component">
              <table class="table table-striped table-hover ">
                <thead>
                  <tr>
                    <th>#id</th>
                    <th>Nombre</th>
                    <th>Matricula</th>
                    <th>Hora</th>
                    
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>1</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                
                    
                  </tr>
                  <tr>
                    <td>2</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
               
                  </tr>
                  <tr class="info">
                    <td>3</td>
                    <td>Column content</td>
                    <td>Column content</td>
                    <td>Column content</td>
                
                  </tr>
                  <tr class="success">
                    <td>4</td>
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
                                
                                   
                                   
              <a href="inicio.jsp" class="btn btn-info">Volver</a>
          </div>
        </div>
      </div>        
      </div>
     
     
      
  
                      
              <!-- informacion general 1
      ================================================== -->
        <div class="container">  
            <div name="informacionGeneral">
      <div class="bs-docs-section">

        <div class="row">

            <div class="col-lg-12" id="informacionGeneral" style="display: none;" >
            <div class="page-header">
                <h1 id="tables">Informacion General</h1>
            </div>

            <div class="bs-component">
              <table class="table table-striped table-hover ">
                <thead>
                  <tr>
                    <th>#id</th>
                    <th>Nombre</th> 
                    <th>Matricula</th>
                    <th>Hora</th>
                    
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>1</td>
                    <td><a href="javascript:HideAllShowOne('informacionGeneral2')" >Column content</a></td>
                    <td>Column content</td>
                    <td>Column content</td>
            
                
                    
                  </tr>
                  <tr>
                    <td>2</td>
                    <td><a href="javascript:HideAllShowOne('informacionGeneral2')" >Column content</a></td>
                    <td>Column content</td>
                    <td>Column content</td>
               
                  </tr>
                  <tr class="info">
                    <td>3</td>
                    <td><a href="javascript:HideAllShowOne('informacionGeneral2')" >Column content</a></td>
                    <td>Column content</td>
                    <td>Column content</td>
                
                  </tr>
                  <tr class="success">
                    <td>4</td>
                    <td><a href="javascript:HideAllShowOne('informacionGeneral2')" >Column content</a></td>
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
                                
                                   
                                   
              <a href="inicio.jsp" class="btn btn-info">Volver</a>
          </div>
        </div>
      </div>        
      </div>
        </div>
            
            
    <div class="container">



    
                  
            <!-- info general enlace
      ================================================== -->      
            
       <div class="container">
 
      <div class="bs-docs-section">
        <div class="row">
            <div class="col-lg-12" id="informacionGeneral2" style="display: none;">
            <div class="page-header">
              <h1 id="forms">Informacion General</h1>
            </div>
          

        <div class="row">
          <div class="col-lg-6">
            <div class="well bs-component">
              <form class="form-horizontal">
                        
                  <fieldset>
                    
                    <h3><legend>Informacion</legend></h3>
                  
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
                    </div>

                  &nbsp;
                  &nbsp;
                  &nbsp;                    
                    
                                    
                  

                  &nbsp;
                  &nbsp;
                
                  
                  
                    <div>
                                             <h2>Requisitos</h2>

                      <div class="checkbox">
                        <label>
                            <input type="checkbox" disabled=""> Acta de Nacimiento
                        </label>                          
                      </div>
                    
                      <div class="checkbox">
                        <label>
                          <input type="checkbox" disabled=""> Cartilla de Vacunacion
                        </label>                          
                      </div>                 
                 
                      <div class="checkbox">
                        <label>
                          <input type="checkbox" disabled=""> Aviso de Privacidad
                        </label>                          
                      </div>      
                        
                      <div class="checkbox">
                        <label>
                          <input type="checkbox" disabled=""> CURP
                        </label>                          
                      </div>                        
                  
                      <div class="checkbox">
                        <label>
                          <input type="checkbox" disabled=""> Reglamento
                        </label>                          
                      </div>
                        
                      <div class="checkbox">
                        <label>
                          <input type="checkbox"disabled=""> Expediente Médico
                        </label>                          
                      </div>
                        
                      <div class="checkbox">
                        <label>
                          <input type="checkbox"disabled=""> Boleta de Calificaciones
                        </label>                          
                      </div>                        
                        
                    </div>
                  
                  
                  &nbsp;
                  &nbsp;
                  &nbsp;
                  &nbsp;
                  &nbsp;
                  &nbsp;
                  
                                         
                    <div class="form-horizontal">
     
              
                        
                 <h2></h2>Nombre(s):
                                &nbsp;
		<span>
			<input id="disabledInput" name= "element_1_1" class="element text" maxlength="255" size="8" value="" disabled=""/>
                        &nbsp;
                        &nbsp;
                        <h2></h2>Apellidos:
                        &nbsp;
		</span>
                               
		<span>
			<input id="disabledInput" name= "element_1_2" class="element text" maxlength="255" size="14" value=""disabled=""/>
		</span>
                    </div>
                    <br>
                <div class="form-horizontal"
                         <h2>Fecha de Inscripcion:</h2>
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
		 
                    </div>
                    
                    <div class="form-horizontal">
                                      
                        
                        <h2></h2>Sexo:
                      <div class="checkbox">
                        <label>
                          <input type="checkbox" diasbled=""> Masculino
                        </label>                          
                      </div>                
                      <div class="checkbox">
                        <label>
                          <input type="checkbox" disabled=""> Femenino
                        </label>                          
                      </div> 
                    </div>
                         
                         
                    <div class="form-horizontal">
                    
                        <h2></h2>Telefono:
                        &nbsp;
                        <input id="disabledInput" name= "Telefono" class="element text" maxlength="8" size="10" value="" disabled=""/>
                        
                    </div>
                         
                    <br>
                                          
                         

                    
                        <div class="form-horizontal">
                       <div class="form-group">
                         <label for="textArea" class="col-lg-2 control-label">Direccion:</label>
                            <div class="col-lg-10">
                       <textarea class="form-control" rows="3" id="disabledInput" disabled=""></textarea>
                        </div>
                       </div>  
                        </div>   
                    
                    
                    
                        <div class="form-horizontal">
                       <div class="form-group">
                         <label for="textArea" class="col-lg-2 control-label">Alergias:</label>
                            <div class="col-lg-10">
                       <textarea class="form-control" rows="3" id="disabledInput" disabled=""></textarea>
                        </div>
                       </div>  
                        </div>                    

                        
                    <div class="form-group">
                        
                         <label class="col-lg-2 control-label">Programa:</label>
                         
                    <div class="col-lg-10">
                        <select class="form-control" id="disabledInput" disabled="">
                         
                         
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
                    <input id="disabledInput" name="element_2_1" class="element text " size="2" type="text" maxlength="2" value="" disabled=""/> : 
			<label>HH</label>
		</span>
		<span>
			<input id="disabledInput" name="element_2_2" class="element text " size="2" type="text" maxlength="2" value="" disabled=""/> : 
			<label>MM</label>
		</span>
		<span>
                    <input id="disabledInput" name="element_2_3" class="element text " size="2" type="text" maxlength="2" value="" disabled=""/>
			<label>SS</label>
		</span>
                 &nbsp;
		<span>
                    <select class="element select" style="width:4em" id="disabledInput" name="element_2_4" disabled="">
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
                    <input id="disabledInput" name="element_2_1" class="element text " size="2" type="text" maxlength="2" value="" disabled=""/> : 
			<label>HH</label>
		</span>
		<span>
                    <input id="disabledInput" name="element_2_2" class="element text " size="2" type="text" maxlength="2" value="" disabled=""/> : 
			<label>MM</label>
		</span>
		<span>
                    <input id="disabledInput" name="element_2_3" class="element text " size="2" type="text" maxlength="2" value="" disabled=""/>
			<label>SS</label>
		</span>
                &nbsp;
		<span>
                    <select class="element select" style="width:4em" id="disabledInput" name="element_2_4" disabled="">
				<option value="AM" >AM</option>
				<option value="PM" >PM</option>
			</select>
			<label>AM/PM</label>
		</span> 
		                 
                    
                </div>
                     <br>
                 
                  
                                        
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

         
            <a href="javascript:HideAllShowOne('informacionGeneral')" class="btn btn-success">Aceptar</a>

                   
                      
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
