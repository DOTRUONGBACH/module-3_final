package com.example.casem3.controller;

import com.example.casem3.model.Cart;
import com.example.casem3.model.CartItem;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/deleteitem")
public class DeleteItem extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();

        Cart cart = (Cart) session.getAttribute("cart");
        String name = req.getParameter("name");

        for (int i = 0; i < cart.getItems().size(); i++) {
            if (name.equals(cart.getItems().get(i).getHat().getHatName())) {
                cart.getItems().remove(i);
                break;
            }
        }
        double total = 0;
        for (int i = 0; i < cart.getItems().size(); i++) {
            total += cart.getItems().get(i).getTotalCost();
        }
        session.setAttribute("total",total);
        session.setAttribute("cart", cart);
        resp.sendRedirect("/item");


    }

}


