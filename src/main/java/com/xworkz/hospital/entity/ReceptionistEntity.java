package com.xworkz.hospital.entity;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import java.time.LocalDate;
import java.time.LocalDateTime;

@Setter
@Getter
@ToString
@Entity

@NamedQuery(name = "receptionFindByEmailAndPassword",
        query = "select x from ReceptionistEntity x where " +
                "x.email=:email And x.password=:password")

@Table(name = "receptionist_details")
public class ReceptionistEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;
    private long phoneNumber;
    private String email;
    private String qualification;
    private String department;
    private String gender;
    private String password;
    private boolean isActive;
    @Column(name = "created_by")
    private String createdBy;
    @Column(name = "created_on")
    private LocalDateTime createdOn;
    @Column(name = "update_by")
    private String updateBy;
    @Column(name = "updated_on")
    private LocalDateTime updatedOn;


    @PrePersist
    public void onCreate() {
        this.createdOn = LocalDateTime.now();
        this.createdBy = "system";
    }
    @PreUpdate
    public void onUpdate() {
        this.updatedOn = LocalDateTime.now();
        this.updateBy = "system";
    }
}