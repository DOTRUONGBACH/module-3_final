package com.example.casem3.controller;

import com.example.casem3.model.HatType;
import com.example.casem3.model.Product;
import com.example.casem3.service.HatTypeService;
import com.example.casem3.service.ProductService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/search")
public class SearchServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String search = req.getParameter("search");
        List<HatType> hatTypes = HatTypeService.hatTypes;
        req.setAttribute("hatTypes", hatTypes);
        List<Product> Products = ProductService.search(search);
        req.setAttribute("products", Products);
        RequestDispatcher dispatcher = req.getRequestDispatcher("/home.jsp");
        dispatcher.forward(req,resp);
    }
}
