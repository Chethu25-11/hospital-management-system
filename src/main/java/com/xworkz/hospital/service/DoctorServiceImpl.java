package com.xworkz.hospital.service;

import com.xworkz.hospital.dto.DoctorDto;
import com.xworkz.hospital.entity.DoctorEntity;
import com.xworkz.hospital.repository.DoctorRepo;
//import com.xworkz.hospital.util.EmailUtil;
//import com.xworkz.hospital.util.TokenUtil;
import org.apache.log4j.Logger;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.time.LocalDateTime;

@Service
public class DoctorServiceImpl implements DoctorService{
    private static final Logger log = Logger.getLogger(DoctorServiceImpl.class);
    @Autowired
    private DoctorRepo doctorRepo;
    @Override
    @Transactional
    public boolean save(DoctorDto dto) {
        DoctorEntity entity = new DoctorEntity();
        BeanUtils.copyProperties(dto, entity);

        entity.setCreatedBy("system");
        entity.setCreatedOn(LocalDateTime.now());
        return doctorRepo.save(entity);
    }
}
