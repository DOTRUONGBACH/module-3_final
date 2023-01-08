package com.example.casem3.filter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
@WebFilter(urlPatterns ={"/admin.jsp","/cart.jsp","/product/infoProduct.jsp"} )
public class CheckLoginfilter extends HttpFilter {
        protected void doFilter(HttpServletRequest req, HttpServletResponse res, FilterChain chain) throws IOException, ServletException, IOException, ServletException {
            HttpSession session = req.getSession();
            String user = (String) session.getAttribute("username");
            if(user == null){
                res.sendRedirect("/home");
            }
            else {
                chain.doFilter(req,res);
            }
        }
    }
