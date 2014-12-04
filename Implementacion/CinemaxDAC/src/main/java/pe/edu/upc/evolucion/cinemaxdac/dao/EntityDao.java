/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.evolucion.cinemaxdac.dao;

import java.util.List;
import pe.edu.upc.evolucion.cinemaxdac.util.CoreException;

/**
 *
 * @author Victor Moran
 */
interface EntityDao<E>{
    
    void insertar(E e) throws CoreException;
    
    void actualizar(E e) throws CoreException;
    
    void eliminar(E e) throws CoreException;
    
    E obtener(E e) throws CoreException;
    
    List<E> listar() throws CoreException;

}