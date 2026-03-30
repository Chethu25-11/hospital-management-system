package com.xworkz.hospital.restController;



import com.xworkz.hospital.dto.ReceptionistDto;
import com.xworkz.hospital.service.ReceptionistService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@AllArgsConstructor
@RequestMapping("/reception")
public class ReceptionistRestController {

    private ReceptionistService receptionistService;

    @PostMapping("register")
    public String register(@RequestBody ReceptionistDto dto) {
        boolean saved = receptionistService.save(dto);
        return saved ? "Registration Successful" : "Registration Failed";
    }
}