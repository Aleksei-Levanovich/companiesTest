package com.example.demo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
    @RequestMapping("/")
    public String welcome(Model model){
        model.addAttribute("message", "WILLKOMEN");
        return "welcome";
    }
    @RequestMapping("/registration")
    public String registration(Model model){
        model.addAttribute("registration", "Register here");
        return "registration";
    }
}