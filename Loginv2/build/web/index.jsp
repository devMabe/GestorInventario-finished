<%-- 
    Document   : index
    Created on : 8/09/2022, 4:09:06 p. m.
    Author     : mateo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
        <title>Login</title>

    </head>
    <body>
        <div class="container col-lg-4">
            <form action="Controlador">
                <div class="form-group text-center">
                    <img src="img/login.png" alt="user" height="80" width="80"/>
                    <br>
                    <br>

                    <p><strong>Bienvenido al sistema login</strong></p>
                    <br>
                    <p class='btn-success small'>${message2}</p>
                </div>
                <div class="form-group"> 
                    <label>Correo</label>
                    <input required=""  class="form-control" type="email" id="mail" name="mail" placeholder="Ingrese correo..."/>
                </div>
                <div class="form-group"> 
                    <label>Password</label>
                    <input required=""  class="form-control" type="password" name="pass" id="pass" placeholder="Ingrese contraseña..."/>
                </div>
                <br> 
                <input type="submit" class="btn btn-danger btn-block" name="accion" value="Ingresar" />

                <p class="text-center">¿No estás registrado ? <strong><a href="Controlador?accion=addUsu">¡Crea tu cuenta aquí!</a></strong> </p>

            </form>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    </body>
</html>
