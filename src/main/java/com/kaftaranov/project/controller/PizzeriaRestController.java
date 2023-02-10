package com.kaftaranov.project.controller;

import com.kaftaranov.project.entity.Pizzeria;
import com.kaftaranov.project.repository.PizzeriaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@RequestMapping("/api")
public class PizzeriaRestController {
    private final PizzeriaRepository pizzeriaRepository;

    @Autowired
    public PizzeriaRestController(PizzeriaRepository pizzeriaRepository) {
        this.pizzeriaRepository = pizzeriaRepository;
    }

    @GetMapping("/pizzerias")
    public ResponseEntity<Iterable<Pizzeria>> getPizzerias() {
        return new ResponseEntity<>(pizzeriaRepository.findAll(), HttpStatus.OK);
    }

    @RequestMapping(value = "/pizzeria", method = {RequestMethod.POST, RequestMethod.PUT})
    public ResponseEntity<Pizzeria> updatePizzeria(@RequestBody Pizzeria pizzeria) {
        return new ResponseEntity<>(pizzeriaRepository.save(pizzeria), HttpStatus.CREATED);
    }

    @GetMapping("/pizzeria/{id}")
    public ResponseEntity<Pizzeria> getPizzeriaByID(@PathVariable String id) {
        Optional<Pizzeria> optionalPizzeria = pizzeriaRepository.findById(id);
        // return optionalPizzeria.map(pizzeria ->
        // new ResponseEntity<>(pizzeria, HttpStatus.OK))
        // .orElseGet(() -> ResponseEntity.notFound().build());
        if (optionalPizzeria.isEmpty())
            return ResponseEntity.notFound().build();
        return new ResponseEntity<>(optionalPizzeria.get(), HttpStatus.OK);
    }

    @GetMapping("/pizzeria")
    public ResponseEntity<Pizzeria> getPizzeriaByName(@RequestParam String name) {
        Pizzeria pizzeria = pizzeriaRepository.findByName(name);
        if (pizzeria == null)
            return ResponseEntity.notFound().build();
        return new ResponseEntity<>(pizzeria, HttpStatus.OK);
    }

    @DeleteMapping("/pizzeria/{id}")
    public ResponseEntity<Pizzeria> deletePizzeriaById(@PathVariable String id) {
        Optional<Pizzeria> optionalPizzeria = pizzeriaRepository.findById(id);
        if (optionalPizzeria.isEmpty())
            return ResponseEntity.notFound().build();
        pizzeriaRepository.delete(optionalPizzeria.get());
        return ResponseEntity.noContent().build();
    }
}