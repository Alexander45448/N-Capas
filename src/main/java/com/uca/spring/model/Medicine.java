package com.uca.spring.model;


import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
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
@Table(name = "MEDICINE")
public class Medicine {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(fetch = FetchType.EAGER)
    @Column(name = "ID_MEDICINE")
    Integer idMedicine;

    @Column(name = "MEDICINE")
    String medicine;

    @Column(name = "DOSE")
    String dose;
    
    @Column(name = "SCHEDULE")
    String schedule;
    
    @Column(name = "DURATION")
    String duration;
    
    @ManyToOne(fetch = FetchType.EAGER)
    @JsonIgnore
    @JoinColumns({@JoinColumn(name = "DUI_PATIENT", referencedColumnName = "DUI_PATIENT")})
    Patient patient;
    
    public    Integer getCatPersonDelegate(){
        return (this.patient== null) ? null : this.patient.getDuiPatient();
    }
    
    public    String getCatPersonNameDelegate(){
        return (this.patient== null) ? null : this.patient.getFullName();
    }
    
    public    String getCatPersonDateOfBirthDelegate(){
        return (this.patient== null) ? null : this.patient.getDateOfBirth();
    }
    
    public    String getCatPhoneNumberDelegate(){
        return (this.patient== null) ? null : this.patient.getPhoneNumber();
    }
    
    public    String getCatPersonAddressDelegate(){
        return (this.patient== null) ? null : this.patient.getAddress();
    }
    public    String getCatPersonEmailDelegate(){
        return (this.patient== null) ? null : this.patient.getEmail();
    }
    
    public    String getCatPersonPasswordDelegate(){
        return (this.patient== null) ? null : this.patient.getPassword();
    }




    /**
    * Metodo para  setear la llave primaria del padre de la entidad
    * @return void
    * @author Generador-Safi
    * @version 1.0
    **/
    public void setPersonDelegate(Integer  duiPerson){
        if (duiPerson == null) {
             this.patient = null;
        }else {
             this.patient = new Patient();
             this.patient.setDuiPatient(duiPerson);
         }

}
}
