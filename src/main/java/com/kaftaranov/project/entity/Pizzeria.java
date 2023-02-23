package com.kaftaranov.project.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.*;
import org.hibernate.annotations.GenericGenerator;

import java.util.List;

@Entity
@Setter
@Getter
@NoArgsConstructor
public class Pizzeria {
    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid", strategy = "uuid")
    private String id;
    @NotNull
    @NotBlank
    private String name;
    private String city;
    private String address;
    private String site;
    private String phone;
    @Column(name = "is_delivery")
    private boolean delivery;
    @Column(name = "is_around_the_clock")
    private boolean aroundTheClock;
    @Column(name = "is_card_payment")
    private boolean cardPayment;
//    @Min(value = 1, message = "Rating cannot be less than 1")
//    @Max(value = 5, message = "Rating cannot be more than 5")
    private int rating;
    @OneToMany(mappedBy = "pizzeria")
    private List<Pizza> pizzas;
}