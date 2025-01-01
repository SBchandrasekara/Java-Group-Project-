<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - ABC Cinema</title>
        <link rel="stylesheet" href="style/grid.css">
    <link rel="stylesheet" href="style/app.css">
    <link rel="stylesheet" href="style/contact.css">
    <link rel="stylesheet" href="style/movies.css">
    <!-- Include all the existing styles and links -->
</head>

<body>
    <%  
    // Initialize variables for form submission messages
    String successMessage = "";
    String errorMessage = "";

    // Check if form is submitted
    if (request.getParameter("submit") != null) {
        String firstName = request.getParameter("first-name");
        String lastName = request.getParameter("last-name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String message = request.getParameter("message");

        Connection connection = null;
        PreparedStatement statement = null;

        try {
            // Database connection details
            String dbURL = "jdbc:mysql://localhost:3308/abc_db";
            String dbUser = "root";
            String dbPassword = "12345678";

            // Establish connection
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(dbURL, dbUser, dbPassword);
