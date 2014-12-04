/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.evolucion.cinemaxcore.base;

import java.util.List;

/**
 *
 * @author Victor Moran
 */
public interface BaseBusiness<E> {
    
    E ejecutar(OperacionEnum operacionEnum, E e) throws BusinessException;
    
    List<E> listar() throws BusinessException;
}
