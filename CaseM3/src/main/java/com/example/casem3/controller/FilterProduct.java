package com.example.casem3.controller;

import com.example.casem3.model.HatType;
import com.example.casem3.model.Product;
import com.example.casem3.service.FilterProductService;
import com.example.casem3.service.HatTypeService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/filterProduct")

public class FilterProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int idHatType = Integer.parseInt(req.getParameter("idHatType"));
        int idCate = Integer.parseInt(req.getParameter("idCate"));
//        String fullName = req.getParameter("fullName");
        List<HatType> hatTypes = HatTypeService.hatTypes;
        List<Product> products = FilterProductService.findByIdHatTypeIdCate(idHatType, idCate);
        HatType hatType = HatTypeService.findByIdHatType(idHatType);
        req.setAttribute("hatTypes", hatTypes);
        req.setAttribute("products", products);
        req.setAttribute("hatType", hatType);
        RequestDispatcher dispatcher = req.getRequestDispatcher("/product/filterProduct.jsp");
        dispatcher.forward(req, resp);
    }
}
