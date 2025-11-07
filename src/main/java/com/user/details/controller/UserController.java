package com.user.details.controller;

import org.springframework.web.bind.annotation.RestController;

import com.user.details.service.UserService;
import org.springframework.web.bind.annotation.CrossOrigin;

import org.springframework.web.bind.annotation.GetMapping;


import java.util.*;

import com.user.details.model.User;
@CrossOrigin(origins ="http://localhost:3000")
@RestController


public class UserController {
    private final UserService userService; //creating object(springboot automatically creates an object if name is specified)
    public UserController(UserService userService){
        this.userService = userService;
    }

    @GetMapping("/user/details")
    public List<User> getUsers() {
        return userService.getAllUsers();
    }
    
}
