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

            // Insert query
            String query = "INSERT INTO contacts (first_name, last_name, email, phone, message) VALUES (?, ?, ?, ?, ?)";
            statement = connection.prepareStatement(query);
            statement.setString(1, firstName);
            statement.setString(2, lastName);
            statement.setString(3, email);
            statement.setString(4, phone);
            statement.setString(5, message);

            // Execute query
            int rowsInserted = statement.executeUpdate();
            if (rowsInserted > 0) {
                successMessage = "Thank you for contacting us! We will get back to you soon.";
            }
        } catch (Exception e) {
            errorMessage = "Error occurred while submitting your request. Please try again.";
            e.printStackTrace();
        } finally {
            try {
                if (statement != null) statement.close();
                if (connection != null) connection.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
    }
%>
<!-- NAV -->
<header class="header">
    <div class="logo-container">
        <a href="home.jsp" class="logo-link">
            <span class="logo-text">ABC</span>
            <span class="logo-highlight">CINEMA</span>
        </a>
    </div>
    <nav class="nav-menu">
        <ul class="nav-list">
            <li class="nav-item">
                <a href="home.jsp" class="nav-link">
                    Home
                    <span class="underline"></span>
                </a>
            </li>
            <li class="nav-item">
                <a href="movie.jsp" class="nav-link">
                    Movies
                    <span class="underline"></span>
                </a>
            </li>
            <li class="nav-item">
                <a href="contact.jsp" class="nav-link">
                    Contact Us
                    <span class="underline"></span>
                </a>
            </li>
            <li class="nav-item">
                <a href="aboutus.jsp" class="nav-link">
                    About Us
                    <span class="underline"></span>
                </a>
            </li>
        </ul>
    </nav>
    
      

</header>
<main>
    <div class="contact-container-1">
        <!-- Left Section: Contact Details -->
        <div class="contact-left">
            <!-- Existing Contact Information -->
        </div>

        <!-- Right Section: Get In Touch Form -->
        <div class="contact-right">
            <div class="get-in-touch-form">
                <h2><strong>Get In Touch</strong></h2>
                <p>Feel Free To Reach Us At Any Time</p>

                <% if (!successMessage.isEmpty()) { %>
                    <p style="color: green;"><%= successMessage %></p>
                <% } %>
                <% if (!errorMessage.isEmpty()) { %>
                    <p style="color: red;"><%= errorMessage %></p>
                <% } %>

                <form id="contact-form" method="post" action="contact.jsp">
                    <div class="form-row">
                        <input type="text" name="first-name" placeholder="First name" required>
                        <input type="text" name="last-name" placeholder="Last name" required>
                    </div>
                    <input type="email" name="email" placeholder="Your Email" required>
                    <input type="tel" name="phone" placeholder="Phone Number" required>
                    <textarea name="message" placeholder="How can we help?" rows="5" required></textarea>
                    <button type="submit" name="submit" class="gradient-btn">Submit</button>
                </form>
            </div>
        </div>
    </div>
</main>

  <!-- FOOTER SECTION -->
  <footer class="section">
    <div class="container">
        <div class="row">
            <div class="col-4 col-md-6 col-sm-12">
                <div class="content">
                    <a href="index.html" class="logo">
                        <i class='main-color'></i>ABC<span class="main-color">|</span>Cinema
                    </a>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut veniam ex quos hic id nobis beatae earum sapiente! Quod ipsa exercitationem officiis non error illum minima iusto et. Dolores, quibusdam?
                    </p>
                    <div class="social-list">
                         <a href="https://www.facebook.com" class="social-item">
                            <i class="bx bxl-facebook"></i>
                        </a>
                        <a href="https://twitter.com" class="social-item">
                            <i class="bx bxl-twitter"></i>
                        </a>
                        <a href="https://instagram.com" class="social-item">
                            <i class="bx bxl-instagram"></i>
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-8 col-md-6 col-sm-12">
                <div class="row">
                    <div class="col-3 col-md-6 col-sm-6">
                        <div class="content">
                            <p><b>ABC Cinema</b></p>
                            <ul class="footer-menu">
                                <li><a href="aboutus.html">About us</a></li>
                                <li><a href="profile details.html">My profile</a></li>
                                <li><a href="movies.html">Pricing plans</a></li>
                                <li><a href="contact.html">Contacts</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-3 col-md-6 col-sm-6">
                        <div class="content">
                            <p><b>Browse</b></p>
                            <ul class="footer-menu">
                                <li><a href="aboutus.html">About us</a></li>
                                <li><a href="profile details.html">My profile</a></li>
                                <li><a href="movies.html">Pricing plans</a></li>
                                <li><a href="contact.html">Contacts</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-3 col-md-6 col-sm-6">
                        <div class="content">
                            <p><b>Help</b></p>
                            <ul class="footer-menu">
                                <li><a href="aboutus.html">About us</a></li>
                                <li><a href="profile details.html">My profile</a></li>
                                <li><a href="movies.html">Pricing plans</a></li>
                                <li><a href="contact.html">Contacts</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-3 col-md-6 col-sm-6">
                        <div class="content">
                            <p><b>Download app</b></p>
                            <ul class="footer-menu">
                                <li>
                                    <a href="https://play.google.com/store">
                                        <img src="./images/google-play.png" alt="">
                                    </a>
                                </li>
                                <li>
                                    <a href="https://www.apple.com/app-store/">
                                        <img src="./images/app-store.png" alt="">
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
    <!-- END FOOTER SECTION -->

    <!-- COPYRIGHT SECTION -->
    <div class="copyright">
        ABC CINEMA
    </div>

<script src="js/contact.js"></script>
</body>
</html>
