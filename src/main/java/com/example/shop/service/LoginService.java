package com.example.shop.service;

import org.springframework.stereotype.Component;

@Component
public class LoginService {

    public boolean validateUser(String userid, String password) {
        return userid.equalsIgnoreCase("Kay") && password.equals("asd");
    }
}
