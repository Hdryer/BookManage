package com.yang.controller;

import com.yang.pojo.Book;
import com.yang.service.Bookservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/book")
public class Bookscontroller {
    @Autowired
    private Bookservice bookservice;

    @RequestMapping("/allbook")
    @ResponseBody
    public List<Book> allbook(){
        List<Book> allbook = bookservice.allbook();
        System.out.println("Controller层:获取了所有书籍");
        return allbook;
    }

    @RequestMapping("/addbook")
    @ResponseBody
    public Book addbook(@RequestBody Book book){
        bookservice.addbook(book);
        System.out.println("Controller层:添加了一本书"+book);
        return book;
    }

    @RequestMapping("/deletebook")
    @ResponseBody
    public void deletebook(@RequestBody String bookid){
        System.out.println(bookid);
        bookservice.deletebook(bookid);
        System.out.println("Controller层:删除书籍"+bookid);
    }

    @RequestMapping("/updatebook")
    @ResponseBody
    public Book updatebook(@RequestBody Book book){
        bookservice.updatebook(book);
        System.out.println("Controller层:修改书籍为"+book);
        return book;
    }
}
