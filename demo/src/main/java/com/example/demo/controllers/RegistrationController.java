package com.example.demo.controllers;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@RestController
public class RegistrationController {

    @RequestMapping(value = "/registration/complete", method = RequestMethod.POST)
    public ResponseEntity complete(@RequestBody Test test){
        System.out.println(test.name);
        return new ResponseEntity(HttpStatus.OK);
    }
}