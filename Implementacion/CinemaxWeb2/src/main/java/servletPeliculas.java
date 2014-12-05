/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import static com.sun.org.apache.xalan.internal.lib.ExsltDatetime.date;
import static com.sun.org.apache.xalan.internal.lib.ExsltDatetime.date;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
import pe.edu.upc.evolucion.cinemaxcore.business.PeliculaBusiness;
import pe.edu.upc.evolucion.cinemaxdac.entity.Pelicula;

/**
 *
 * @author Miguel
 */
@WebServlet(urlPatterns = {"/servletPeliculas"})
public class servletPeliculas extends HttpServlet {

    private final PeliculaBusiness peliculaBS = PeliculaBusiness.obtenerEntidad();

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
            throws ServletException, IOException, ParseException {

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter(); 
        String direccion = "error.jsp";
        try {

            String nombre = request.getParameter("txtNomPel");
            String director = request.getParameter("txtDirector");
            String categoria = request.getParameter("txtCategoria");
            String fecha = request.getParameter("txtFecha");
            String sinapsis = request.getParameter("txtSinapsis");
            
            /*SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
            String dateInString = fecha;
            Date date = formatter.parse(dateInString);*/
            

            Pelicula peli = new Pelicula();
            peli.setNombre(nombre);
            peli.setNombreDirector(director);
            peli.setCategoria(categoria);
            peli.setFecha(fecha);
            peli.setSinapsis(sinapsis);

            PeliculaBusiness peliculaBS = PeliculaBusiness.obtenerEntidad();
            peliculaBS.ejecutar(OperacionEnum.GUARDAR, peli);

            direccion = "admin-peliculas.jsp";
            response.sendRedirect(direccion);

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
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(servletPeliculas.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(servletPeliculas.class.getName()).log(Level.SEVERE, null, ex);
        }
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
