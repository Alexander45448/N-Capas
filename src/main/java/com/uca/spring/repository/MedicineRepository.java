package com.uca.spring.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.uca.spring.model.Medicine;

public interface MedicineRepository extends JpaRepository<Medicine, Integer>{

}
