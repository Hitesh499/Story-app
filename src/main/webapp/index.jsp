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
            text-align: center;
        }

        h1 {
            color: #0A2F63;
            margin-top: 40px;
        }

        .search-bar {
            margin-top: 10px;
            margin-bottom: 30px;
        }

        .story-sections {
            display: flex;
            justify-content: center;
            gap: 40px;
            margin-top: 20px;
        }

        .section {
            border-bottom: 2px solid #ddd;
            padding: 10px;
            width: 250px;
            text-align: left;
        }

        .section-title {
            text-align: center;
            font-weight: bold;
            font-size: 18px;
            margin-bottom: 10px;
        }

        .short-story-icon {
            width: 16px;
            height: 16px;
            background: linear-gradient(to right, #00C9FF, #92FE9D);
            display: inline-block;
            margin-right: 8px;
        }

        .long-form-icon {
            width: 16px;
            height: 16px;
            background: linear-gradient(to right, #A8EB12, #00B712);
            display: inline-block;
            margin-right: 8px;
        }

        .episodic-icon {
            width: 16px;
            height: 16px;
            background: linear-gradient(to right, #FF512F, #DD2476);
            display: inline-block;
            margin-right: 8px;
        }

        .story-list {
            padding-left: 20px;
        }

        .story-list li {
            margin-bottom: 6px;
        }

        a {
            text-decoration: none;
            font-weight: normal;
            color: #0A2F63;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h1>Welcome to the Story App</h1>

    <div class="search-bar">
        <label for="search">Search Stories:</label>
        <input type="text" id="search" name="search">
        <button type="submit">Search</button>
    </div>

    <div class="story-sections">
        <!-- Short Stories -->
        <div class="section">
            <div class="section-title">
                <span class="short-story-icon"></span>
                Short Stories
            </div>
            <ul class="story-list">
                <li><a href="#">I AM PRINCE NOT A HERO</a></li>
                <li><a href="#">THE SILENCE TO GEAR UP MY LIFE</a></li>
            </ul>
        </div>

        <!-- Long-form Stories -->
        <div class="section">
            <div class="section-title">
                <span class="long-form-icon"></span>
                Long-form Stories
            </div>
            <ul class="story-list">
                <li><a href="#">A DAY THAT I CAN NEVER FORGOT</a></li>
                <li><a href="#">THE SWORD OF FORGOTTEN TRUTHS</a></li>
            </ul>
        </div>

        <!-- Episodic Stories -->
        <div class="section">
            <div class="section-title">
                <span class="episodic-icon"></span>
                Episodic Stories
            </div>
            <ul class="story-list">
                <li style="color: gray;">No stories added yet</li>
            </ul>
        </div>
    </div>
</body>
</html>
