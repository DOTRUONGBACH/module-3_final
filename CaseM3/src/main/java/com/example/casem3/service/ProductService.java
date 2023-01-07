package com.example.casem3.service;

import com.example.casem3.dao.ProductDao;
import com.example.casem3.model.Product;

import java.util.List;

public class ProductService {
    public static List<Product> Products = ProductDao.selectAll();

    public static Product findByHatId(int id) {
        return ProductDao.selectByHatId(id);
    }
    public static void insert(Product product){
        ProductDao.insert(product);
        Products = ProductDao.selectAll();
    }
    public static void update(Product product){
        ProductDao.update(product);
        Products = ProductDao.selectAll();
    }
    public static void delete(int id){
        ProductDao.delete(id);
        Products = ProductDao.selectAll();
    }
    public static List<Product> search(String name){

        return ProductDao.search(name);

    }
}
