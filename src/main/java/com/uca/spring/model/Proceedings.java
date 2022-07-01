package com.uca.spring.model;

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
@Table(name = "PROCEEDINGS")
public class Proceedings {
	
	private static final long serialVersionUID = 1L;

    @Id
    @Basic(fetch = FetchType.EAGER)
    @Column(name = "DUI_PROCEEDINGS")
    Integer duiProceedings;
    
    @ManyToOne(fetch = FetchType.EAGER)
    @JsonIgnore
    @JoinColumns({@JoinColumn(name = "DUI_PATIENT", referencedColumnName = "DUI_PATIENT")})
    Patient patient;

}
