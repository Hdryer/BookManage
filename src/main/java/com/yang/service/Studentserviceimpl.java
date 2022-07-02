package com.yang.service;

import com.yang.dao.Studentmapper;
import com.yang.pojo.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class Studentserviceimpl implements Studentservice{
    @Autowired
    private Studentmapper studentmapper;
    @Override
    public List<Student> allstudent() {
        return studentmapper.allstudent();
    }

    @Override
    public Student querystudent(int studentid, String password) {
        return studentmapper.querystudent(studentid,password);
    }

    @Override
    public void addstudent(Student student) {
        studentmapper.addstudent(student);
    }

    @Override
    public void deletestudent(int studentid) {
        studentmapper.deletestudent(studentid);
    }

    @Override
    public void updatestudent(Student student) {
        studentmapper.updatestudent(student);
    }

    @Override
    public void updatepassword(int studentid, String password) {
        studentmapper.updatepassword(studentid,password);
    }
}
