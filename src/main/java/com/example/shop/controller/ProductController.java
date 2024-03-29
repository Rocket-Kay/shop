package com.example.shop.controller;


import com.example.shop.model.Product;
import com.example.shop.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@RequestMapping("/products")
public class ProductController {

    @Autowired
    ProductRepository repo;

    @PostMapping
    public Product addNewProduct(@RequestBody Product product) {
        return repo.save(product);
    }

    @GetMapping
    public Iterable<Product> getAllProducts() {
        return repo.findAll();
    }

    @GetMapping("/{pId}")
    public Optional<Product> getOneProduct(@PathVariable int pid) {
        return repo.findById(pid);
    }

    @PutMapping
    public Product updateProduct(@RequestBody Product product) {
        return repo.save(product);
    }

    @GetMapping("/getByProductName/{category}")
    public Iterable<Product> getAllByCategory(@PathVariable String category)
    {
        System.out.println("jddjd" + category);
        return repo.getAllByCategory(category);
    }



}
