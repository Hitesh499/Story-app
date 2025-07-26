<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // Story categorization
    Map<String, String> shortStories = new LinkedHashMap<>();
    Map<String, String> longFormStories = new LinkedHashMap<>();
    Map<String, String> episodicStories = new LinkedHashMap<>();

    shortStories.put("THE SILENCE TO GEAR UP MY LIFE", "");
    shortStories.put("I AM PRINCE NOT A HERO", "");

    longFormStories.put("A DAY THAT I CAN NEVER FORGOT", "");

    episodicStories.put("THE SWORD OF FORGOTTEN TRUTHS", "");
%>

<!DOCTYPE html>
<html>
<head>
    <title>Story App</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
            background-color: #fefefe;
            color: #333;
        }

        h1 {
            text-align: center;
            color: #2c3e50;
        }

        .section {
            margin-top: 50px;
        }

        .section h2 {
            color: #2980b9;
            border-bottom: 2px solid #ccc;
            padding-bottom: 5px;
        }

        ul.story-list {
            list-style-type: none;
            padding-left: 0;
        }

        ul.story-list li {
            margin: 10px 0;
        }

        ul.story-list li a {
            text-decoration: none;
            color: #34495e;
            font-size: 18px;
        }

        ul.story-list li a:hover {
            color: #e74c3c;
        }
    </style>
</head>
<body>

<h1>Welcome to the Story App</h1>

<div class="section">
    <h2>📘 Short Stories</h2>
    <ul class="story-list">
        <% for (String title : shortStories.keySet()) { %>
            <li><a href="story.jsp?title=<%= java.net.URLEncoder.encode(title, "UTF-8") %>"><%= title %></a></li>
        <% } %>
    </ul>
</div>

<div class="section">
    <h2>📗 Long-form Stories</h2>
    <ul class="story-list">
        <% for (String title : longFormStories.keySet()) { %>
            <li><a href="story.jsp?title=<%= java.net.URLEncoder.encode(title, "UTF-8") %>"><%= title %></a></li>
        <% } %>
    </ul>
</div>

<div class="section">
    <h2>📙 Episodic Stories</h2>
    <ul class="story-list">
        <% for (String title : episodicStories.keySet()) { %>
            <li><a href="story.jsp?title=<%= java.net.URLEncoder.encode(title, "UTF-8") %>"><%= title %></a></li>
        <% } %>
    </ul>
</div>

</body>
</html>
