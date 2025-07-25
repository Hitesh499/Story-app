<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Story App</title>
</head>
<body>
    <h1>Welcome to Story App</h1>

    <form method="get" action="search">
        <label>Search Stories:</label>
        <input type="text" name="query"/>
        <input type="submit" value="Search"/>
    </form>

    <ul>
        <%
            String[] stories = (String[]) request.getAttribute("stories");
            if (stories != null) {
                for (String story : stories) {
        %>
                    <li><a href="#"> <%= story %> </a></li>
        <%
                }
            }
        %>
    </ul>

    <form action="exit" method="post">
        <button type="submit">Exit</button>
    </form>
</body>
</html>
