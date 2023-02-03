//package com.kaftaranov.project.entity;
//
//import jakarta.persistence.*;
//import lombok.Data;
//import lombok.NoArgsConstructor;
//import org.hibernate.annotations.GenericGenerator;
//
//@Entity
//@Data
//@NoArgsConstructor
//public class Customer {
//    @Id
//    @GeneratedValue(generator = "system-uuid")
//    @GenericGenerator(name = "system-uuid", strategy = "uuid")
//    String id;
//    String name;
//    @Column(name = "phone_number")
//    String phoneNumber;
//    String review;
//    @OneToMany
//    Pizzeria pizzeria;
//    @OneToMany
//    Pizza pizza;
//}