package com.yang.pojo;

public class User {
    private String admin;
    private String password;
    private String identity;

    public User(String admin, String password, String identity) {
        this.admin = admin;
        this.password = password;
        this.identity = identity;
    }

    public String getAdmin() {
        return admin;
    }

    public void setAdmin(String admin) {
        this.admin = admin;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getIdentity() {
        return identity;
    }

    public void setIdentity(String identity) {
        this.identity = identity;
    }

    @Override
    public String toString() {
        return "User_admin{" +
                "admin='" + admin + '\'' +
                ", password='" + password + '\'' +
                ", identity='" + identity + '\'' +
                '}';
    }
}
