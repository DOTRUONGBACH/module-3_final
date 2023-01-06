package com.example.casem3.dao;

import com.example.casem3.model.Product;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductDao {
    static Connection connection = ConnectionSql.getConnection();

    public static List<Product> selectAll() {
        List<Product> products = new ArrayList<>();
        String sql = "Select * from classroom ";
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                int hatId = resultSet.getInt("hatid");
                String hatName = resultSet.getString("hatname");
                String imgMain = resultSet.getString("imgmain");
                String imgSub1 = resultSet.getString("imgsub1");
                String imgSub2 = resultSet.getString("imgsub2");
                double sellPrice = resultSet.getDouble("sellprice");
                int quantity = resultSet.getInt("quantity");
                String detail = resultSet.getString("detail");
                int idHattype = resultSet.getInt("idhattype");
                int idCatagory = resultSet.getInt("idcatagory");

                products.add(new Product(hatId, hatName, imgMain, imgSub1, imgSub2,
                        sellPrice, quantity,detail,idHattype,idCatagory));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return products;
    }

    public static boolean insert(Product product) {
        String sql = "INSERT INTO `#`.`#` (`hatName`, `imgMain`, `imgSub1`, `imgSub2`, \n" +
                "                        `sellPrice`, `quantity`,`detail`,`idHattype`,`idCatagory`) VALUES (?,?,?,?,?,?,?,?,?);";
        try {
            PreparedStatement prepareStatement = connection.prepareStatement(sql);
            prepareStatement.setString(1,product.getHatName());
            prepareStatement.setString(2,product.getImgMain());
            prepareStatement.setString(3, product.getImgSub1());
            prepareStatement.setString(4, product.getImgSub2());
            prepareStatement.setDouble(5, product.getSellPrice());
            prepareStatement.setInt(6, product.getQuantity());
            prepareStatement.setString(7, product.getDetail());
            prepareStatement.setInt(8, product.getIdHattype());
            prepareStatement.setInt(9, product.getIdCatagory());
            return prepareStatement.execute();

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean update(Product product) {
        String sql = "UPDATE `#`.`#` SET `hatname` = ?, `imgmain` = ?, `imgsub1` = ?, `imgsub2` = ?, `sellprice` = ?, `quantity` = ?,`detail`=? " +
                "WHERE (`id` = ?);";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,product.getHatName());
            preparedStatement.setString(2,product.getImgMain());
            preparedStatement.setString(3, product.getImgSub1());
            preparedStatement.setString(4, product.getImgSub2());
            preparedStatement.setDouble(5, product.getSellPrice());
            preparedStatement.setInt(6, product.getQuantity());
            preparedStatement.setString(7, product.getDetail());
            return preparedStatement.execute();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static void delete(int id) {
        String delete = "Delete from # where id = ? ";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(delete);
            preparedStatement.setInt(1, id);
            preparedStatement.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static List<Product> search(String searchname) {
        String search = "select * from # where name like '%"+searchname+"%';";
        List<Product> products = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(search);

            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int hatId = resultSet.getInt("hatid");
                String hatName = resultSet.getString("hatname");
                String imgMain = resultSet.getString("imgmain");
                String imgSub1 = resultSet.getString("imgsub1");
                String imgSub2 = resultSet.getString("imgsub2");
                Double sellPrice = resultSet.getDouble("sellprice");
                int quantity = resultSet.getInt("quantity");
                String detail = resultSet.getString("detail");
                int idHattype = resultSet.getInt("idhattype");
                int idCatagory = resultSet.getInt("idcatagory");

                products.add(new Product(hatId, hatName, imgMain, imgSub1, imgSub2,
                        sellPrice, quantity,detail,idHattype,idCatagory));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return products;
    }
}
