package com.xworkz.hospital.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class DoctorDto {

    private int id;
    private String name;
    private long phoneNumber;
    private String email;
    private String designation;
    private String gender;
    private String medicalCollege;
    private String password;
    private boolean isActive;
}