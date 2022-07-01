package com.uca.spring.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.uca.spring.model.Doctor;

public interface DoctorRepository extends JpaRepository<Doctor, Integer>{

}
