/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.evolucion.cinemaxdac.dao;

import java.sql.Date;
import java.util.List;
import java.util.concurrent.ExecutionException;
import pe.edu.upc.evolucion.cinemaxdac.entity.Pelicula;
import pe.edu.upc.evolucion.cinemaxdac.util.CoreException;

/**
 *
 * @author Victor Moran
 */
public final class PeliculaDao extends BaseDao<Pelicula> {

    private final static PeliculaDao PELIULA_DAO = new PeliculaDao();
    
    public void insertar(Pelicula e) throws CoreException {
        try{
            cn = obtenerConexion();
            cl = cn.prepareCall("{CALL sp_pelicula_insertar(?,?,?,?,?)}");
            cl.setString(1, e.getNombre());
            cl.setString(2, e.getNombre());
            cl.setDate(3, (Date) e.getFecha());
            cl.setString(4, e.getCategoria());
            cl.setString(5, e.getSinapsis());
            cl.executeUpdate();
        }catch(Exception ex){
            throw new CoreException(ex);
        }finally{
            
        }
    }

    public void actualizar(Pelicula e) throws CoreException {
        try{
            cn = obtenerConexion();
            cl = cn.prepareCall("{CALL sp_pelicula_actualizar(?,?,?,?,?,?)}");
            cl.setInt(1, e.getIdPelicula());
            cl.setString(2, e.getNombre());
            cl.setString(3, e.getNombreDirector());
            cl.setDate(4, (Date) e.getFecha());
            cl.setString(5 ,e.getCategoria());
            cl.setString(6, e.getSinapsis());
            cl.executeUpdate();
        }catch(Exception ex){
            throw new CoreException(ex);
        }finally{
            cerrar(cn);
            cerrar(cl);
        }
    }

    public void eliminar(Pelicula e) throws CoreException {
        try{
            cn = obtenerConexion();
            cl = cn.prepareCall("{CALL sp_pelicula_eliminar(?)}");
            cl.setInt(1, e.getIdPelicula());
            cl.executeUpdate();
        }catch(Exception ex){
            throw new CoreException(ex);
        }finally{
            cerrar(cn);
            cerrar(cl);
        }
    }

    public Pelicula obtener(Pelicula e) throws CoreException {
        
        Pelicula pelicula = null;
        try{
            cn = obtenerConexion();
            cl = cn.prepareCall("{CALL sp_cliente_obtener(?)}");
            cl.setInt(1, e.getIdPelicula());
            rs = cl.executeQuery();
            while(rs.next()){
                pelicula = new Pelicula();
                pelicula.setIdPelicula(e.getIdPelicula());
                pelicula.setNombre(rs.getString("nombre"));
                pelicula.setNombreDirector(rs.getString("nombreDirector"));
                pelicula.setFecha(rs.getDate("fecha"));
                pelicula.setCategoria(rs.getString("categoria"));
                pelicula.setSinapsis(rs.getString("sinapsis"));
            }
        }catch(Exception ex){
           throw new CoreException(ex);
        }finally{
            cerrar(cn);
            cerrar(cl);
            cerrar(rs);
        }
        return pelicula;
    }

    public List<Pelicula> listar() throws CoreException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public static PeliculaDao obtenerInstancia() {
        return PELIULA_DAO;
    }
    
}
