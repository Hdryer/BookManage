package com.yang.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/main")
public class Maincontroller {
    @RequestMapping("../html/firstpage.html")
    public String test(){
        return "";
    }
}
