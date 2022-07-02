package com.yang.dao;

import com.yang.pojo.User;

import java.util.List;

public interface Usermapper {
    public void adduser(User user);     //注册
    public User selectuser(User user);  //登录
    public List<User> queryusers();    //查询全部用户
}
