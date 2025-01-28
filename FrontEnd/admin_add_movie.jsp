<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Movie - Admin Panel</title>
</head>
<body>
    <h2>Add Movie</h2>
    <form action="AddMovieServlet" method="post">
        <label for="title">Movie Title:</label>
        <input type="text" name="title" id="title" required><br><br>

        <label for="image">Image URL:</label>
        <input type="text" name="image" id="image" required><br><br>

        <label for="rating">Rating:</label>
        <input type="number" name="rating" id="rating" step="0.1" min="0" max="10" required><br><br>

        <label for="duration">Duration (in minutes):</label>
        <input type="number" name="duration" id="duration" required><br><br>

        <label for="age_rating">Age Rating:</label>
        <input type="text" name="age_rating" id="age_rating" required><br><br>

        <input type="submit" value="Add Movie">
    </form>
</body>
</html>

