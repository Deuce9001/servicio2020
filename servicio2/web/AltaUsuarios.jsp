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
        <title>
            Alta Usuarios
        </title>
    </head>
    <body>
        <div class="row">
            <div class="col-lg-6">
                <div class="well bs-component">
                    <form class="form-horizontal"  method="post" action="AltaUsuarios">
                        <fieldset>
                            <div class="form-horizontal">
                                <label class="col-lg-2 control-label">Username</label>
                                <span><input type="text" id="element_1_1" class="element text" name="username" /></span>
                            </div>
                            <br>
                            <div class="form-horizontal">
                                <label class="col-lg-2 control-label">Password</label>
                                <span><input type="password" id="element_1_2" class="element text" name="password" /></span>
                            </div>
                            <br>
                            <br>
                            <div class="form-horizontal">
                                <div class="col-lg-10">
                                    <button type="submit" class="btn btn-primary" name="submit">Guardar</button>
                                </div>
                            </div>
                            <br>
                            <br>
                            <br>
                            <div class="form-horizontal">
                                <c:if test="${not empty res}">
                                    <c:if test="${not empty error}">
                                        <div class="alert alert-warning" role="alert">${res}</div>
                                    </c:if>
                                    <c:if test="${empty error}">
                                        <div class="alert alert-success" role="alert">${res}</div>
                                    </c:if>
                                </c:if>
                            </div>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
