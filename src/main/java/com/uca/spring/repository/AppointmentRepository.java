package com.uca.spring.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.uca.spring.model.Appointment;

public interface AppointmentRepository extends JpaRepository<Appointment, Integer>{

}
