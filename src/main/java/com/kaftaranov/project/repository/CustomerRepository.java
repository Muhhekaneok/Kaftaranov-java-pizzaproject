package com.kaftaranov.project.repository;

import com.kaftaranov.project.entity.Customer;
import org.springframework.data.repository.CrudRepository;

public interface CustomerRepository extends CrudRepository<Customer, String> {
}