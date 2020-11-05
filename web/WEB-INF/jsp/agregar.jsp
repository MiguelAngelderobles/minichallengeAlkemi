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
                    <h4>Agregar Nuevo Registro</h4>
                </div>
                <div class = "card-body">
                    <form method="POST">
                        <label>Concepto</label>
                        <input type = "text" name = "concepto" class = "form-control"><p></p>
                        <label>Monto</label>
                        <input type = "number" name = "monto" step= "any" class = "form-control"><p></p>
                        <label>Fecha</label>
                        <input type="text" name="fecha" placeholder required="DD-MM-YYYY" title="Enter a date in this format DD-MM-YYYY" min="01-01-2000" max="08-31-2020"/><p></p>
                        <label>Tipo</label>
                        <input type = "text" name = "tipo" class = "form-control"><p></p>
                        <input type = "submit" value = "Agregar" class = "btn btn-success">
                        <a href = "index.htm">Regresar</a>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
