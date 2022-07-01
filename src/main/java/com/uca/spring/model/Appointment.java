package com.uca.spring.model;

import java.io.Serializable;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Getter;
import lombok.Setter;

@Entity
@Setter
@Getter
@Table(name = "APPOINTMENT")
public class Appointment implements Serializable{
	
    private static final long serialVersionUID = 1L;

    @Id
    @Basic(fetch = FetchType.EAGER)
    @Column(name = "ID_APPOINTMENT")
    Integer idAppointment;

    @Column(name = "HOUR")
    String hour;

    @Column(name = "DATE")
    String date;
    
    @Column(name = "SPECIALTY")
    String specialty;
    
    @ManyToOne(fetch = FetchType.EAGER)
    @JsonIgnore
    @JoinColumns({@JoinColumn(name = "DUI_PATIENT", referencedColumnName = "DUI_PATIENT")})
    Patient patient;
    
    @ManyToOne(fetch = FetchType.EAGER)
    @JsonIgnore
    @JoinColumns({@JoinColumn(name = "DUI_DOCTOR", referencedColumnName = "DUI_DOCTOR")})
    Doctor doctor;
}
