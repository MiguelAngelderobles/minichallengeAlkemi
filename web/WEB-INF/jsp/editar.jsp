<%-- 
    Document   : editar
    Created on : 04/11/2020, 11:40:01
    Author     : miguel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <title>Crud reg</title>
    </head>
    <body>
        <div class = "container mt-4 col-lg-4">
            <div class = "card border-info">
                <div class=  "card-header bg-info">
                    <h4>Actualizar/Cambiar Registro</h4>
                </div>
                <div class = "card-body">
                    <form method="POST">
                        <label>Concepto</label>
                        <input type = "text" name = "concepto" class = "form-control" value ="${lista[0].Concepto}"><p></p>
                        <label>Monto</label>
                        <input type = "number" name = "monto" step= "any"  class = "form-control" value ="${lista[0].Monto}"><p></p>
                        <label>Fecha</label>
                        <input type="text" name="fecha" placeholder required="DD-MM-YYYY" min="01-01-2000" max="08-31-2020" value ="${lista[0].Fecha}"><p></p>
                        <input type = "submit" value = "Actualizar" class = "btn btn-success">
                        <a href = "index.htm">Regresar</a>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
