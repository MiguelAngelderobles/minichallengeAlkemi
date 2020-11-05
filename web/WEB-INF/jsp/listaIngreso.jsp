<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <title>Crud reg</title>
    </head>

    <body>
        <div class = "container mt-4">
            <div class = "card border-info">
                <div class="card-header bg info text-white">
                    <a class = "btn btn-primary" href="index.htm">Home</a>
                    <a class = "btn btn-primary" href="agregar.htm">Nuevo Registro</a> 
                    <a class = "btn btn-primary" href="listaEgreso.htm">Solo egresos</a>
                    <a class = "btn btn-primary" href="listaIngreso.htm">Solo ingresos</a>

                </div>
                <div class=" card-body">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Concepto</th>
                                <th>Monto</th>
                                <th>Fecha</th>
                                <th>Tipo</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="dato" items="${lista}">
                            <tr>
                                <td>${dato.Id}</td>
                                <td>${dato.Concepto}</td>
                                <td>${dato.Monto}</td>
                                <td>${dato.Fecha}</td>
                                <td>${dato.Tipo}</td>
                                <td>
                                    <a href= "editar.htm?id=${dato.Id}" class= "btn btn-warning">Editar</a>
                                    <a href= "eliminar.htm?id=${dato.Id}" class= "btn btn-danger">Delete</a>
                                </td>
                            
                            </tr>
                            </c:forEach>
                        </tbody>
                    </table>

                </div>
            </div>
        </div>
    </body>
</html>
