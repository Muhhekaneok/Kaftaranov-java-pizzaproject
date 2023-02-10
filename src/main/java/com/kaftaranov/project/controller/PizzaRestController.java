package com.kaftaranov.project.controller;

import com.kaftaranov.project.entity.Pizza;
import com.kaftaranov.project.repository.PizzaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@RequestMapping("/api")
public class PizzaRestController {
    private final PizzaRepository pizzaRepository;

    @Autowired
    public PizzaRestController(PizzaRepository pizzaRepository) {
        this.pizzaRepository = pizzaRepository;
    }

    @GetMapping("/pizzas")
    public ResponseEntity<Iterable<Pizza>> getPizzas() {
        return new ResponseEntity<>(pizzaRepository.findAll(), HttpStatus.OK);
    }

    @RequestMapping(value = "/pizza", method = {RequestMethod.POST, RequestMethod.PUT})
    public ResponseEntity<Pizza> updatePizza(@RequestBody Pizza pizza) {
        return new ResponseEntity<>(pizzaRepository.save(pizza), HttpStatus.CREATED);
    }

    @GetMapping("/pizza/{id}")
    public ResponseEntity<Pizza> getPizzaById(@PathVariable String id) {
        Optional<Pizza> optionalPizza = pizzaRepository.findById(id);
        if (optionalPizza.isEmpty())
            return ResponseEntity.notFound().build();
        return new ResponseEntity<>(optionalPizza.get(), HttpStatus.OK);
    }

    @GetMapping("/pizza")
    public ResponseEntity<Pizza> getPizzaByName(@RequestParam String name) {
        Pizza pizza = pizzaRepository.findByName(name);
        if (pizza == null)
            return ResponseEntity.notFound().build();
        return new ResponseEntity<>(pizza, HttpStatus.OK);
    }

    @DeleteMapping("/pizza/{id}")
    public ResponseEntity<Pizza> deletePizzaById(@PathVariable String id) {
        Optional<Pizza> optionalPizza = pizzaRepository.findById(id);
        if (optionalPizza.isEmpty())
            return ResponseEntity.notFound().build();
        pizzaRepository.delete(optionalPizza.get());
        return ResponseEntity.noContent().build();
    }
}