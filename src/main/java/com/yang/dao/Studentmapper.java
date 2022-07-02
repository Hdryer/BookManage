package com.yang.dao;

import com.yang.pojo.Student;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface Studentmapper {
    public List<Student> allstudent();
    public Student querystudent(@Param("studentid") int studentid, @Param("password") String password);
    public void addstudent(Student student);
    public void deletestudent(int studentid);
    public void updatestudent(Student student);
    public void updatepassword(@Param("studentid") int studentid, @Param("password") String password);
}
