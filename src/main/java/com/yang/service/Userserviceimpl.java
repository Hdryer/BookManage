package com.yang.service;

import com.yang.dao.Usermapper;
import com.yang.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class Userserviceimpl  implements Userservice{
    @Autowired
    private Usermapper usermapper;

    @Override
    public void adduser(User user) {
        usermapper.adduser(user);
    }

    @Override
    public User selectuser(User user) {
        return usermapper.selectuser(user);
    }

    @Override
    public List<User> queryusers() {
        return usermapper.queryusers();
    }
}
