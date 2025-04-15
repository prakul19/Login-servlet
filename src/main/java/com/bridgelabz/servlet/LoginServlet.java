package com.bridgelabz.servlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if ("admin".equals(username) && "1234".equals(password)) {
            // Login successful - redirect to welcome page
            response.sendRedirect("welcome.jsp");
        } else {
            // Login failed - redirect back with error
            response.sendRedirect("index.jsp?error=true");
        }
    }
}
