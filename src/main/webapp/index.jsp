<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Story App</title>
    <style>
        .story-title {
            color: black;
            font-weight: bold;
            margin-bottom: 5px;
        }
    </style>
</head>
<body>
    <h1>Welcome to Story App</h1>

    <form action="story" method="get">
        <label for="search">Search Stories:</label>
        <input type="text" name="search" id="search">
        <input type="submit" value="Search">
    </form>

    <br/>

    <ul>
        <li class="story-title">I AM PRINCE NOT A HERO</li>
        <li class="story-title">A DAY THAT I CAN NEVER FORGOT</li>
        <li class="story-title">THE SILENCE TO GEAR UP MY LIFE</li>
    </ul>

    <br/>

    <form action="story" method="get">
        <input type="hidden" name="exit" value="true">
        <input type="submit" value="Exit">
    </form>
</body>
</html>
