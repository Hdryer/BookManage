package com.yang.service;

import com.yang.dao.Booksmapper;
import com.yang.pojo.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class Bookserviceimpl implements Bookservice{

    @Autowired
    private Booksmapper booksmapper;

    @Override
    public List<Book> allbook() {
        return booksmapper.allbook();
    }

    @Override
    public Book querybook(String bookid) {
        return booksmapper.querybook(bookid);
    }

    @Override
    public void addbook(Book book) {
        booksmapper.addbook(book);
    }

    @Override
    public void deletebook(String bookid) {
        booksmapper.deletebook(bookid);
    }

    @Override
    public void updatebook(Book book) {
        booksmapper.updatebook(book);
    }
}
