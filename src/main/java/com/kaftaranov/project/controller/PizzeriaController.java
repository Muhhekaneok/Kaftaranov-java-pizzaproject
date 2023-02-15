package com.kaftaranov.project.controller;

import com.kaftaranov.project.entity.Pizzeria;
import com.kaftaranov.project.service.PizzeriaService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class PizzeriaController {
    private final PizzeriaService pizzeriaService;

    @Autowired
    public PizzeriaController(PizzeriaService pizzeriaService) {
        this.pizzeriaService = pizzeriaService;
    }

    @PostMapping("/addPizzeria")
    public String addPizzeria(@Valid Pizzeria pizzeria, BindingResult bindingResult) {
        if (bindingResult.hasErrors())
            return "pizzeria";
        pizzeriaService.savePizzeria(pizzeria);
        return "redirect:/pizzerias";
    }

    @GetMapping("/pizzerias")
    public String pizzeriaTable(Model model) {
        model.addAttribute("pizzerias", pizzeriaService.getAllPizzerias());
        return "pizzerias";
    }

    @GetMapping("/addPizzeria")
    public String addPizzeria(Model model) {
        Pizzeria pizzeria = new Pizzeria();
        model.addAttribute("pizzeria", pizzeria);
        return "pizzeria";
    }

    @GetMapping("/editPizzeria/{id}")
    public String editPizzeriaById(@PathVariable String id, Model model) {
        Pizzeria pizzeria = pizzeriaService.getPizzeriaById(id);
        model.addAttribute("pizzeria", pizzeria);
        return "pizzeria";
    }

    @GetMapping("/deletePizzeria/{id}")
    public String deletePizzeriaById(@PathVariable String id, Model model) {
        pizzeriaService.deletePizzeriaById(id);
        model.addAttribute("pizzeria", pizzeriaService.getAllPizzerias());
        return "redirect:/pizzerias";
    }
}