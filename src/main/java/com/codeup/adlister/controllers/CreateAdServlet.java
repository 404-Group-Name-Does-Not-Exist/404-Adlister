package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;

@WebServlet(name = "controllers.CreateAdServlet", urlPatterns = "/ads/create")
public class CreateAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/ads/create.jsp")
                .forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        User user = (User) request.getSession().getAttribute("user");
        ArrayList cats = new ArrayList();
        Ad ad = new Ad(
                user.getId(),
                request.getParameter("title"),
                request.getParameter("description")
        );
        Long ad_id = DaoFactory.getAdsDao().insert(ad);
        response.sendRedirect("/ads");

        if (request.getParameter("category[0]") != null) {
            DaoFactory.getAdsDao().insertCat(Long.parseLong(request.getParameter("category[0]")), ad_id);
        }
        if (request.getParameter("category[1]") != null) {
            DaoFactory.getAdsDao().insertCat(Long.parseLong(request.getParameter("category[1]")), ad_id);
        }
        if (request.getParameter("category[2]") != null) {
            DaoFactory.getAdsDao().insertCat(Long.parseLong(request.getParameter("category[2]")), ad_id);
        }
        if (request.getParameter("category[3]") != null) {
            DaoFactory.getAdsDao().insertCat(Long.parseLong(request.getParameter("category[3]")), ad_id);
            System.out.println(cats);
        }

    }
}
