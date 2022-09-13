<%-- 
    Document   : addUsu
    Created on : 8/09/2022, 10:24:30 p. m.
    Author     : mateo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="./css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="./css/estilos.css" rel="stylesheet" type="text/css"/>
        <title>Creando cuenta</title>
    </head>
    <body>
        <div class="container col-lg-4">
            <div>
                
                <h1 class="text-center">Registrar tu cuenta</h1>
                <p class="btn-danger small">${message} </p>
              
                <form action="Controlador">
                    <label for="correo">Correo</label>
                    <input class="form-control" id="correo" required="" type="email" name="txtCorreo"> <br> 
                    <label for="passw">Contraseña</label>
                    <input class="form-control" required="" type="password" id="passw" name="txtContra"> <br>
                    <label for="passwc">Confirmar contraseña</label>
                    <input class="form-control" required="" type="password" id="passwc" name='txtContraC'> <br>
                    <input class="btn btn-danger btn-block"  type="submit" name="accion" value="Registrar"><br> 
                    <a  href="Controlador?accion=salir"><img title="regresar" src="./img/atras.png" alt="atras" height="60" width="60"/>  <strong>¿Ya tienes cuenta? ¡Inicia sesion!</strong></a>


                </form>
            </div>
          
        </div>
        
        <script src="./js/script.js" type="text/javascript"></script>
        <script src="./js/bootstrap.min.js" type="text/javascript"></script>
    </body>
    
</html>
