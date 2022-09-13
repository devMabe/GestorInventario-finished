<%-- 
    Document   : editEquipo
    Created on : 9/09/2022, 10:58:59 a. m.
    Author     : mateo
--%>

<%@page import="modelo.Equipo"%>
<%@page import="modelo.EquipoDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

        <link href="././css/estilos.css" rel="stylesheet" type="text/css"/>

        <title>Editar | equipo</title>
    </head>
    <body>

        <%
            EquipoDao dao = new EquipoDao();
            int id = Integer.parseInt((String) request.getParameter("id"));
            Equipo equipo = (Equipo) dao.list(id);

        %>
        <div class="container col-lg-5">
            <br>
            <h1 style="color: green">Editar equipo</h1>
            <form action="equipoController">
                <input type="hidden" name="txtId" value="<%= equipo.getId()%>"/>
                Nombre <br>
                <input required="" class="form-control" value="<%= equipo.getNombre()%>" type="text" name="txtNombre"> <br> 
                Serial <br>
                <input required="" class="form-control" type="text" value="<%= equipo.getSerial()%>" name="txtSerial"> <br>
                Modelo <br>
                <input  required="" class="form-control" type="text" value="<%= equipo.getModelo()%>"  name="txtModelo"> <br>
                Marca <br>
                <input required="" class="form-control" type="text" value="<%= equipo.getMarca()%>" name="txtMarca"> <br>
                <input  class="btn btn-success btn" type="submit" name="accion" value="actualizar"> 
                <a href="equipoController?accion=atras">Regresar</a>
            </form>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>


    </body>


</html>
