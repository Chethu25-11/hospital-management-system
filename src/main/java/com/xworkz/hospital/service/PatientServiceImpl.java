package com.xworkz.hospital.service;
import com.xworkz.hospital.dto.PatientDto;
import com.xworkz.hospital.entity.PatientAuditEntity;
import com.xworkz.hospital.entity.PatientEntity;
import com.xworkz.hospital.repository.PatientRepo;
import org.apache.log4j.Logger;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
@Service
public class PatientServiceImpl implements PatientService {
    private static final Logger log = Logger.getLogger(PatientServiceImpl.class);

    @Autowired
    PatientRepo repository;

    @Override
    public String validateAndSavePatientInfo(PatientDto dto) {
            log.info("Validating save method from service");

            if (dto != null) {
                PatientEntity entity = new PatientEntity();
                BeanUtils.copyProperties(dto, entity);
                entity.setActive(true);

                PatientAuditEntity auditEntity = new PatientAuditEntity();
                auditEntity.setCreatedBy(dto.getName());
                auditEntity.setCreatedAt(LocalDateTime.now());
                auditEntity.setPatientEntity(entity);
                entity.setAuditEntity(auditEntity);

                String result = repository.savePatientInfo(entity);
                System.out.println(result);
                return result;
            } else {
                log.error("Login failed");
            }
            return "Registration Failed";
        }
    }
