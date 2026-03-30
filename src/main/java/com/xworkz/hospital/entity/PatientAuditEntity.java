package com.xworkz.hospital.entity;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import java.time.LocalDateTime;

@ToString
@Setter
@Getter
@Entity
public class PatientAuditEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "created_by")
    private String createdBy;

    @Column(name = "created_on")
    private LocalDateTime createdAt;

    @Column(name = "login_by")
    private String loginBy;

    @Column(name = "login_at")
    private LocalDateTime loginAt;

    @Column(name = "updated_by")
    private String updatedBy;

    @Column(name = "updated_on")
    private LocalDateTime updatedAt;

    @OneToOne
    @JoinColumn(name = "Patient_id", unique = true)
    PatientEntity patientEntity;
}