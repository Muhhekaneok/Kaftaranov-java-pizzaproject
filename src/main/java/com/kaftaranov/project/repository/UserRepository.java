package com.kaftaranov.project.repository;

import com.kaftaranov.project.entity.User;
import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository<User, String> {
    User findByLogin(String login);
}