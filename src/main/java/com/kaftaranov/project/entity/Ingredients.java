package com.kaftaranov.project.entity;

import jakarta.persistence.*;
import org.hibernate.annotations.GenericGenerator;

import java.util.List;

public class Ingredients {
    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid", strategy = "uuid")
    String id;
    String composition; // ???
    @ManyToMany
    @JoinTable(name = "pizza_ingredients",
            joinColumns = @JoinColumn(name = "ingredients_id"),
            inverseJoinColumns = @JoinColumn(name = "pizza_id"))
    List<Pizza> pizzas;
}

// В каждой пиццерии свои список ингридиентов. Это реально существующие пиццерии с разных городов и их настоящие пиццы.
/*
FATTO A MANO - пиццерия
 --пицца--  -  --состав пиццы--
Marinara - Tomato, garlic, oregano, basil
Margherita - Tomato, mozzarella, parmesan, basil
Margherita buffalo - Tomato, mozzarella, buffalo mozzarella, parmesan, basil
Diavola - Tomato, salamino piccante (spicy salami), chilli, mozzarella, parmesan, basil
Capricciosa - Tomato, ham, salame Napoli, mushrooms, grilled artichokes, black olives, mozzarella, parmesan, basil
Nduja - Tomato, nduja (spicy minced pork), salamino piccante (spicy salami), roasted peppers, mozzarella, parmesan, basil
Napoletana - Tomato, anchovies, black olives, capers, garlic, oregano, basil, (without mozzarella)
Quattro formaggi - Taleggio, gorgonzola, smoked provola, parmesan, mozzarella, basil

LOST SOULS PIZZA - пиццерия
          --пицца--  -  --состав пиццы--
Santa carla (veggie) - Buffalo Mozzarella, cherry tomato, fresh basil
Fangs for the memories - Chorizo, peppers, onions, chilli flake’s
You killed Marco Polo - Chicken, peppers, onion
Pops go to the pizza - Sausage, broccoli, parmesan
Have you seen lady - Parma ham, rocket, sundried tomato
Death - No-rizo, peppers, red onions, chilli flakes

NUDO - пиццерия
      --пицца--  -  --состав пиццы--
Salsiccia bianka - Italian beef sausage, mushrooms, bufala mozzarella, truffle cream sauce base, topped with shaved parmesan, fresh basil, drizzled with truffle aioli
Florentina ricotta - Baby spinach and ricotta sauce base, kalamata olives, red onion, roasted cherry tomatoes, toasted pine nuts, bufala mozzarella, topped with shaved parmesan
Bresaola rucola - Beef bresaola, cherry tomato, red onion, bufala mozzarella on a truffle cream sauce base, topped with balsamic fig reduction, rocket leaf and shaved parmesan
Superbiotica - Grilled aubergine, marinated artichokes, baby spinach, roasted peppers, mushrooms, sun dried tomatoes fior di latte, on a tomato base, topped with pesto gremolata (full of heart-healthy antioxidants)
Truffle fungo - Roasted mushrooms, caramelised onion, sun dried tomato, fior di latte mozzarella, on a white truffle cream sauce base topped with wild rocket & truffle aioli
Pepperoni - Beef pepperoni and mozzarella cheese on a tomato sauce base
Pepperoni hot - Beef pepperoni and mozzarella cheese on a tomato sauce base with jalapenos
Aubergine parmigana - Grilled marinated aubergine, roasted red peppers, red onion, garlic oil
Italian sausage - Spicy beef sausage, green peppers, red onion, fior di latte, cherry tomato, chilli, garlic, harissa hot sauce, tomato base
Aegean lamb - House cooked lamb shoulder roasted in Mediterranean spices, tomato, green peppers, red onion, feta, pomegranate, garlic EVOO base, topped with tzatziki yoghurt
Carne mista - Roast lamb, bresaola, Italian beef sausage, BBQ chicken, beef pepperoni, drizzled with BBQ sauce base
*/