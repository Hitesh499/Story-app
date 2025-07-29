<!DOCTYPE html>
<html>
<head>
    <title>Genre Selector</title>
    <style>
        .genre-section {
            text-align: center;
            margin-top: 30px;
        }

        .genre-button {
            padding: 10px 20px;
            font-size: 18px;
            cursor: pointer;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 6px;
            margin-bottom: 15px;
        }

        .genre-list {
            display: none;
            list-style-type: none;
            padding: 0;
            margin: auto;
            width: 300px;
        }

        .genre-list li {
            background-color: #f0f0f0;
            margin: 5px 0;
            padding: 10px;
            border-radius: 5px;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        .genre-list li:hover {
            background-color: #ddd;
            cursor: pointer;
        }

        .genre-list a {
            text-decoration: none;
            color: black;
            display: block;
        }
    </style>
</head>
<body>

<div class="genre-section">
    <button class="genre-button" onclick="toggleGenres()">Choose Genre</button>
    <ul class="genre-list" id="genreList">
        <li><a href="stories.jsp?genre=Drama">Drama</a></li>
        <li><a href="stories.jsp?genre=Comedy">Comedy</a></li>
        <li><a href="stories.jsp?genre=Tragedy">Tragedy</a></li>
        <li><a href="stories.jsp?genre=Romance">Romance</a></li>
        <li><a href="stories.jsp?genre=Adventure">Adventure</a></li>
        <li><a href="stories.jsp?genre=Horror">Horror</a></li>
        <li><a href="stories.jsp?genre=Mystery">Mystery/Thriller</a></li>
        <li><a href="stories.jsp?genre=ScienceFiction">Science Fiction</a></li>
        <li><a href="stories.jsp?genre=Fantasy">Fantasy</a></li>
        <li><a href="stories.jsp?genre=HistoricalFiction">Historical Fiction</a></li>
        <li><a href="stories.jsp?genre=Crime">Crime/Detective</a></li>
        <li><a href="stories.jsp?genre=Slice of Life">Slice of Life</a></li>
    </ul>
</div>

<script>
    function toggleGenres() {
        const genreList = document.getElementById("genreList");
        genreList.style.display = (genreList.style.display === "block") ? "none" : "block";
    }
</script>

</body>
</html>
