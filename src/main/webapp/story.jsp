<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String title = request.getParameter("title");

    Map<String, String> stories = new LinkedHashMap<>();
    stories.put("I AM PRINCE NOT A HERO", 
    "I was born in the palace, with golden robes and jeweled crowns awaiting my name. From the very first day, everyone told me I was destined to be a hero—the savior, the leader, the perfect son of a perfect king.\n\nBut I never wanted to be a hero. I saw how the people outside the palace gates lived, struggled, and smiled in simplicity. I envied their freedom.\n\nSo I walked away. I took off the crown, shed the title, and disguised myself as one among the people. I worked in the fields, ate at the street stalls, and listened to stories from grandmothers who had nothing but memories.\n\nIn that life, I found myself. I helped a child get an education, I stood by a friend in grief, and I fought not with swords but with compassion. \n\nWhen the kingdom fell into despair, I returned—not as a prince on a white horse, but as a man who had lived the life of his people.\n\nThey called me a hero then. But I told them—I’m no hero. I’m just someone who finally chose to be human.\n\nI am a prince, not a hero. And that is enough.");

    stories.put("A DAY THAT I CAN NEVER FORGOT", 
    "It was a rainy day that changed everything in my life. A simple decision I made led to a beautiful turning point.");

    stories.put("THE SILENCE TO GEAR UP MY LIFE", 
    "Sometimes silence is the loudest teacher. In those moments of stillness, I found purpose, direction, and strength.");

    String content = stories.get(title);
%>
<!DOCTYPE html>
<html>
<head>
    <title><%= title != null ? title : "Story Viewer" %></title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
            background-color: #fdfdfd;
            color: #333;
        }

        h1 {
            color: #2c3e50;
            font-size: 28px;
        }

        pre {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            font-size: 16px;
            line-height: 1.8;
            white-space: pre-wrap;
        }

        a.back-link {
            display: inline-block;
            margin-top: 30px;
            text-decoration: none;
            color: #2980b9;
            font-size: 16px;
        }

        a.back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<%
    if (title == null || content == null) {
%>
    <h1>Thank you for spending your valuable time — reading our stories</h1>
    <p>You can close the tab.</p>
<%
    } else {
%>
    <h1><%= title %></h1>
    <pre><%= content %></pre>
<%
    }
%>

<a class="back-link" href="index.jsp">← Back to Home</a>
</body>
</html>
