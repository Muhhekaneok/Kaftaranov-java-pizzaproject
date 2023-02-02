package com.kaftaranov.project.repository;

import com.kaftaranov.project.entity.Pizzeria;
import org.springframework.data.repository.CrudRepository;

public interface PizzeriaRepository extends CrudRepository<Pizzeria, String> {
}