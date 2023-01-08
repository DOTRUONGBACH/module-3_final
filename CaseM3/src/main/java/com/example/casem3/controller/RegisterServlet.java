package com.example.casem3.controller;

import com.example.casem3.model.Account;
import com.example.casem3.service.AccountService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/register")

public class RegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String fullName = req.getParameter("fullName");
        int age = Integer.parseInt(req.getParameter("age"));
        String phone = req.getParameter("phone");
        int role = 2;
        Account account = new Account(username, password, fullName, age, phone, role);
        AccountService.add(account);
        req.setAttribute("note2", "Đăng ký thành công!");
//        RequestDispatcher dispatcher = req.getRequestDispatcher("/home");
//        dispatcher.forward(req,resp);
        resp.sendRedirect("/home");
    }
}
