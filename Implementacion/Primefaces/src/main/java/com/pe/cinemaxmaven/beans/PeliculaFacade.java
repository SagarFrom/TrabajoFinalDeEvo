/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.pe.cinemaxmaven.beans;

import com.pe.cinemaxmaven.Pelicula;
import java.util.List;
import javax.ejb.Stateless;
import javax.inject.Named;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Miguel
 */
@Stateless
@Named
public class PeliculaFacade extends AbstractFacade<Pelicula> {
    @PersistenceContext(unitName = "com.pe_cinemaxmaven_war_1.0-SNAPSHOTPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public PeliculaFacade() {
        super(Pelicula.class);
    }
    
    public List<Pelicula> getPeliculas(){
        return em.createNamedQuery("Pelicula.findAll").getResultList();
    }
    
}