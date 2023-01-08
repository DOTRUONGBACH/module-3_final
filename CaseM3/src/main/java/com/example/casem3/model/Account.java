package com.example.casem3.model;

import java.time.LocalDate;

public class Account {
    private int customerId;
    private String username;
    private String password;
    private String fullName;
    private int age;
    private String phone;
    private int role;

    public Account() {
    }

    public Account(int customerId, String username, String password, String fullName, int age, String phone, int role) {
        this.customerId = customerId;
        this.username = username;
        this.password = password;
        this.fullName = fullName;
        this.age = age;
        this.phone = phone;
        this.role = role;
    }

    public Account(String username, String password, String fullName, int age, String phone, int role) {
        this.username = username;
        this.password = password;
        this.fullName = fullName;
        this.age = age;
        this.phone = phone;
        this.role = role;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }
}