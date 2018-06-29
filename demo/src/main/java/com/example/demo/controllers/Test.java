package com.example.demo.controllers;

import java.beans.ConstructorProperties;

public class Test {
    public String name;

    @ConstructorProperties({"name"})
    public Test(String name){
        this.name=name;
    }
}
