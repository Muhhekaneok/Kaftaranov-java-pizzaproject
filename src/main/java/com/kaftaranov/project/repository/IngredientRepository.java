package com.kaftaranov.project.repository;

import com.kaftaranov.project.entity.Ingredient;
import org.springframework.data.repository.CrudRepository;

public interface IngredientRepository extends CrudRepository<Ingredient, String> {
    Ingredient findByName(String name);
}