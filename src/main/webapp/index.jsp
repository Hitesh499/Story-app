<%@ page import="java.io.*, java.util.*" %>
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

<%
    String filePath = application.getRealPath("/") + "stories.txt";
File file = new File(filePath);
if (file.exists()) {
    BufferedReader reader = new BufferedReader(new FileReader(file));
    String line;
    String title = null;
    String category = null;
    StringBuilder content = new StringBuilder();

    while ((line = reader.readLine()) != null) {
        if (line.startsWith("### Title:")) {
            if (title != null && category != null && content.length() > 0) {
                if (category.equalsIgnoreCase("Short Stories")) {
                    shortStories.put(title, content.toString().trim());
                } else if (category.equalsIgnoreCase("Long-form Stories")) {
                    longFormStories.put(title, content.toString().trim());
                } else if (category.equalsIgnoreCase("Episodic Stories")) {
                    episodicStories.put(title, content.toString().trim());
                }
            }
            title = line.substring(10).trim();
            content.setLength(0);
        } else if (line.startsWith("### Category:")) {
            category = line.substring(14).trim();
        } else if (line.equals("---END---")) {
            if (title != null && category != null && content.length() > 0) {
                if (category.equalsIgnoreCase("Short Stories")) {
                    shortStories.put(title, content.toString().trim());
                } else if (category.equalsIgnoreCase("Long-form Stories")) {
                    longFormStories.put(title, content.toString().trim());
                } else if (category.equalsIgnoreCase("Episodic Stories")) {
                    episodicStories.put(title, content.toString().trim());
                }
                title = null;
                category = null;
                content.setLength(0);
            }
        } else {
            content.append("<p>").append(line.trim()).append("</p>\n");
        }
    }

    // Handle unclosed final entry
    if (title != null && category != null && content.length() > 0) {
        if (category.equalsIgnoreCase("Short Stories")) {
            shortStories.put(title, content.toString().trim());
        } else if (category.equalsIgnoreCase("Long-form Stories")) {
            longFormStories.put(title, content.toString().trim());
        } else if (category.equalsIgnoreCase("Episodic Stories")) {
            episodicStories.put(title, content.toString().trim());
        }
    }

    reader.close();
}
%>

<h2 style="margin-top: 40px;">User Submitted Stories</h2>
<div style="margin-top: 20px;">
<%
    for (String[] story : userStories) {
%>
    <div style="border: 1px solid #ccc; padding: 15px; margin-bottom: 20px;">
        <h3><%= story[0] %></h3>
        <p><%= story[1] %></p>
    </div>
<%
    }
%>
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
