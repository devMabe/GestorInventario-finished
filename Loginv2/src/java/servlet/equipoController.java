/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import modelo.Equipo;
import modelo.EquipoDao;

/**
 *
 * @author mateo
 */
@WebServlet(name = "equipoController", urlPatterns = {"/equipoController"})
public class equipoController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    Equipo equipo;
    EquipoDao dao = new EquipoDao();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");
        switch (accion) {
            case "addEquipo":
                request.getRequestDispatcher("/vistas/equipos/addEquipo.jsp").forward(request, response);
                break;
            case "Agregar":
                String nombre, serial, modelo, marca;
                nombre = request.getParameter("txtNombre");
                serial = request.getParameter("txtSerial");
                modelo = request.getParameter("txtModelo");
                marca = request.getParameter("txtMarca");
                if (!nombre.equals("") && !serial.equals("") && !modelo.equals("") && !marca.equals("")) {
                    equipo = new Equipo(nombre, serial, modelo, marca);
                    dao.add(equipo);
                    request.getRequestDispatcher("/vistas/Principal.jsp").forward(request, response);
                }   break;
            case "atras":
                request.getRequestDispatcher("/vistas/Principal.jsp").forward(request, response);
                break;
                
            case "delete":
                String id= request.getParameter("id");
                dao.eliminar(Integer.parseInt(id));
                request.getRequestDispatcher("/vistas/Principal.jsp").forward(request, response);
                
                break;
                
            case "editar":
                request.getRequestDispatcher("/vistas/equipos/editEquipo.jsp").forward(request, response);
                break;
                
            case "actualizar":
                String nom,ser,mar,mod;
                Equipo equipoUpdate;
                int idper;
                idper = Integer.parseInt(request.getParameter("txtId"));
                nom = request.getParameter("txtNombre");
                ser = request.getParameter("txtSerial");
                mod = request.getParameter("txtMarca");
                mar = request.getParameter("txtModelo");
                
                equipoUpdate = new Equipo(idper, nom, ser, mod, mar);
                
                dao.update(equipoUpdate);
                
                request.getRequestDispatcher("/vistas/Principal.jsp").forward(request, response);
                break;
            default:
                break;
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
