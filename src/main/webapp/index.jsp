<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // Story categorization
    Map<String, String> shortStories = new LinkedHashMap<>();
    Map<String, String> longFormStories = new LinkedHashMap<>();
    Map<String, String> episodicStories = new LinkedHashMap<>();

    shortStories.put("👑 I AM PRINCE NOT A HERO", "");
    shortStories.put("🧘 THE SILENCE TO GEAR UP MY LIFE", "");

    longFormStories.put("🌑 A DAY THAT I CAN NEVER FORGOT", "");
    longFormStories.put("⚔️ THE SWORD OF FORGOTTEN TRUTHS", "");

    episodicStories.put("🕯️ WHISPERS IN THE WELL", "");
    episodicStories.put("💌 THE LAST LETTER FROM GRANDMA", "");
    episodicStories.put("💻 THE LAST WILL AND WI-FI PASSWORD", "");
%>

<!DOCTYPE html>
<html>
<head>
    <title>Story App</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>

<!-- Header Buttons -->
<div class="header-wrapper">
    <div class="top-right-buttons">
        <a href="publish.jsp"><button>Become Author</button></a>
        <a href="about.jsp"><button>About Us</button></a>
    </div>

    <h1 class="center-heading">Welcome to Story App</h1>
</div>

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
            <% for (String title : episodicStories.keySet()) { %>
                <li><a href="story.jsp?title=<%= java.net.URLEncoder.encode(title, "UTF-8") %>"><%= title %></a></li>
            <% } %>
        </ul>
    </div>
</div>

<!-- Exit Button -->
<div class="exit-container">
    <form action="story.jsp" method="get">
        <input type="hidden" name="exit" value="true">
        <button type="submit" class="exit-button">Exit</button>
    </form>
</div>

</body>
</html>
