/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.pe.cinemaxmaven.beans;

import com.pe.cinemaxmaven.Cine;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Miguel
 */
@Stateless
public class CineFacade extends AbstractFacade<Cine> {
    @PersistenceContext(unitName = "com.pe_cinemaxmaven_war_1.0-SNAPSHOTPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public CineFacade() {
        super(Cine.class);
    }
    
}
