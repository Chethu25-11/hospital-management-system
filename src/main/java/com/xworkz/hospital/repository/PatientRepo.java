package com.xworkz.hospital.repository;

import com.xworkz.hospital.entity.PatientEntity;

public interface PatientRepo {
    String savePatientInfo(PatientEntity entity);
}
