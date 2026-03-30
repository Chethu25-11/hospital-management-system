package com.xworkz.hospital.entity;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import java.time.LocalDateTime;

@Setter
@Getter
@ToString
@Entity

@NamedQuery(name = "findByEmailAndPassword",
        query = "select x from DoctorEntity x where " +
                "x.email = :email And x.password = :password")
@NamedQuery(name = "findByEmailDoctor", query = "select x from DoctorEntity x where x.email=:email")
@Table(name = "doctor_info")
public class DoctorEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;
    private long phoneNumber;
    private String email;
    private String designation;
    private String gender;
    private String medicalCollege;
    private String password;
    private boolean isActive = true;
    @Column(name = "created_by")
    private String createdBy;
    @Column(name = "created_on")
    private LocalDateTime createdOn;
    @Column(name = "updated_by")
    private String updateBy;
    @Column(name = "updated_on")
    private LocalDateTime updatedOn;
    @Column(name = "reset_token")
    private String resetToken;
    @Column(name = "token_expiry")
    private LocalDateTime tokenExpiry;

    @PrePersist
    public void onCreate() {
        this.createdOn = LocalDateTime.now();
        this.createdBy = "system";
    }
    @PreUpdate
    public  void onUpdate() {
        this.updatedOn = LocalDateTime.now();
        this.updateBy = "system";
    }
}