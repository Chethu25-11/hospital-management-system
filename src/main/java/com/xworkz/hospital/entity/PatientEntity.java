package com.xworkz.hospital.entity;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import java.time.LocalDate;

@Getter
@Setter
@ToString
@Entity

@NamedQuery(name = "findByEmail",
        query = "select x from PatientEntity x where x.email = :email")

@Table(name = "patient_log")
public class PatientEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
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

    @OneToOne(mappedBy = "patientEntity", cascade = CascadeType.ALL, orphanRemoval = true)
    private PatientAuditEntity auditEntity;
}