package com.example.shop.repository;

import com.example.shop.model.CheckOut;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository

public interface CheckOutRepository extends JpaRepository<CheckOut, Integer> {
    List<CheckOut> findAllByUserId(int userId);
}

