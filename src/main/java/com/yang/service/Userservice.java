package com.yang.service;

import com.yang.pojo.User;

import java.util.List;

public interface Userservice {
    public void adduser(User user);       //注册
    public User selectuser(User user);    //登录
    public List<User> queryusers();
}
