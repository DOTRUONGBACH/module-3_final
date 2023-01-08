package com.example.casem3.controller;

import com.example.casem3.model.Cart;
import com.example.casem3.model.CartItem;
import com.example.casem3.model.Product;
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

@WebServlet(urlPatterns = "/item")
public class CartItemseverlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = req.getRequestDispatcher("/cart.jsp");
        dispatcher.forward(req,resp);
    }
}
