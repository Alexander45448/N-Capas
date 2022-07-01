package com.uca.spring.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.uca.spring.model.DoctorSchedule;

public interface DoctorScheduleRepository extends JpaRepository<DoctorSchedule, Integer>{

}
