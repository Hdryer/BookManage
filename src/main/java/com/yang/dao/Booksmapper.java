package com.yang.dao;

import com.yang.pojo.Book;

import java.util.List;


public interface Booksmapper {
    public List<Book> allbook();
    public Book querybook(String bookid);
    public void addbook(Book book);
    public void deletebook(String bookid);
    public void updatebook(Book book);
}
