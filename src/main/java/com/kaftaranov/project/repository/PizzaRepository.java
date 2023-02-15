package com.kaftaranov.project.repository;

import com.kaftaranov.project.entity.Pizza;
import com.kaftaranov.project.entity.Pizzeria;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface PizzaRepository extends CrudRepository<Pizza, String> {
    Pizza findByName(String name);
    List<Pizza> findByPizzeria(Pizzeria pizzeria);
}