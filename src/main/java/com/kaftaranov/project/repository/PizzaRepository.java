package com.kaftaranov.project.repository;

import com.kaftaranov.project.entity.Pizza;
import org.springframework.data.repository.CrudRepository;

public interface PizzaRepository extends CrudRepository<Pizza, String> {
    Pizza findByName(String name);
}