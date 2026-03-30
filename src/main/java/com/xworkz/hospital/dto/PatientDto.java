package com.xworkz.hospital.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.boot.convert.DataSizeUnit;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDate;

@Setter
@Getter
@ToString
public class PatientDto {

    private int id;
    private String name;
    private long phoneNumber;
    private String email;
    private String gender;
    private LocalDate dob;
    private String bloodType;
    private String address;
    private String otp;
    private boolean isActive;
}