package com.example.casem3.dao;

import com.example.casem3.model.HatType;
import com.example.casem3.model.Product;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class HatTypeDao {
    static Connection connection = ConnectionSql.getConnection();

    public static List<HatType> selectAll() {
        List<HatType> hattypes = new ArrayList<>();
        String sql = "Select * from hattype ";
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                int hatId = resultSet.getInt("idHattype");
                String hatName = resultSet.getString("typeName");
                hattypes.add(new HatType(hatId, hatName));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return hattypes;
    }

    public static HatType selectByIdHatType(int id) {
        String sql = "Select * from hattype where idHattype = " + id;
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            resultSet.next();

            int idHattype = resultSet.getInt("idHattype");
            String typeName = resultSet.getString("typeName");

            return new HatType(idHattype, typeName);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
