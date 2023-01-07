package com.example.casem3.controller;

import com.example.casem3.model.Product;
import com.example.casem3.service.ProductService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/infoProduct")

public class InfoProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("hatId"));
        Product products = ProductService.findByHatId(id);
        RequestDispatcher dispatcher = req.getRequestDispatcher("/product/infoProduct.jsp");
        req.setAttribute("products", products);
        dispatcher.forward(req, resp);
    }
}
