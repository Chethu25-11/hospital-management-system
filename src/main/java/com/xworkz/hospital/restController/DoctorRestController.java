package com.xworkz.hospital.restController;


import com.xworkz.hospital.dto.DoctorDto;
import com.xworkz.hospital.service.DoctorService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;

@RestController
@AllArgsConstructor
@RequestMapping("/doctor")
public class DoctorRestController {

    private DoctorService doctorService;

    @PostMapping("register")
    public String register(@RequestBody DoctorDto dto) {
        boolean saved = doctorService.save(dto);
        return saved ? "Registration Successful" : "Registration Failed";
    }
}