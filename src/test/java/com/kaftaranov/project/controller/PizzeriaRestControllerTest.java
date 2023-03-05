package com.kaftaranov.project.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.kaftaranov.project.config.SecurityConfigurationTest;
import com.kaftaranov.project.entity.Pizzeria;
import com.kaftaranov.project.repository.PizzeriaRepository;
import org.hamcrest.Matchers;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.MediaType;
import org.springframework.security.test.context.support.WithUserDetails;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.test.web.servlet.MockMvc;

import java.util.List;
import java.util.Optional;

import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.anyString;
import static org.springframework.security.test.web.servlet.request.SecurityMockMvcRequestPostProcessors.csrf;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@ExtendWith(SpringExtension.class)
@SpringBootTest(
        webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT,
        classes = SecurityConfigurationTest.class)
@AutoConfigureMockMvc
public class PizzeriaRestControllerTest {
    @MockBean
    PizzeriaRepository pizzeriaRepository;
    @Autowired
    MockMvc mockMvc;
//-----------------------------------admin-----------------------------------
    @Test
    @WithUserDetails("admin")
    public void getPizzeriasTest() throws Exception {
        Pizzeria pizzeria = new Pizzeria();
        pizzeria.setName("Unnamed pizzeria for test");
        Mockito.when(pizzeriaRepository.findByOrderByName()).thenReturn(List.of(pizzeria));
        mockMvc.perform(get("/api/pizzerias")
                        .accept(MediaType.APPLICATION_JSON))
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(jsonPath("$", Matchers.hasSize(1)))
                .andExpect(jsonPath("$[0].name", Matchers.is("Unnamed pizzeria for test")));
    }

    private String asJsonString(Pizzeria pizzeria) {
        try {
            return new ObjectMapper().writeValueAsString(pizzeria);
        } catch (JsonProcessingException e) {
            throw new RuntimeException(e);
        }
    }

    @Test
    @WithUserDetails("admin")
    public void createPizzeriaTest() throws Exception {
        Pizzeria pizzeria = new Pizzeria();
        pizzeria.setName("Unnamed pizzeria for test");

        Pizzeria pizzeria1 = new Pizzeria();
        pizzeria1.setId("1");
        pizzeria1.setName("Unnamed pizzeria for test");
        Mockito.when(pizzeriaRepository.save(any(Pizzeria.class))).thenReturn(pizzeria1);
        mockMvc.perform(post("/api/pizzeria")
                        .with(csrf())
                        .content(asJsonString(pizzeria))
                        .contentType(MediaType.APPLICATION_JSON)
                        .accept(MediaType.APPLICATION_JSON))
                .andDo(print())
                .andExpect(status().isCreated())
                .andExpect(jsonPath("$.id").exists())
                .andExpect(jsonPath("$.name").value("Unnamed pizzeria for test"));
    }

    @Test
    @WithUserDetails("admin")
    public void updatePizzeriaTest() throws Exception {
        Pizzeria pizzeria = new Pizzeria();
        pizzeria.setId("1");
        pizzeria.setName("Unnamed pizzeria for test");

        Pizzeria pizzeria1 = new Pizzeria();
        pizzeria1.setId("1");
        pizzeria1.setName("Unnamed pizzeria for test1");
        Mockito.when(pizzeriaRepository.save(any(Pizzeria.class))).thenReturn(pizzeria1);
        mockMvc.perform(put("/api/pizzeria")
                        .with(csrf())
                        .content(asJsonString(pizzeria))
                        .contentType(MediaType.APPLICATION_JSON)
                        .accept(MediaType.APPLICATION_JSON))
                .andExpect(status().isCreated())
                .andExpect(jsonPath("$.id").exists())
                .andExpect(jsonPath("$.name").value("Unnamed pizzeria for test1"));
    }

    @Test
    @WithUserDetails("admin")
    public void deletePizzeriaTest() {
        Pizzeria pizzeria = new Pizzeria();
        pizzeria.setId("1");
        pizzeria.setName("Unnamed pizzeria for test");
        Mockito.when(pizzeriaRepository.findById(anyString())).thenReturn(Optional.of(pizzeria));
        pizzeriaRepository.delete(pizzeria);
        Mockito.verify(pizzeriaRepository, Mockito.times(1)).delete(pizzeria);
    }

    //-----------------------------------user-----------------------------------
}