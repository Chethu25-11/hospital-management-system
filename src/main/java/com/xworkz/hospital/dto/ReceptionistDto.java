package com.xworkz.hospital.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class ReceptionistDto {

    private int id;
    private String name;
    private long phoneNumber;
    private String email;
    private String qualification;
    private String department;
    private String gender;
    private String password;
    private boolean isActive;
}