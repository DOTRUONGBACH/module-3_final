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
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/home")
public class ProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Product> Products = ProductService.Products;
        List<HatType> hatTypes = HatTypeService.hatTypes;
//        HttpSession session = req.getSession();
//        session.getAttribute("fullName");
        req.setAttribute("hatTypes", hatTypes);
        req.setAttribute("products", Products);
        RequestDispatcher dispatcher = req.getRequestDispatcher("/home.jsp");
        dispatcher.forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String hatName = req.getParameter("hatname");
         String imgMain = req.getParameter("imgMain");
        String imgSub1 = req.getParameter("imgsub1");
        String imgSub2 = req.getParameter("imgsub2");
        double sellPrice = Double.parseDouble(req.getParameter("sellprice"));
        int quantity = Integer.parseInt(req.getParameter("quantity"));
        String detail = req.getParameter("detail");
        Product product = new Product(hatName, imgMain, imgSub1, imgSub2, sellPrice, quantity,detail);
        ProductService.insert(product);
        resp.sendRedirect("/home");
    }
}
