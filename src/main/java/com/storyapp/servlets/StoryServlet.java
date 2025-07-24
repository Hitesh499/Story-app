package com.storyapp.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// @WebServlet("/story")
public class StoryServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String[] stories = {"The Lion and the Mouse", "The Tortoise and the Hare", "The Fox and the Grapes"};
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        out.println("<html><head><title>Stories</title></head><body>");
        out.println("<h1>Available Stories</h1><ul>");
        for (String story : stories) {
            out.println("<li>" + story + "</li>");
        }
        out.println("</ul><a href='index.jsp'>Back to Home</a>");
        out.println("</body></html>");
    }
}
