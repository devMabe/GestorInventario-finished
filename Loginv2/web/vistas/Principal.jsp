<%-- 
    Document   : Principal
    Created on : 8/09/2022, 4:12:06 p. m.
    Author     : mateo
--%>

<%@page import="java.util.Iterator"%>
<%@page import="modelo.Equipo"%>
<%@page import="java.util.List"%>
<%@page import="modelo.EquipoDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet"  href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css" />
        <link rel="stylesheet"  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" />
        <link rel="stylesheet" href="../vistas/main.css">
        <title>Gestion de Equipos</title>
    </head>
    <body>

        <nav class="navbar navbar-dark bg-dark">
            <h2 class="m-3" style="color: white"><span ></span>Inventario</h2>
            <h6 style="color: white">Bienvenido(a):<strong>${correo}</strong></h6>
            <div class="dropdown">
                <a  class="btn btn-success m-2 text-end" title="Agregar equipo" href="equipoController?accion=addEquipo"><i class="fa-solid fa-plus"></i></a>

                <a class="btn btn-danger m-4" title="Cerrar Sesión" href="Controlador?accion=Salir"><i class="fa-solid fa-arrow-right-from-bracket"></i></a>
            </div>

        </nav>

        <div class="container">
            <br>   
            <div class="row">
                <div class="col-lg-12">
                    <div class="table-responsive">
                        <table id="tablax" class="table table-warning " cellspacing="0">
                            <h2 class="text-primary">Realizar reportes</h2>

                            <thead>

                                <tr>
                                    <th class="text-center">#</th>
                                    <th class="text-center">NOMBRE</th>
                                    <th class="text-center">SERIAL</th>
                                    <th class="text-center">MODELO</th>
                                    <th class="text-center">MARCA</th>
                                    <th class="text-center">ACCIONES</th>
                                </tr>
                            </thead>



                            <tbody>
                                <%

                                    EquipoDao dao = new EquipoDao();
                                    List<Equipo> list = dao.listar();
                                    Iterator<Equipo> iter = list.iterator();
                                    Equipo equipo = null;

                                    while (iter.hasNext()) {
                                        equipo = iter.next();
                                %>
                                <tr>
                                    <td class="text-center"><%= equipo.getId()%></td>
                                    <td class="text-center"><%= equipo.getNombre()%></td>
                                    <td class="text-center"><%= equipo.getSerial()%></td>
                                    <td class="text-center"><%= equipo.getModelo()%></td>
                                    <td class="text-center"><%= equipo.getMarca()%></td>
                                    <td class="text-center"> <a class="btn btn-primary" title="Editar" href="equipoController?accion=editar&id=<%= equipo.getId()%>"><i class="fa-regular fa-pen-to-square"></i></a> 
                                        <a class="btn btn-danger" title="Borrar"  href="equipoController?accion=delete&id=<%= equipo.getId()%>">X</a> </td>
                                </tr>
                                <%}%>
                            </tbody>

                        </table>
                        <br>

                    </div>
                </div>
            </div>



        </div>

        <!-- Footer -->
        <footer class="bg-dark text-center text-white">
            <!-- Grid container -->
            <div class="container p-4">
                <!-- Section: Social media -->
                <section class="mb-4">

                    <!-- Instagram -->
                    <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
                       ><i class="fab fa-instagram"></i
                        ></a>

                    <!-- Linkedin -->
                    <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
                       ><i class="fab fa-linkedin-in"></i
                        ></a>

                    <!-- Github -->
                    <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
                       ><i class="fab fa-github"></i
                        ></a>
                </section>
                <!-- Section: Social media -->

            </div>
            <!-- Grid container -->

            <!-- Copyright -->
            <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
                © 2022 Copyright:
                <a class="text-white" href="https://mdbootstrap.com/">Mateo Beltran</a>
            </div>
            <!-- Copyright -->
        </footer>
        <!-- Footer -->                    




        <script src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap5.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/buttons/2.2.3/js/dataTables.buttons.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
        <script src="https://cdn.datatables.net/buttons/2.2.3/js/buttons.html5.min.js"></script>
        <script src="https://cdn.datatables.net/buttons/2.2.3/js/buttons.colVis.min.js"></script>

        

        <script src="./js/botonesExport.js"></script>
    </body>


</html>
