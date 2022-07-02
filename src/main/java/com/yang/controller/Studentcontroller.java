package com.yang.controller;

import com.yang.pojo.Student;
import com.yang.service.Studentservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/student")
public class Studentcontroller {
    @Autowired
    private Studentservice studentservice;

    @RequestMapping("/allstudent")
    @ResponseBody
    public List<Student> allstudent(){
        List<Student> students = studentservice.allstudent();
        System.out.println("Controller层：获取了所有学生用户");
        return students;
    }

    @RequestMapping("/deletestudent")
    @ResponseBody
    public void deletestuudent(@RequestBody int studentid){
        System.out.println(studentid);
        studentservice.deletestudent(studentid);
        System.out.println("删除了用户--"+studentid);
    }

    @RequestMapping("/addstudent")
    public String addstudent(Student student, Model model){
        System.out.println(student);
        studentservice.addstudent(student);
        model.addAttribute("message","注册成功");
        System.out.println("Controller层:注册了学生"+student.getUsername());
        return "login";
    }

    @RequestMapping("/updatepassword")
    public String updatepassword(@RequestParam("studentid") int studentid, @RequestParam("password")String password, Model model){
        System.out.println("Controller层:用户"+studentid+"修改新密码为"+password);
        studentservice.updatepassword(studentid,password);
        System.out.println("Controller层:用户"+studentid+"修改新密码为"+password);
        model.addAttribute("message","修改成功请重新登录");
        return "login";
    }

    @RequestMapping("/login")
    public String login(@RequestParam("admin")int studentid, @RequestParam("password") String password, HttpSession httpSession, Model model){
        Student student = studentservice.querystudent(studentid, password);
        if (student!=null){
            System.out.println("Controller层:"+studentid+"登录成功!");
            httpSession.setAttribute("user",student);
            return "login2";
        }
        model.addAttribute("message","账号或密码错误");
        model.addAttribute("student",student);
        return "login";
    }

    @RequestMapping("/logout")
    public String logout(HttpSession httpSession){
        httpSession.removeAttribute("user");
        return "login";
    }
}
