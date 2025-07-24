import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Index extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Story App</title>");
        out.println("<style>");
        out.println("  a.story-link { color: black; text-decoration: none; font-weight: bold; }");
        out.println("  a.story-link:hover { color: #444; text-decoration: underline; }");
        out.println("</style>");
        out.println("</head>");
        out.println("<body>");

        out.println("<h1>Welcome to Story App</h1>");

        out.println("<form action='story' method='get'>");
        out.println("<label for='search'>Search Stories:</label>");
        out.println("<input type='text' name='search' id='search'>");
        out.println("<input type='submit' value='Search'>");
        out.println("</form>");

        out.println("<br/>");

        out.println("<ul>");
        out.println("<li><a class='story-link' href='StoryServlet?title=I+AM+PRINCE+NOT+A+HERO'>I AM PRINCE NOT A HERO</a></li>");
        out.println("<li><a class='story-link' href='StoryServlet?title=A+DAY+THAT+I+CAN+NEVER+FORGOT'>A DAY THAT I CAN NEVER FORGOT</a></li>");
        out.println("<li><a class='story-link' href='StoryServlet?title=THE+SILENCE+TO+GEAR+UP+MY+LIFE'>THE SILENCE TO GEAR UP MY LIFE</a></li>");
        out.println("</ul>");

        out.println("<br/>");

        out.println("<form action='story' method='get'>");
        out.println("<input type='hidden' name='exit' value='true'>");
        out.println("<input type='submit' value='Exit'>");
        out.println("</form>");

        out.println("</body>");
        out.println("</html>");
    }
}
