package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import org.apache.commons.validator.routines.EmailValidator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.text.html.HTML;
import java.io.IOException;

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String passwordConfirmation = request.getParameter("confirm_password");
        HttpSession session = request.getSession();
        EmailValidator emailValidator = EmailValidator.getInstance();


        // validate input
        boolean inputsAreEmpty = username.isEmpty()
            || email.isEmpty()
            || password.isEmpty();

        boolean passDoesNotMatch = (! password.equals(passwordConfirmation));
        boolean emailIsValid = emailValidator.isValid(email);

        if (inputsAreEmpty) {
            session.setAttribute("message", "Inputs cannot be empty");
            response.sendRedirect("/register");
            return;
        }

        if (passDoesNotMatch){
            session.setAttribute("message", "Password did not match");
            response.sendRedirect("/register");
            return;
        }

        if(!emailIsValid){
            session.setAttribute("message", "That is not a valid Email address.");
            response.sendRedirect("/register");
            return;
        }


        if (DaoFactory.getUsersDao().findByUsername(username) != null){
            session.setAttribute("message", "Username is already in use. Please pick another");
            response.sendRedirect("/register");
            return;
        }

        // create and save a new user
        User user = new User(username, email, password);
        DaoFactory.getUsersDao().insert(user);
        response.sendRedirect("/login");
    }
}
