package com.kaftaranov.project.service;

import com.kaftaranov.project.entity.Pizzeria;
import com.kaftaranov.project.repository.PizzeriaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

@Service
public class PizzeriaService {
    private final PizzeriaRepository pizzeriaRepository;

    @Autowired
    public PizzeriaService(PizzeriaRepository pizzeriaRepository) {
        this.pizzeriaRepository = pizzeriaRepository;
    }

    public List<Pizzeria> getAllPizzerias() {
        return StreamSupport
                .stream(pizzeriaRepository.findAll().spliterator(), false)
                .collect(Collectors.toList());
    }

    public void savePizzeria(Pizzeria pizzeria) {
        pizzeriaRepository.save(pizzeria);
    }

    public Pizzeria getPizzeriaById(String id) {
        return pizzeriaRepository.findById(id).get();
    }

    public void deletePizzeriaById(String id) {
        pizzeriaRepository.deleteById(id);
    }
}