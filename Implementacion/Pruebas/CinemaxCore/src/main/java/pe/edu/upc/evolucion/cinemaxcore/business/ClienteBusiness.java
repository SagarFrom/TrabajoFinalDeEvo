/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.evolucion.cinemaxcore.business;

import java.util.List;
import pe.edu.upc.evolucion.cinemaxcore.base.BaseBusiness;
import pe.edu.upc.evolucion.cinemaxcore.base.BusinessException;
import pe.edu.upc.evolucion.cinemaxcore.base.OperacionEnum;
import pe.edu.upc.evolucion.cinemaxdac.dao.ClienteDao;
import pe.edu.upc.evolucion.cinemaxdac.entity.Cliente;
import pe.edu.upc.evolucion.cinemaxdac.util.CoreException;

/**
 *
 * @author Victor Moran
 */
public class ClienteBusiness implements BaseBusiness<Cliente> {
    
    private ClienteDao clienteDao = ClienteDao.obtenerInstancia();
    private final static ClienteBusiness CLIENTE_BUSINESS = new ClienteBusiness();

    private ClienteBusiness() {
    }
        
    public Cliente ejecutar(OperacionEnum operacionEnum, Cliente e) throws BusinessException {
        
        try{
            if(operacionEnum == OperacionEnum.GUARDAR){
                if(e.getIdCliente()==null || e.getIdCliente()<=0){
                    clienteDao.insertar(e);
                }else{
                    clienteDao.actualizar(e);      
                }
            }else if(operacionEnum == OperacionEnum.ELIMINAR){
                clienteDao.eliminar(e);
            }else if(operacionEnum == OperacionEnum.OBTENER){
                e = clienteDao.obtener(e);
            }
        }catch(CoreException ex){
            throw new BusinessException(ex);
        }
        return e;
    }

    public List<Cliente> listar() throws BusinessException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public static ClienteBusiness obtenerEntidad() {
        return CLIENTE_BUSINESS;
    }
    
}
