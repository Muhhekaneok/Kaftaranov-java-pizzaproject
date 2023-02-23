package com.kaftaranov.project.service;

import com.kaftaranov.project.entity.Pizza;
import com.kaftaranov.project.entity.Pizzeria;
import com.kaftaranov.project.repository.PizzaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

@Service
public class PizzaService {
    @Value("${images.directory}")
    private String imagesDirectory;
    private final PizzaRepository pizzaRepository;

    @Autowired
    public PizzaService(PizzaRepository pizzaRepository) {
        this.pizzaRepository = pizzaRepository;
    }

    public List<Pizza> getAllPizzas() {
        return StreamSupport.stream(pizzaRepository.findAll().spliterator(), false)
                .collect(Collectors.toList());
    }

    public void savePizza(MultipartFile file, Pizza pizza) throws IOException {
        if (!file.isEmpty()) {
            String filename = file.getOriginalFilename();
            pizza.setPicture(filename);
            Path path = Paths.get(imagesDirectory + "\\" + filename);
            Files.copy(file.getInputStream(), path, StandardCopyOption.REPLACE_EXISTING);
        }
        pizzaRepository.save(pizza);
    }

    public Pizza getPizzaById(String id) {
        return pizzaRepository.findById(id).orElse(null);
    }

    public void deletePizzaById(String id) {
        pizzaRepository.deleteById(id);
    }

    public List<Pizza> getPizzaInPizzeria(Pizzeria pizzeria) {
        return pizzaRepository.findByPizzeria(pizzeria);
    }
}