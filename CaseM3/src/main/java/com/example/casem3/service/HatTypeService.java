package com.example.casem3.service;

import com.example.casem3.dao.HatTypeDao;
import com.example.casem3.model.HatType;

import java.util.List;

public class HatTypeService {

    public static List<HatType> hatTypes = HatTypeDao.selectAll();

    public static HatType findByIdHatType(int id) {
        return HatTypeDao.selectByIdHatType(id);
    }
}
