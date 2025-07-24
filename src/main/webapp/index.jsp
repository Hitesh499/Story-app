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
        <li><a href="story?title=The%20Lion%20and%20the%20Mouse">The Lion and the Mouse</a></li>
        <li><a href="story?title=The%20Fox%20and%20the%20Grapes">The Fox and the Grapes</a></li>
        <li><a href="story?title=The%20Tortoise%20and%20the%20Hare">The Tortoise and the Hare</a></li>
    </ul>

    <br/>
    <form action="story" method="get">
        <input type="hidden" name="exit" value="true">
        <input type="submit" value="Exit">
    </form>
</body>
</html>
