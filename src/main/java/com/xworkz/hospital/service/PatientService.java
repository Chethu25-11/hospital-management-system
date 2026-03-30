package com.xworkz.hospital.service;

import com.xworkz.hospital.dto.PatientDto;

public interface PatientService {
    String validateAndSavePatientInfo(PatientDto dto);
}
