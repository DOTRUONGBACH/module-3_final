package com.example.casem3.service;

import com.example.casem3.dao.FilterProductDao;
import com.example.casem3.model.Product;

import java.util.List;

public class FilterProductService {
    public static List<Product> findByIdHatTypeIdCate(int idHatType, int idCate) {
        return FilterProductDao.selectByIdHatType(idHatType, idCate);
    }
}
