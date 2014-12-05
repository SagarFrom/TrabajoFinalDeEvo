/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.evolucion.cinemaxdac.util;

import java.util.ResourceBundle;
/**
 *
 * @author Victor Moran
 */
public class UtilCore {
    
    private UtilCore(){
    }
    
    public static String obtenerPropiedad(String clave){
        ResourceBundle rb = ResourceBundle.getBundle("propiedades");
        return rb.getString(clave);
    }
}
