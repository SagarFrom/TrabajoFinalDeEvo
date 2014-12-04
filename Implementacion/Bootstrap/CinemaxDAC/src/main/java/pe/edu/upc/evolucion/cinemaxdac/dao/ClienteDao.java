/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.evolucion.cinemaxdac.dao;

import java.util.List;
import pe.edu.upc.evolucion.cinemaxdac.entity.Cliente;
import pe.edu.upc.evolucion.cinemaxdac.util.CoreException;

/**
 *
 * @author Victor Moran
 */
public final  class ClienteDao extends BaseDao<Cliente> {

    private final static ClienteDao CLIENTE_DAO = new ClienteDao();
    
    public void insertar(Cliente e) throws CoreException {
        try{
            cn = obtenerConexion();
            cl = cn.prepareCall("{CALL sp_cliente_insertar(?,?,?)}");
            cl.setString(1, e.getNombre());
            cl.setString(2, e.getTipo());
            cl.setString(3, e.getContrasenia());
            cl.executeUpdate();
        }catch(Exception ex){
            throw new CoreException(ex);
        }finally{
            
        }
    }

    public void actualizar(Cliente e) throws CoreException {
        try{
            cn = obtenerConexion();
            cl = cn.prepareCall("{CALL sp_cliente_actualizar(?,?,?,?)}");
            cl.setInt(1, e.getIdCliente());
            cl.setString(2, e.getNombre());
            cl.setString(3, e.getTipo());
            cl.setString(4, e.getContrasenia());
            cl.executeUpdate();
        }catch(Exception ex){
           throw  new CoreException(ex);
        }finally{
            cerrar(cn);
            cerrar(cl);
        }
    }

    public void eliminar(Cliente e) throws CoreException {
        try{
            cn = obtenerConexion();
            cl = cn.prepareCall("{CALL sp_cliente_eliminar(?)}");
            cl.setInt(1, e.getIdCliente());
            cl.executeUpdate();
        }catch(Exception ex){
           throw  new CoreException(ex);
        }finally{
            cerrar(cn);
            cerrar(cl);
        }
    }

    public Cliente obtener(Cliente e) throws CoreException {
        Cliente cliente = null;
        try{
            cn = obtenerConexion();
            cl = cn.prepareCall("{CALL sp_cliente_obtener(?)}");
            cl.setInt(1, e.getIdCliente());
            rs = cl.executeQuery();
            while(rs.next()){
                cliente = new Cliente();
                cliente.setIdCliente(e.getIdCliente());
                cliente.setNombre(rs.getString("nombre"));
                cliente.setTipo(rs.getString("tipo"));
                cliente.setContrasenia(rs.getString("contrasenia"));
            }
        }catch(Exception ex){
            throw new CoreException(ex);
        }finally{
            cerrar(cl);
            cerrar(rs);
            cerrar(cn);
        }
        return cliente;
    }

    public List<Cliente> listar() throws CoreException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public static ClienteDao obtenerInstancia() {
        return CLIENTE_DAO;
    }
}
