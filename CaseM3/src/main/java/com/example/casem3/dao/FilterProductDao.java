package com.example.casem3.dao;

import com.example.casem3.model.Product;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class FilterProductDao {
    static Connection connection = ConnectionSql.getConnection();

    public static List<Product> selectByIdHatType(int idHatType, int idCate) {
        List<Product> Products = new ArrayList<>();
        String sql = "Select * from product where (idHattype = " + idHatType + ") and (idCatagory = " + idCate + " );";
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                int hatId = resultSet.getInt("hatId");
                String hatName = resultSet.getString("hatName");
                String imgMain = resultSet.getString("imgMain");
                String imgSub1 = resultSet.getString("imgSub1");
                String imgSub2 = resultSet.getString("imgSub2");
                double sellPrice = resultSet.getDouble("sellPrice");
                int quantity = resultSet.getInt("quantity");
                String detail = resultSet.getString("detail");
                int idHattype = resultSet.getInt("idHattype");
                int idCatagory = resultSet.getInt("idCatagory");

                Products.add(new Product(hatId, hatName, imgMain, imgSub1, imgSub2,
                        sellPrice, quantity,detail,idHattype,idCatagory));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return Products;
    }
}
