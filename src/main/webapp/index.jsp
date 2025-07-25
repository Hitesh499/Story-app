<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Story App</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .header {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 150px;
            width: 100%;
        }

        h1.center-heading {
            font-size: 36px;
            color: #333;
            margin: 0;
        }

        .search-section {
            margin-bottom: 20px;
        }

        .story-list {
            list-style-type: none;
            padding-left: 0;
            margin: 0 auto;
            width: 60%;
        }

        .story-item {
            margin-bottom: 15px;
            font-size: 18px;
        }

        a.story-link {
            text-decoration: none;
            font-weight: bold;
            color: black;
        }

        a.story-link:hover {
            color: orange;
        }

        form {
            margin-top: 30px;
        }

        input[type="text"] {
            padding: 6px;
            width: 200px;
        }

        input[type="submit"] {
            padding: 6px 12px;
            margin-left: 10px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="header">
        <h1 class="center-heading">Welcome to the Story App</h1>
    </div>

    <div class="search-section">
        <form action="story.jsp" method="get">
            <label for="search">Search Stories:</label>
            <input type="text" name="title" id="search">
            <input type="submit" value="Search">
        </form>
    </div>

    <ul class="story-list">
        <li class="story-item">
            <a class="story-link" href="story.jsp?title=I%20AM%20PRINCE%20NOT%20A%20HERO">1. I AM PRINCE NOT A HERO</a>
        </li>
        <li class="story-item">
            <a class="story-link" href="story.jsp?title=A%20DAY%20THAT%20I%20CAN%20NEVER%20FORGOT">2. A DAY THAT I CAN NEVER FORGOT</a>
        </li>
        <li class="story-item">
            <a class="story-link" href="story.jsp?title=THE%20SILENCE%20TO%20GEAR%20UP%20MY%20LIFE">3. THE SILENCE TO GEAR UP MY LIFE</a>
        </li>
    </ul>

    <form action="story.jsp" method="get">
        <input type="hidden" name="exit" value="true">
        <input type="submit" value="Exit">
    </form>
</body>
</html>
