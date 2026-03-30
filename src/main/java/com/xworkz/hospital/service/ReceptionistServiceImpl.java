package com.xworkz.hospital.service;

import com.xworkz.hospital.dto.ReceptionistDto;
import com.xworkz.hospital.entity.ReceptionistEntity;
import com.xworkz.hospital.repository.ReceptionistRepo;
import org.apache.log4j.Logger;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.time.LocalDateTime;
@Service
public class ReceptionistServiceImpl implements ReceptionistService{
    private static final Logger log = Logger.getLogger(ReceptionistServiceImpl.class);
    @Autowired
    private ReceptionistRepo receptionistRepo;
    @Override
    @Transactional
    public boolean save(ReceptionistDto dto) {
        ReceptionistEntity entity = new ReceptionistEntity();
        BeanUtils.copyProperties(dto, entity);

        entity.setCreatedBy("system");
        entity.setCreatedOn(LocalDateTime.now());
        return receptionistRepo.save(entity);
    }
}
