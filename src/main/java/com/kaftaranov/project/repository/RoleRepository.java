package com.kaftaranov.project.repository;

import com.kaftaranov.project.entity.Role;
import org.springframework.data.repository.CrudRepository;

public interface RoleRepository extends CrudRepository<Role, String> {
    Role findByName(String name);
}