package com.kaftaranov.project.repository;

import com.kaftaranov.project.entity.Pizzeria;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface PizzeriaRepository extends CrudRepository<Pizzeria, String> {
    Pizzeria findByName(String name);
    List<Pizzeria> findByOrderByName();
}