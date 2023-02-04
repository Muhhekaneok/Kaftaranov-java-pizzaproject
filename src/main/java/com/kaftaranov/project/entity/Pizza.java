package com.kaftaranov.project.entity;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.GenericGenerator;

import java.util.List;

@Entity
@Data
@NoArgsConstructor
public class Pizza {
    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid", strategy = "uuid")
    String id;
    String name;
    double price;
    boolean novelty;
    boolean vegan;
    @ManyToOne
    Pizzeria pizzeria;
    @ManyToMany
    @JoinTable(name = "pizza_ingredients",
            joinColumns = @JoinColumn(name = "pizza_id"),
            inverseJoinColumns = @JoinColumn(name = "ingredients_id"))
    List<Ingredients> ingredients;
}