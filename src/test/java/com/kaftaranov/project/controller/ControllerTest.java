package com.kaftaranov.project.controller;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit.jupiter.SpringExtension;

@ExtendWith(SpringExtension.class)
@SpringBootTest
public class ControllerTest {
    @Autowired
    PizzeriaController pizzeriaController;
    @Autowired
    PizzeriaRestController pizzeriaRestController;
    @Autowired
    MainController mainController;
    @Autowired
    PizzaController pizzaController;
    @Autowired
    PizzaRestController pizzaRestController;

    @Test
    public void pizzeriaControllerTest() {
        Assertions.assertNotEquals(pizzeriaController, null);
    }

    @Test
    public void pizzeriaRestControllerTest() {
        Assertions.assertNotEquals(pizzeriaRestController, null);
    }

    @Test
    public void mainControllerTest() {
        Assertions.assertNotEquals(mainController, null);
    }

    @Test
    public void pizzaControllerTest() {
        Assertions.assertNotEquals(pizzaController, null);
    }

    @Test
    public void pizzaRestControllerTest() {
        Assertions.assertNotEquals(pizzaRestController, null);
    }
}