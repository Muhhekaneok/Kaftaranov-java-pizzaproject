package com.kaftaranov.project.controller;

import com.kaftaranov.project.entity.Pizza;
import com.kaftaranov.project.service.PizzaService;
import com.kaftaranov.project.service.PizzeriaService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.Banner;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;

@Controller
public class PizzaController {
    @Value("${images.directory}")
    private String imagesDirectory;
    private final PizzaService pizzaService;
    private final PizzeriaService pizzeriaService;

    @Autowired
    public PizzaController(PizzeriaService pizzeriaService, PizzaService pizzaService) {
        this.pizzeriaService = pizzeriaService;
        this.pizzaService = pizzaService;
    }

    @GetMapping("/image/{filename}")
    public ResponseEntity<byte[]> downloadImage(@PathVariable String filename) throws IOException {
        byte[] image = Files.readAllBytes(new File(imagesDirectory + "\\" + filename).toPath());
        return ResponseEntity
                .status(HttpStatus.OK)
                .contentType(MediaType.valueOf("image/png"))
                .body(image);
    }

    @PostMapping("/addPizza")
    public String addPizza(@Valid Pizza pizza,
                           BindingResult bindingResult,
                           @RequestParam("image") MultipartFile file,
                           Model model) throws IOException {
        if (bindingResult.hasErrors()) {
            model.addAttribute("pizzerias", pizzeriaService.getAllPizzerias());
            return "pizza";
        }
        pizzaService.savePizza(file, pizza);
        return "redirect:/pizzas";
    }

    @GetMapping("/pizzas")
    public String pizzaTable(Model model) {
        model.addAttribute("pizzas", pizzaService.getAllPizzas());
        return "pizzas";
    }

    @GetMapping("/addPizza")
    public String addPizza(Model model) {
        Pizza pizza = new Pizza();
        model.addAttribute("pizza", pizza);
        model.addAttribute("pizzerias", pizzeriaService.getAllPizzerias());
        return "pizza";
    }

    @GetMapping("/editPizza/{id}")
    public String editPizzaById(@PathVariable String id, Model model) {
        Pizza pizza = pizzaService.getPizzaById(id);
        model.addAttribute("pizza", pizza);
        model.addAttribute("pizzerias", pizzeriaService.getAllPizzerias());
        return "pizza";
    }

    @GetMapping("/deletePizza/{id}")
    public String deletePizzaById(@PathVariable String id, Model model) {
        pizzaService.deletePizzaById(id);
        model.addAttribute("pizzas", pizzaService.getAllPizzas());
        return "redirect:/pizzas";
    }
}