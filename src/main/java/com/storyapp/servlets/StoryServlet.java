// StoryServlet.java or Index.java
package com.storyapp.servlets;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.*;

public class StoryServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        request.setAttribute("stories", new String[] {
            "I AM PRINCE NOT A HERO",
            "A DAY THAT I CAN NEVER FORGOT",
            "THE SILENCE TO GEAR UP MY LIFE"
        });

        RequestDispatcher dispatcher = request.getRequestDispatcher("/story.jsp");
        dispatcher.forward(request, response);
    }
}
