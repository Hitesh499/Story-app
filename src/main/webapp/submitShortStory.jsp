<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String name = request.getParameter("storyName");
    String content = request.getParameter("storyContent");
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
