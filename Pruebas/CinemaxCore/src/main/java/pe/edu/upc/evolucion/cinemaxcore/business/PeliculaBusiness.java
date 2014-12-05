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
import pe.edu.upc.evolucion.cinemaxdac.dao.PeliculaDao;
import pe.edu.upc.evolucion.cinemaxdac.entity.Pelicula;
import pe.edu.upc.evolucion.cinemaxdac.util.CoreException;

/**
 *
 * @author Victor Moran
 */
public class PeliculaBusiness implements BaseBusiness<Pelicula> {
    
    private final PeliculaDao peliculaDao = PeliculaDao.obtenerInstancia();
    private final static PeliculaBusiness PELICULA_BUSINESS = new PeliculaBusiness();
    
    private PeliculaBusiness(){
    }
    
     public static PeliculaBusiness getInstance(){
        return PeliculaBusinessHolder.INSTANCE;
    }
     
     
     private static class PeliculaBusinessHolder{
        private static final PeliculaBusiness INSTANCE = new PeliculaBusiness();
        private PeliculaBusinessHolder() {
        }
    }

    public Pelicula ejecutar(OperacionEnum operacionEnum, Pelicula e) throws BusinessException {
                try{
            if(operacionEnum == OperacionEnum.GUARDAR){
                if(e.getIdPelicula()==null || e.getIdPelicula()<=0){
                    peliculaDao.insertar(e);
                }else{
                    peliculaDao.actualizar(e);      
                }
            }else if(operacionEnum == OperacionEnum.ELIMINAR){
                peliculaDao.eliminar(e);
            }else if(operacionEnum == OperacionEnum.OBTENER){
                e = peliculaDao.obtener(e);
            }
        }catch(CoreException ex){
            throw new BusinessException(ex);
        }
        return e;
    }

    public List<Pelicula> listar() throws BusinessException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public static PeliculaBusiness obtenerEntidad(){
        return PELICULA_BUSINESS;
    }
    
}
