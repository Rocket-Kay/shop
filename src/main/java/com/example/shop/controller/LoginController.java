package com.example.shop.controller;

import com.example.shop.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

@Controller
@SessionAttributes("name")
public class LoginController {

    @Autowired
    LoginService service;

    @RequestMapping(value="/", method = RequestMethod.GET)
    public String loginPage(ModelMap model) {
        return "login";
    }

    @RequestMapping(value="/", method = RequestMethod.POST)
    public String welcomePage(ModelMap model, @RequestParam String name, @RequestParam String password) {
        boolean isValidUser = service.validateUser(name, password);

        if (!isValidUser) {
            model.put("errormessage", "Wrong Username/password");
            return "login";
        }

        model.put("name", name);
        return "welcome";
    }


}
