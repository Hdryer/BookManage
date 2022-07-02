package com.yang.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/all")
public class Allcontroller {

    @RequestMapping("/login")
    public String gologin(){
        return "login";
    }

    @RequestMapping("/hello")
    @ResponseBody
    public String hello(){
        return "hello";
    }
}
