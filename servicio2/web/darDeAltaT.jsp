<%-- 
    Document   : inicio
    Created on : Nov 8, 2014, 8:35:10 PM
    Author     : Alejandra
--%>
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
            Tutores
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
                    <div class="col-lg-12" id="darDeAlta" >
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
                                <form class="form-horizontal" method="post" action="AltaTutor">
                                    <fieldset>
                                        <legend>Dar de Alta a un Tutor</legend>
                                        <div class="form-horizontal">
                                            <p>Introduzca la matrícula del alumno en caso de:<br>
                                                1) que el campo este vacío o <br>
                                                2) que no corresponda la matrícula del alumno con los tutores que serán registrados</p>
                                            <label class="control-label">Matr&iacute;cula:</label>
                                            &nbsp;
                                            &nbsp;
                                            &nbsp;
                                            &nbsp;
                                            <span>
                                                <input id="element_1_2" name="apellidos" class="element text" maxlength="255" size="14"/>
                                            </span>
                                        </div>
                                        <br>
                                        <br>
                                        
                                        <div class="form-horizontal">
                                            <label class="control-label">Nombre(s):</label>
                                            &nbsp;
                                            &nbsp;
                                            &nbsp;
                                            <span>
                                                <input id="element_1_1" name="nombre" class="element text" maxlength="255" size="14"/>
                                            </span>
                                        </div>
                                        <br>
                                        <div class="form-horizontal">
                                            <label class="control-label">Apellidos:</label>
                                            &nbsp;
                                            &nbsp;
                                            &nbsp;
                                            &nbsp;
                                            <span>
                                                <input id="element_1_2" name="apellidos" class="element text" maxlength="255" size="14"/>
                                            </span>
                                        </div>
                                        <br>
                                        <div class="form-horizontal">
                                            <label class="control-label">Fecha de Nacimiento:</label>
                                            &nbsp;
                                            &nbsp;
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
                                                <input id="element_3_3" name="anio" class="element text" size="4" maxlength="4" value="" type="text">
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
                                            <label for="input" class="control-label">Telefono(1):</label>
                                            &nbsp;
                                            &nbsp;
                                            &nbsp;
                                            &nbsp;
                                            &nbsp;
                                            &nbsp;
                                            &nbsp;
                                            &nbsp;
                                            <span>
                                                <input id="element_1_3" name= "tel1" class="element text" maxlength="8" size="30"/>
                                            </span>
                                        </div>
                                        <br>
                                        <div class="form-horizontal">
                                            <label class="control-label">Telefono(2):</label>
                                            &nbsp;
                                            &nbsp;
                                            &nbsp;
                                            &nbsp;
                                            &nbsp;
                                            &nbsp;
                                            &nbsp;
                                            &nbsp;
                                            <span>
                                                <input id="telefono" name= "tel2" class="element text" maxlength="8" size="30"/>
                                            </span>
                                        </div>
                                        <br>
                                        <div class="form-horizontal">
                                            <label class="control-label">Celular:</label>
                                            &nbsp;
                                            &nbsp;
                                            &nbsp;
                                            &nbsp;
                                            &nbsp;
                                            &nbsp;
                                            &nbsp;
                                            &nbsp;
                                            &nbsp;
                                            &nbsp;
                                            &nbsp;
                                            &nbsp;
                                            <span>
                                                <input id="celular" name="celular" class="element text" maxlength="8" size="30"/>
                                            </span>
                                        </div>
                                        <br>
                                        <div class="form-horizontal">
                                            <label class="control-label">Correo electrónico:</label> &nbsp;
                                            <span><input id="correo" name= "correo_e" class="element text" maxlength="8" size="30"/></span>
                                        </div>   
                                        <br>
                                        <div class="form-horizontal">
                                            <label class="control-label">Parentesco:</label>
                                            &nbsp;
                                            &nbsp;
                                            &nbsp;
                                            &nbsp;
                                            &nbsp;
                                            &nbsp;
                                            &nbsp;
                                            &nbsp;
                                            <input id="parentesco" name= "parentesco" class="element text" maxlength="8" size="30" value=""/>
                                        </div>      
                                        <br>
                                        <br>
                                        <div class="form-group">
                                            &nbsp;
                                            &nbsp;
                                            <label >Lugar de Nacimiento:</label>
                                            <br>
                                            <div class="col-lg-10">
                                            <select class="form-control" id="lugar_nac" name="lugar_nac">
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
                                            <label class="control-label">Estado civil:</label>
                                            <br>
                                            <div class="col-lg-10">
                                                <select class="form-control" id="estado_civil" name="estado_civil">
                                                    <option value="Casado(a)">Casado(a)</option>
                                                    <option value="Unión Libre(a)">Unión Libre</option>
                                                    <option value="Divorciado(a)">Divorciado(a)</option>
                                                    <option value="Soltero(a)">Soltero(a)</option>
                                                    <option value="Viudo(a)">Viudo(a)</option>
                                                </select>
                                            </div>
                                        </div>    
                                        <div class="form-group">
                                            &nbsp;
                                            &nbsp;
                                            <label class="control-label">Escolaridad:</label>
                                            <br>
                                            <div class="col-lg-10">
                                                <select class="form-control" id="escolaridad" name="escolaridad">
                                                    <option value="Primaria">Primaria</option>
                                                    <option value="Secundaria">Secundaria</option>
                                                    <option value="Preparatoria">Preparatoria</option>
                                                    <option value="Licenciatura">Licenciatura</option>
                                                    <option value="Posgrado">Posgrado</option>
                                                    <option value="Sin estudios">Sin estudios</option>
                                                </select>
                                            </div>
                                        </div>                    
                                        <div class="form-horizontal">
                                            <div class="form-group">
                                                <label for="textArea" class="col-lg-2 control-label">Direccion:</label>
                                                <br>
                                                <br>
                                                <div class="col-lg-10">
                                                    <textarea class="form-control" rows="3" id="textArea" name="direccion"></textarea>
                                                </div>
                                            </div>  
                                        </div>   
                                        <br>
                                        <p>*La fotografía debe estar en formato jpg, jpeg o png, de otra forma no se podrá realizar el resgistro</p>
                                        <div class="form-horizontal">
                                            <label class="col-lg-2 control-label">Fotograf&iacute;a:</label>
                                            <div class="col-lg-10">
                                                <input type="file" name="foto" id="foto" onchange="check_file()" class="element file" />
                                            </div>
                                        </div>
                                        <br>
                                        <br>
                                        <br>
                                        <div class="form-horizontal">
                                            <div class="col-lg-10 col-lg-offset-2">
                                                <c:if test="${not empty res}">
                                                    <c:if test="${empty error}">
                                                        <a href="darDeAltaT.jsp" class="btn btn-primary">Añadir otro tutor</a>
                                                        <a href="inicio.jsp" class="btn btn-success">Finalizar</a>
                                                    </c:if>
                                                    <c:if test="${not empty error}"><button type="submit" class="btn btn-primary">Guardar</button></c:if>
                                                </c:if>
                                                <c:if test="${empty res}">
                                                    <button type="submit" class="btn btn-primary">Guardar</button>
                                                </c:if>
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
