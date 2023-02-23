package com.kaftaranov.project.controller;

import com.kaftaranov.project.entity.Role;
import com.kaftaranov.project.entity.User;
import com.kaftaranov.project.service.RoleService;
import com.kaftaranov.project.service.UserService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class MainController {
    private final RoleService roleService;
    private final UserService userService;

    @Autowired
    public MainController(RoleService roleService, UserService userService) {
        this.roleService = roleService;
        this.userService = userService;
    }

    @GetMapping("/login")
    public String admin() {
        return "login";
    }

    @GetMapping("/registration")
    public String registration(Model model) {
        User user = new User();
        model.addAttribute("user", user);
        return "registration";
    }

    @PostMapping("/registration")
    public String addUser(@Valid User user, BindingResult bindingResult) {
        if (bindingResult.hasErrors())
            return "registration";
        if (!user.getPassword().equals(user.getConfirmPassword())) {
            bindingResult.addError(new FieldError("user", "password", "passwords must be equals"));
            return "registration";
        }

        String username = user.getLogin();
        String password = user.getPassword();
        Role role = roleService.findByName("role_user");
        if (role == null) {
            role = roleService.save(new Role("role_user"));
        }
        userService.saveUser(user);
        SecurityContext securityContext = SecurityContextHolder.getContext();
        Authentication auth = new UsernamePasswordAuthenticationToken(
                username,
                password,
                List.of(new SimpleGrantedAuthority(role.getName()))
        );
        securityContext.setAuthentication(auth);
        return "redirect:/pizzerias";
    }
}