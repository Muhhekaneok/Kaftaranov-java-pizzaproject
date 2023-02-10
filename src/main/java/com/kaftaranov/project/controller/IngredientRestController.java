package com.kaftaranov.project.controller;

import com.kaftaranov.project.entity.Ingredient;
import com.kaftaranov.project.repository.IngredientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@RequestMapping("/api")
public class IngredientRestController {
    private final IngredientRepository ingredientRepository;

    @Autowired
    public IngredientRestController(IngredientRepository ingredientRepository) {
        this.ingredientRepository = ingredientRepository;
    }

    @GetMapping("/ingredients")
    public ResponseEntity<Iterable<Ingredient>> getIngredients() {
        return new ResponseEntity<>(ingredientRepository.findAll(), HttpStatus.OK);
    }

    @RequestMapping(value = "/ingredient", method = {RequestMethod.POST, RequestMethod.PUT})
    public ResponseEntity<Ingredient> updateIngredient(@RequestBody Ingredient ingredient) {
        return new ResponseEntity<>(ingredientRepository.save(ingredient), HttpStatus.CREATED);
    }

    @GetMapping("/ingredient/{id}")
    public ResponseEntity<Ingredient> getIngredientById(@PathVariable String id) {
        Optional<Ingredient> optionalIngredient = ingredientRepository.findById(id);
        if (optionalIngredient.isEmpty())
            return ResponseEntity.notFound().build();
        return new ResponseEntity<>(optionalIngredient.get(), HttpStatus.OK);
    }

    @GetMapping("/ingredient")
    public ResponseEntity<Ingredient> getIngredientByName(@RequestParam String name) {
        Ingredient ingredient = ingredientRepository.findByName(name);
        if (ingredient == null)
            return ResponseEntity.notFound().build();
        return new ResponseEntity<>(ingredient, HttpStatus.OK);
    }

    @DeleteMapping("/ingredient/{id}")
    public ResponseEntity<Ingredient> deleteIngredientById(@PathVariable String id) {
        Optional<Ingredient> optionalIngredient = ingredientRepository.findById(id);
        if (optionalIngredient.isEmpty())
            return ResponseEntity.notFound().build();
        ingredientRepository.delete(optionalIngredient.get());
        return ResponseEntity.noContent().build();
    }
}