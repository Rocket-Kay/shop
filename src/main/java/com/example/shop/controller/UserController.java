package com.example.shop.controller;

import com.example.shop.model.User;
import com.example.shop.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@RequestMapping("/user/")
public class UserController {

    @Autowired
    UserRepository repo;

    @PostMapping
    public User adduser(@RequestBody User user) {
        repo.save(user);
        return user ;
    }

    @GetMapping("{email}")
    @ResponseBody
    public User  getOnebyemail(@PathVariable String email, String password) {
        System.out.println("search user id");
        return repo.findByEmail(email).get();
    }



    @GetMapping("users/{userId}")
    public Optional<User> getOneProduct(@PathVariable int userId) {
        return repo.findById(userId);
    }
    @GetMapping
    public @ResponseBody
    Iterable<User> getUsers() {
        return repo.findAll();
    }


}
