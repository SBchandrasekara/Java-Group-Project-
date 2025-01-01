package AdminServlet;

import java.io.*;


import jakarta.servlet.RequestDispatcher;

import jakarta.servlet.ServletException;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;




public class AdminServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Display admin form to add movie
        RequestDispatcher dispatcher = request.getRequestDispatcher("admin_add_movie.jsp");
        dispatcher.forward(request, response);
    }
}
