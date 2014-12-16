<%-- 
    Document   : AltaUsuarios
    Created on : 16-dic-2014, 14:14:35
    Author     : David
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
            Alta Usuarios
        </title>
    </head>
    <body>
        <form method="post" action="AltaUsuarios">
            <div class="form-horizontal">
                <label>Username</label>
                <input type="text" name="username" />
            </div>
            <div class="form-horizontal">
                <label>Password</label>
                <input type="password" name="password" />
            </div>
            <div class="form-horizontal">
                <label>Permiso</label>
                <input type="text" name="permiso" />
            </div>
            <button type="submit" name="submit" value="enviar">Enviar</button>
            <c:if test="${not empty res}">
                <c:if test="${not empty error}">
                    <div class="alert alert-warning" role="alert">${res}</div>
                </c:if>
                <c:if test="${empty error}">
                    <div class="alert alert-success" role="alert">${res}</div>
                </c:if>
            </c:if>
        </form>
    </body>
</html>
