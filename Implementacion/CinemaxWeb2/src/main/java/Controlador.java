/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import pe.edu.upc.evolucion.cinemaxcore.base.BusinessException;
import pe.edu.upc.evolucion.cinemaxcore.base.OperacionEnum;
import pe.edu.upc.evolucion.cinemaxcore.business.ClienteBusiness;
import pe.edu.upc.evolucion.cinemaxdac.dao.ClienteDao;
import pe.edu.upc.evolucion.cinemaxdac.entity.Cliente;

/**
 *
 * @author Victor Moran
 */
@WebServlet(urlPatterns = {"/Controlador"})
public class Controlador extends HttpServlet {

    private final ClienteBusiness clienteBS = ClienteBusiness.obtenerEntidad();
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
           
            String nombre = request.getParameter("txtNombre");
            String tipo = request.getParameter("txtTipo");
            String con1 = request.getParameter("txtCon1");
            String con2 = request.getParameter("txtCon2");
            
            if(!con1.equals(con2))
                response.sendRedirect("admin-usuarios.jsp");
            
            Cliente cliente = new Cliente();
            cliente.setNombre(nombre);
            cliente.setTipo(tipo);
            cliente.setContrasenia(con1);
            
            ClienteBusiness clienteBS = ClienteBusiness.obtenerEntidad();
            clienteBS.ejecutar(OperacionEnum.GUARDAR, cliente);
            //if(cliente.getIdCliente()!=null)
            response.sendRedirect("admin-usuarios.jsp");
            
        } catch (BusinessException ex) {
            Logger.getLogger(Controlador.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            out.close();
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
