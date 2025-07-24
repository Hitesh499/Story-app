<!DOCTYPE html>
<html>
<head>
    <title>Story App</title>
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
        <li><a href="story?title=I%20AM%20PRINCE%20NOT%20A%20HERO">I AM PRINCE NOT A HERO</a></li>
        <li><a href="story?title=A%20DAY%20THAT%20I%20CAN%20NEVER%FORGOT">A DAY THAT I CAN NEVER FORGOT</a></li>
        <li><a href="story?title=THE%20SILENCE%20TO%20GEAR%20UP%20MY%20LIFE">THE SILENCE TO GEAR UP MY LIFE</a></li>
    </ul>

    <br/>
    <form action="story" method="get">
        <input type="hidden" name="exit" value="true">
        <input type="submit" value="Exit">
    </form>
</body>
</html>
