package com.uca.spring.model;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Setter
@Getter
@Table(name = "DOCTOR")
public class Doctor {
	
	private static final long serialVersionUID = 1L;

    @Id
    @Basic(fetch = FetchType.EAGER)
    @Column(name = "DUI_DOCTOR")
    Integer duiDoctor;

    @Column(name = "FULL_NAME")
    String fullName;

    @Column(name = "DATE_OF_BIRTH")
    String dateOfBirth;

    @Column(name = "PHONE_NUMBER")
    String phoneNumber;
    
    @Column(name = "SPECIALTY")
    String specialty;
    
    @Column(name = "ADDRESS")
    String address;
    
    @Column(name = "EMAIL")
    String email;
    
    @Column(name = "PASSWORD")
    String password;

}
