package com.example.shop.controller;

import com.example.shop.model.CheckOut;
import com.example.shop.repository.CheckOutRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin()
@RestController
@RequestMapping("user/checkOut")

public class CheckOutController {

    @Autowired
    CheckOutRepository repo;

    @PostMapping
    public Iterable<CheckOut> AddItemsToCart(@RequestBody Iterable<CheckOut> products) {
        return repo.saveAll(products);
    }

    @GetMapping("/{userId}")
    public List<CheckOut> getByUserId(@PathVariable("userId") int userId) {
        return repo.findAllByUserId(userId);
    }


//    @PostMapping
//    public CheckOut adduser(@RequestBody CheckOut checkOut) {
//        repo.save(checkOut);
//        return checkOut ;
//    }
}