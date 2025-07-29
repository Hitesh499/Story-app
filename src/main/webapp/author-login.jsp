<%@ page import="java.io.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String correctPassword = "*S96pa4s"; // You can change this to your own password
    String submittedPassword = request.getParameter("password");
    String error = "";

    if (submittedPassword != null) {
        if (submittedPassword.equals(correctPassword)) {
            response.sendRedirect("publish.jsp");
            return;
        } else {
            error = "❌ Incorrect password. Please try again.";
        }
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Author Login</title>
    <style>
        body {
            font-family: Arial;
            text-align: center;
            margin-top: 80px;
        }
        input[type="password"] {
            padding: 8px;
            font-size: 14px;
            width: 200px;
        }
        input[type="submit"] {
            padding: 8px 16px;
            font-size: 14px;
            margin-top: 10px;
            cursor: pointer;
        }
        .error {
            color: red;
            margin-top: 10px;
        }
    </style>
</head>
<body>

    <h2>Please Enter the Password</h2>
    <form method="post">
        <input type="password" name="password" placeholder="Enter password" required />
        <br>
        <input type="submit" value="Submit" />
    </form>

    <% if (!error.isEmpty()) { %>
        <div class="error"><%= error %></div>
    <% } %>

</body>
</html>
