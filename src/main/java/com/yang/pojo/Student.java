package com.yang.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Student {
    private int studentid;
    private String password;
    private String username;
    private String sex;
    private int age;
    private String address;
    private String identity;
}
