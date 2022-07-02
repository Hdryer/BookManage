package com.yang.service;

import com.yang.pojo.Student;

import java.util.List;

public interface Studentservice {
    public List<Student> allstudent();
    public Student querystudent(int studentid,String password);
    public void addstudent(Student student);
    public void deletestudent(int studentid);
    public void updatestudent(Student student);
    public void updatepassword(int studentid, String password);
}
