package com.xworkz.hospital.repository;

import com.xworkz.hospital.entity.ReceptionistEntity;
import com.xworkz.hospital.entity.ReceptionistEntity;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
@Repository
public class ReceptionistRepoImpl implements ReceptionistRepo{
    private static final Logger log = Logger.getLogger(ReceptionistRepoImpl.class);
    @PersistenceContext
    private EntityManager em;
    @Override
    public boolean save(ReceptionistEntity entity) {
        em.persist(entity);
        return true;
    }
}
