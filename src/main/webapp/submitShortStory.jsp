<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*, java.util.*" %>
<%
    String name = request.getParameter("storyName");
    String content = request.getParameter("storyContent");

    // Save story to a text file
    String filePath = application.getRealPath("/") + "stories.txt";
    try (BufferedWriter writer = new BufferedWriter(new FileWriter(filePath, true))) {
        writer.write("### " + name + "\n");
        writer.write(content + "\n\n");
    } catch (IOException e) {
        e.printStackTrace();
    }
%>
<html>
<head><title>Story Submitted</title></head>
<body style="text-align:center; padding-top:50px;">
    <h2>Thanks for Sharing!</h2>
    <h3><%= name %></h3>
    <p><%= content %></p>
    <a href="index.jsp"><button>Go to Homepage</button></a>
</body>
</html>
