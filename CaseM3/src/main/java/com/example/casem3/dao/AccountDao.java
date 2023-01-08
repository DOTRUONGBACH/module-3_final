package com.example.casem3.dao;

import com.example.casem3.model.Account;
import com.example.casem3.model.Product;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AccountDao {
    static Connection connection = ConnectionSql.getConnection();

    public static Account checkAccount(String username, String password) {
        String sql = "select * from account\n" +
                "where username =" + "\"" + username + "\" and password = \""+ password + "\"";
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            resultSet.next();

            int idAccount = resultSet.getInt("idAccount");
            String user = resultSet.getString("username");
            String pass = resultSet.getString("password");
            String name = resultSet.getString("fullName");
            int age = resultSet.getInt("age");
            String phone = resultSet.getString("phone");
            int role = resultSet.getInt("role");

            return new Account(idAccount, user, pass, name, age, phone, role);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static Account checkLogin(String username, String password) {
        String sql = "select * from account where username =? and password =?";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);
            ResultSet resultSet = preparedStatement.executeQuery();
            resultSet.next();
            int idAccount = resultSet.getInt("idAccount");
            String user = resultSet.getString("username");
            String pass = resultSet.getString("password");
            String name = resultSet.getString("fullName");
            int age = resultSet.getInt("age");
            String phone = resultSet.getString("phone");
            int role = resultSet.getInt("role");

            return new Account(idAccount, user, pass, name, age, phone, role);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static boolean insert(Account account){
        String insertSql = "INSERT INTO `casemd3`.`account` (`username`, `password`, `fullName`, `age`, `phone`, `role`) VALUES (?,?,?,?,?,?);";
        try{
            PreparedStatement preparedStatement = connection.prepareStatement(insertSql);
            preparedStatement.setString(1, account.getUsername());
            preparedStatement.setString(2, account.getPassword());
            preparedStatement.setString(3, account.getFullName());
            preparedStatement.setInt(4, account.getAge());
            preparedStatement.setString(5, account.getPhone());
            preparedStatement.setInt(6, account.getRole());
            return preparedStatement.execute();

        }catch (Exception e){
            e.printStackTrace();
        }return false;
    }

}
