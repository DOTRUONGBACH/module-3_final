package com.example.casem3.controller;

import com.example.casem3.model.Account;
import com.example.casem3.model.HatType;
import com.example.casem3.model.Product;
import com.example.casem3.service.AccountService;
import com.example.casem3.service.HatTypeService;
import com.example.casem3.service.ProductService;
import com.mysql.cj.Session;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        Account account = AccountService.checkAccount(username, password);

        if (account == null) {
            // sai thông tin
//            RequestDispatcher dispatcher = req.getRequestDispatcher("/home");
//            dispatcher.forward(req, resp);
            resp.sendRedirect("/home");
        } else {
            if (account.getRole() == 1) {
                // admin
            } else {
                // user
                List<Product> Products = ProductService.Products;
                List<HatType> hatTypes = HatTypeService.hatTypes;
                req.setAttribute("hattypes", hatTypes);
                req.setAttribute("products", Products);
                RequestDispatcher dispatcher = req.getRequestDispatcher("/home.jsp");
                HttpSession session = req.getSession();
                String fullName = account.getFullName();
                session.setAttribute("fullName", fullName);
                dispatcher.forward(req,resp);

            }
        }
    }
}
