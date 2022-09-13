/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import Config.Md5;
import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import modelo.Persona;
import modelo.PersonaDao;
import personaDaoImp.PersonaDapImp;

/**
 *
 * @author mateo
 */
public class Controlador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    PersonaDao dao = new PersonaDao();
    PersonaDapImp daoImp = new PersonaDapImp();
    Persona per;
    int r;
    String message = "", message2 = "";
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String accion = request.getParameter("accion");
        if (accion.equals("Ingresar")) {
            String correo, pass;
            correo = request.getParameter("mail");
            pass = request.getParameter("pass");

            System.out.println("PasswordEncriptada: " + Md5.getMD5(pass));
            per = new Persona(correo, Md5.getMD5(pass));

            r = dao.validar(per);

            if (r == 1) {
                request.getSession().setAttribute("correo", correo);
                request.getRequestDispatcher("/vistas/Principal.jsp").forward(request, response);
            } else {
                request.getSession().setAttribute("message2", message2 = "");

                request.getRequestDispatcher("index.jsp").forward(request, response);

            }
        } else if (accion.equals("addUsu")) {
             request.getSession().setAttribute("message", message = "");
            request.getRequestDispatcher("/vistas/addUsu.jsp").forward(request, response);
        } else if (accion.equals("Registrar")) {
            String correo, pass, passConfirm;
           
            correo = request.getParameter("txtCorreo");
            pass = request.getParameter("txtContra");
            passConfirm = request.getParameter("txtContraC");

            if (!pass.equals(passConfirm)) {

                request.getSession().setAttribute("message", message = "Las contraseñas no coinciden");
                request.getRequestDispatcher("/vistas/addUsu.jsp").forward(request, response);

            } else {

                per = new Persona(correo, Md5.getMD5(pass));
                System.out.println(per.getCorreo() + " " + per.getPass());
                daoImp.add(per);
                request.getSession().setAttribute("message2", message2 = "Cuenta creada con exito");
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
        } else {
            request.getRequestDispatcher("index.jsp").forward(request, response);

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
