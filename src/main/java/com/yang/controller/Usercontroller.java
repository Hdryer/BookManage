package com.yang.controller;

import com.yang.pojo.User;
import com.yang.service.Userservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/user")
public class Usercontroller {
    @Autowired
    private Userservice userservice;

    @RequestMapping("/login")
    public String login(User user, HttpSession httpSession, Model model){
        if (userservice.selectuser(user)!=null){
            System.out.println("controller层：用户"+user.getAdmin()+"登录成功！");
            httpSession.setAttribute("user",user);
            return "main";
        }
        model.addAttribute("message","账号或密码错误");
        return "login";
    }

    @RequestMapping("/register")
    public String register(User user,Model model){
        userservice.adduser(user);
        model.addAttribute("message","注册成功");
        return "login";
    }

    @RequestMapping("/logout")
    public String logout(HttpSession session){
        session.removeAttribute("user");
        return "login";
    }

    @RequestMapping("/queryusers")
    @ResponseBody
    public List<User> queryusers(){
        List<User> users = userservice.queryusers();
        System.out.println("查询了所有用户");
//        ObjectMapper mapper = new ObjectMapper();
//        String usersjson = mapper.writeValueAsString(users);
//        System.out.println(usersjson);
        return users;
    }
}
