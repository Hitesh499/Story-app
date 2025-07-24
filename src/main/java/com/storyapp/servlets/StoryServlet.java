package com.storyapp.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/StoryServlet")
public class StoryServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String storyContent = "";

        if (title != null) {
            switch (title) {
                case "The Lion and the Mouse":
                    storyContent = "Once upon a time, a lion was sleeping when a mouse ran over his face and woke him up...";
                    break;
                case "The Tortoise and the Hare":
                    storyContent = "A hare was making fun of a tortoise for being so slow. So they had a race...";
                    break;
                case "The Fox and the Grapes":
                    storyContent = "A hungry fox saw some grapes hanging from a vine. He tried and tried but couldn’t reach them...";
                    break;
                default:
                    storyContent = "Story not found.";
            }

            request.setAttribute("title", title);
            request.setAttribute("content", storyContent);
            request.getRequestDispatcher("story.jsp").forward(request, response);
        } else {
            response.setContentType("text/html");
            response.getWriter().println("<html><body><h3>No story selected.</h3></body></html>");
        }
    }
}
