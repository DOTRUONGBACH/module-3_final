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

@WebServlet(urlPatterns = "/update")
public class UpdateServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.sendRedirect("/update.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int hatid = Integer.parseInt(req.getParameter("hatid"));
        String hatName = req.getParameter("hatname");
        String imgMain = req.getParameter("imgMain");
        String imgSub1 = req.getParameter("imgsub1");
        String imgSub2 = req.getParameter("imgsub2");
        double sellPrice = Double.parseDouble(req.getParameter("sellprice"));
        int quantity = Integer.parseInt(req.getParameter("quantity"));
        String detail = req.getParameter("detail");
        Product product = new Product( hatid,hatName, imgMain, imgSub1, imgSub2, sellPrice, quantity,detail);
        ProductService.update(product);
        List<Product> Products = ProductService.Products;
        req.setAttribute("products", Products);
        RequestDispatcher dispatcher = req.getRequestDispatcher("/admin.jsp");
        dispatcher.forward(req,resp);
    }
}
