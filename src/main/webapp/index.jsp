<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // Story categorization
    Map<String, String> shortStories = new LinkedHashMap<>();
    Map<String, String> longFormStories = new LinkedHashMap<>();
    Map<String, String> episodicStories = new LinkedHashMap<>();

    shortStories.put("I AM PRINCE NOT A HERO", "");
    shortStories.put("THE SILENCE TO GEAR UP MY LIFE", "");

    longFormStories.put("A DAY THAT I CAN NEVER FORGOT", "");
    longFormStories.put("THE SWORD OF FORGOTTEN TRUTHS", "");

    // episodicStories is empty for now
%>

<!DOCTYPE html>
<html>
<head>
    <title>Story App</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #fff;
            text-align: center;
        }

        h1 {
            color: #2c3e50;
            margin-top: 40px;
            font-size: 36px;
        }

        .search-container {
            margin-top: 10px;
            margin-bottom: 10px;
        }

        .search-container input[type="text"] {
            padding: 6px;
            width: 200px;
            font-size: 14px;
        }

        .search-container input[type="submit"] {
            padding: 6px 10px;
            font-size: 14px;
            cursor: pointer;
        }

        .cards {
            display: flex;
            justify-content: center;
            gap: 40px;
            flex-wrap: wrap;
            margin: 30px auto;
            max-width: 1000px;
        }

        .card {
            border-bottom: 2px solid #ccc;
            padding: 20px;
            width: 250px;
            text-align: left;
        }

        .card h2 {
            display: flex;
            align-items: center;
            font-size: 20px;
            margin-bottom: 15px;
        }

        .icon-box {
            width: 15px;
            height: 15px;
            margin-right: 10px;
            border-radius: 3px;
        }

        .blue { background: linear-gradient(to right, #00C9FF, #92FE9D); }
        .green { background: linear-gradient(to right, #A8EB12, #00B712); }
        .orange { background: linear-gradient(to right, #FF512F, #DD2476); }

        ul.story-list {
            list-style-type: none;
            padding: 0;
            margin: 0;
        }

        ul.story-list li {
            margin: 8px 0;
        }

        ul.story-list li a {
            text-decoration: none;
            color: #34495e;
            font-size: 16px;
        }

        ul.story-list li a:hover {
            color: #e74c3c;
        }

        .exit-container {
            margin-top: 60px;
            margin-bottom: 40px;
            display: flex;
            justify-content: center;
        }

        .exit-button {
            background-color: white;
            color: black;
            border: 2px solid black;
            padding: 10px 20px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            border-radius: 8px;
            transition: 0.3s;
        }

        .exit-button:hover {
            background-color: #f0f0f0;
        }
    </style>
</head>
<body>

    <h1>Welcome to the Story App</h1>

    <!-- Search Bar -->
    <div class="search-container">
        <form action="story.jsp" method="get">
            <label for="search">Search Stories:</label>
            <input type="text" id="search" name="title" required>
            <input type="submit" value="Search">
        </form>
    </div>

    <div class="cards">
        <!-- Short Stories -->
        <div class="card">
            <h2>📘 Short Stories</h2>
            <ul class="story-list">
                <% for (String title : shortStories.keySet()) { %>
                    <li><a href="story.jsp?title=<%= java.net.URLEncoder.encode(title, "UTF-8") %>"><%= title %></a></li>
                <% } %>
            </ul>
        </div>

        <!-- Long-form Stories -->
        <div class="card">
            <h2>📗 Long-form Stories</h2>
            <ul class="story-list">
                <% for (String title : longFormStories.keySet()) { %>
                    <li><a href="story.jsp?title=<%= java.net.URLEncoder.encode(title, "UTF-8") %>"><%= title %></a></li>
                <% } %>
            </ul>
        </div>

        <!-- Episodic Stories -->
        <div class="card">
            <h2>📙 Episodic Stories</h2>
            <ul class="story-list">
                <% 
                    if (episodicStories.isEmpty()) { 
                %>
                    <li><em>Coming soon...</em></li>
                <% 
                    } else {
                        for (String title : episodicStories.keySet()) { 
                %>
                    <li><a href="story.jsp?title=<%= java.net.URLEncoder.encode(title, "UTF-8") %>"><%= title %></a></li>
                <% 
                        }
                    } 
                %>
            </ul>
        </div>
    </div>

    <!-- Exit Button Below All Content -->
    <div class="exit-container">
        <form action="story.jsp" method="get">
            <input type="hidden" name="exit" value="true">
            <button type="submit" class="exit-button">Exit</button>
        </form>
    </div>

</body>
</html>
