<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ page import="java.io.*, java.util.*" %>
<%
    String name = request.getParameter("storyName");
    String content = request.getParameter("storyContent");

    // Format content to ensure paragraph breaks (convert \r\n to double newlines)
    content = content.replaceAll("(\r\n|\r|\n)", "\n\n");

    // Set category (you can change this logic later to let user select)
    String category = "Short Stories";

    // Save formatted story to file
    String filePath = application.getRealPath("/") + "stories.txt";
    try (BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(filePath, true), "UTF-8"))) {
        writer.write("### Title: " + name + "\n");
        writer.write("### Category: " + category + "\n\n");
        writer.write(content.trim() + "\n");
        writer.write("---END---\n\n");
    } catch (IOException e) {
        e.printStackTrace();
    }
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Story Submitted</title></head>
<body style="text-align:center; padding-top:50px;">
    <h2>Thanks for Sharing!</h2>
    <h3><%= name %></h3>
    <p><pre style="white-space: pre-wrap;"><%= content %></pre></p>
    <a href="index.jsp"><button>Go to Homepage</button></a>
</body>
</html>
