package com.kaftaranov.project.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.GenericGenerator;

import java.util.List;

@Entity
@Data
@NoArgsConstructor
public class Pizzeria {
    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid", strategy = "uuid")
    private String id;
    private String name;
    private String city;
    private String address;
    private String site;
    private String phone;
    private boolean delivery;
    private boolean aroundTheClock;
    private boolean cardPayment;
    @Min(value = 1, message = "Rating cannot be less than 1")
    @Max(value = 5, message = "Rating cannot be more than 5")
    private int rating;
    @OneToMany(mappedBy = "pizzeria")
//    todo: была ошибка ...Could not write JSON: Infinite recursion (StackOverflowError)] with root cause
//    why??? Ломал голову весь день. Че за херня? Подсказка - линк ниже
//    https://stackoverflow.com/questions/47693110/could-not-write-json-infinite-recursion-stackoverflowerror-nested-exception
//    судя по комментариям, конфликт при совместном использовании lombok, либо какого-то Statemaster и Districtmaster,
//    т.к. присходит бесконечная рекурсия. Cоответственно, при выполнении запроса в адрескной строке
//    http://localhost:8080/api/pizzerias похоже выпадал бесконечный список самой первой пицерии.
//    В итоге, помогла аннтоация @JsonIgnore
    @JsonIgnore
    private List<Pizza> pizzas;
}