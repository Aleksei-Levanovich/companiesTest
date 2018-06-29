package com.example.demo.controllers;

import com.example.demo.entities.Users;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@RestController
public class RegistrationController {

    @GetMapping(value = "/registration/complete")
    public String complete(@RequestBody Users user, Model model){
        model.addAttribute("name", user.getFirstName());
        return "complete";
    }
}
