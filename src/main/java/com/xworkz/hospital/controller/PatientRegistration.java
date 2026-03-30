package com.xworkz.hospital.controller;


import com.xworkz.hospital.dto.PatientDto;
import com.xworkz.hospital.service.PatientService;
import lombok.AllArgsConstructor;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@AllArgsConstructor
@RequestMapping("/patient")
public class PatientRegistration {

    private static final Logger log = Logger.getLogger(PatientRegistration.class);

    private PatientService service;

    @GetMapping("/registration")
    public String patient() {
        log.info("Registration getMapping");
        return "patientRegistrationForm";
    }
    @PostMapping("register")
    public String registration(@ModelAttribute PatientDto dto, Model model) {
        log.info("Running registration from controller");

//        dto.setName(dto.getName());
//        dto.setPhoneNumber(dto.getPhoneNumber());
//        dto.setEmail(dto.getEmail());
//        dto.setGender(dto.getGender());
//        dto.setDob(dto.getDob());
//        dto.setBloodType(dto.getBloodType());
//        dto.setAddress(dto.getAddress());

        String saved = service.validateAndSavePatientInfo(dto);
        System.out.println(saved);

        model.addAttribute("message", saved);
        return "otpLogin";
    }
}