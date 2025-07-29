<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create Long-form Story</title>
</head>
<body style="font-family: Arial, sans-serif; padding: 50px; text-align: center;">

    <h2>Create a Long-form Story</h2>

    <form action="submitShortStory.jsp" method="post">
        <div style="margin-bottom: 20px;">
            <label><strong>Enter Your Story Name:</strong></label><br>
            <input type="text" name="storyName" style="width: 60%; padding: 10px;" required>
        </div>

        <div style="margin-bottom: 20px;">
            <label><strong>Enter Your Story:</strong></label><br>
            <textarea name="storyContent" rows="12" style="width: 60%; padding: 10px;" required></textarea>
        </div>

        <button type="submit" style="padding: 10px 20px;">Submit Story</button>
    </form>

</body>
</html>
