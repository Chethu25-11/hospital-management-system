package com.xworkz.hospital.repository;

import com.xworkz.hospital.entity.PatientEntity;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;



@Repository
public class PatientRepoImpl implements PatientRepo{
    private static final Logger log = Logger.getLogger(PatientRepoImpl.class);
    @Autowired
    EntityManagerFactory emf;
    @Override
    public String savePatientInfo(PatientEntity entity) {
        log.info("Invoking save method from repo");
        String save = null;

        EntityManager em  = null;
        EntityTransaction et = null;
        try {
            em = this.emf.createEntityManager();
            et = em.getTransaction();
            et.begin();
            em.persist(entity);
            et.commit();
            save="Registration Successful";
        } catch (Exception e) {
            log.error("Registration failed");
            if (et!=null) {
                et.rollback();
            }
        } finally {
            if (em!=null) {
                em.close();
            }
        }

        return save;
    }
}
