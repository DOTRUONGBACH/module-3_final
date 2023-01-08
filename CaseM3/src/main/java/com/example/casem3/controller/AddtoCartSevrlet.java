package com.example.casem3.controller;

import com.example.casem3.model.Cart;
import com.example.casem3.model.CartItem;
import com.example.casem3.model.Product;
import com.example.casem3.service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = "/addtocart")
public class AddtoCartSevrlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int quantity = 1;
        int id;
        if (req.getParameter("hatid") != null) {
            id = Integer.parseInt(req.getParameter("hatid"));
            Product product = ProductService.findByHatId(id);
            if (product != null) {
                HttpSession session = req.getSession();
                if (session.getAttribute("cart") == null) {
                    Cart cart = new Cart();
                    List<CartItem> cartItemList = new ArrayList<>();
                    CartItem cartItem = new CartItem();
                    cartItem.setQuantity(quantity);
                    cartItem.setSellPrice(product.getSellPrice());
                    cartItem.setHat(product);
                    cartItemList.add(cartItem);
                    cart.setItems(cartItemList);
                    session.setAttribute("cart", cart);
                } else {
                    Cart cart = (Cart) session.getAttribute("cart");
                    List<CartItem> cartItemList = cart.getItems();
                    boolean Check = false;
                    for (CartItem item : cartItemList
                    ) {
                        if (item.getHat().getHatId() == product.getHatId()) {
                            item.setQuantity(item.getQuantity() + quantity);
                            Check = true;
                        }

                    }
                    if (Check == false) {
                        CartItem item = new CartItem();
                        item.setQuantity(quantity);
                        item.setHat(product);
                        item.setSellPrice(product.getSellPrice());
                        cartItemList.add(item);
                    }
                    session.setAttribute("cart", cart);
                }
            }
            resp.sendRedirect("/item");
        } else {
            resp.sendRedirect("/item");
        }

    }
}
