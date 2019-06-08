package com.example.shop.controller;

import com.example.shop.model.Category;
import com.example.shop.repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/category")
public class CategoryController {

    @Autowired
    CategoryRepository repo;

    @GetMapping
    public @ResponseBody
    Iterable<Category> getAllCategories() {
        System.out.println("Fetching categories");
        return repo.findAll();
    }

    @PostMapping
    public Category addNewCategory(Category categories) {
        repo.save(categories);
        System.out.println(categories.getName() + " is added");
        return categories;
    }

}

