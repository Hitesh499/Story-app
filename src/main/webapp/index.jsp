<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Story App</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        .story-list {
            list-style-type: none; /* Removes bullets */
            padding-left: 0;
        }

        .story-item {
            margin-bottom: 10px;
        }

        a.story-link {
            text-decoration: none;
            font-weight: bold;
            color: black;
        }

        a.story-link:hover {
            color: orange;
        }

        h1 {
            margin-bottom: 20px;
        }

        .search-section {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <h1>Welcome to Story App</h1>

    <div class="search-section">
        <form action="story.jsp" method="get">
            <label for="search">Search Stories:</label>
            <input type="text" name="title" id="search">
            <input type="submit" value="Search">
        </form>
    </div>

    <ul class="story-list">
        <li class="story-item">
            <a class="story-link" href="story.jsp?title=I%20AM%20PRINCE%20NOT%20A%20HERO">#1 I AM PRINCE NOT A HERO</a>
        </li>
        <li class="story-item">
            <a class="story-link" href="story.jsp?title=A%20DAY%20THAT%20I%20CAN%20NEVER%20FORGOT">#2 A DAY THAT I CAN NEVER FORGOT</a>
        </li>
        <li class="story-item">
            <a class="story-link" href="story.jsp?title=THE%20SILENCE%20TO%20GEAR%20UP%20MY%20LIFE">#3 THE SILENCE TO GEAR UP MY LIFE</a>
        </li>
    </ul>

    <br/>

    <form action="story.jsp" method="get">
        <input type="hidden" name="exit" value="true">
        <input type="submit" value="Exit">
    </form>
</body>
</html>
