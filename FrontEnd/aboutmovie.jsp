<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Cinema</title>
    <!-- GOOGLE FONTS -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;700;900&display=swap" rel="stylesheet">
    <!-- BOX ICONS -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <!-- OWL CAROUSEL -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g==" crossorigin="anonymous" />
    <!-- APP CSS -->
    <link rel="stylesheet" href="style/grid.css">
    <link rel="stylesheet" href="style/about movies.css">
</head>

<body>

    <!-- NAV -->
    <header class="header">
        <div class="logo-container">
            <a href="/" class="logo-link">
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
    <!-- END NAV -->

    <!-- Movie Details Section -->
    <section class="movie-details-section">
        <div class="container">
            <div class="movie-details">
                <% 
                    // Retrieve parameters from URL
                    String title = request.getParameter("title");
                    String image = request.getParameter("image");
                    String rating = request.getParameter("rating");
                    String duration = request.getParameter("duration");
                    String ageRating = request.getParameter("ageRating");
                %>

                <h1><%= title %></h1>
                <img src="<%= image %>" alt="<%= title %>">
                <p><strong>Rating:</strong> <%= rating %></p>
                <p><strong>Duration:</strong> <%= duration %> hours</p>
                <p><strong>Age Rating:</strong> <%= ageRating %>+</p>
                <div class="movie-item-actions">
            <a href="seat.jsp?title=<%=title%>image=<%= image %>duration=<%= duration %>" class="btn btn-danger">Book Now</a>
        </div>
            </div>
        </div>
    </section>

    <!-- MOVIES AT ABC CINEMA -->
    <div class="section">
        <div class="container">
            <div class="movies-slide carousel-nav-center owl-carousel">
                <%
                    Connection conn = null;
                    Statement stmt = null;
                    ResultSet rs = null;
                    try {
                        // Establish connection to the database
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        conn = DriverManager.getConnection("jdbc:mysql://localhost:3308/abc_db", "root", "12345678");

                        // Query to fetch movies
                        String sql = "SELECT * FROM movies";
                        stmt = conn.createStatement();
                        rs = stmt.executeQuery(sql);

                        // Check if there are results
                        if (!rs.next()) {
                            out.println("<p>No movies found.</p>");
                        } else {
                            // Loop through the result set and display movies
                            do {
                                String movieTitle = rs.getString("title");
                                String movieImage = rs.getString("image");
                                float movieRating = rs.getFloat("rating");
                                int movieDuration = rs.getInt("duration");
                                String movieAgeRating = rs.getString("age_rating");
                %>

                                <!-- MOVIE ITEM -->
                                <a href="aboutmovie.jsp?title=<%=movieTitle%>&image=<%=movieImage%>&rating=<%=movieRating%>&duration=<%=movieDuration%>&ageRating=<%=movieAgeRating%>" class="movie-item">
                                    <img src="<%=movieImage%>" alt="<%=movieTitle%>">
                                    <div class="movie-item-content">
                                        <div class="movie-item-title">
                                            <%=movieTitle%>
                                        </div>
                                        <div class="movie-infos">
                                            <div class="movie-info">
                                                <i class="bx bxs-star"></i>
                                                <span><%=movieRating%></span>
                                            </div>
                                            <div class="movie-info">
                                                <i class="bx bxs-time"></i>
                                                <span><%=movieDuration%> hours</span>
                                            </div>
                                            <div class="movie-info">
                                                <span>HD</span>
                                            </div>
                                            <div class="movie-info">
                                                <span><%=movieAgeRating%>+</span>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                                <!-- END MOVIE ITEM -->

                <%
                            } while (rs.next());
                        }
                    } catch (ClassNotFoundException e) {
                        out.println("<p>Error loading database driver: " + e.getMessage() + "</p>");
                        e.printStackTrace();
                    } catch (SQLException e) {
                        out.println("<p>Database error: " + e.getMessage() + "</p>");
                        e.printStackTrace();
                    } catch (Exception e) {
                        out.println("<p>Unexpected error: " + e.getMessage() + "</p>");
                        e.printStackTrace();
                    } finally {
                        try {
                            // Close resources
                            if (rs != null) rs.close();
                            if (stmt != null) stmt.close();
                            if (conn != null) conn.close();
                        } catch (SQLException e) {
                            out.println("<p>Error closing resources: " + e.getMessage() + "</p>");
                            e.printStackTrace();
                        }
                    }
                %>
            </div>
        </div>
    </div>
    <!-- END NOW SHOWING MOVIES SECTION -->

    <!-- FOOTER SECTION -->
    <footer class="section">
        <div class="container">
            <div class="row">
                <div class="col-4 col-md-6 col-sm-12">
                    <div class="content">
                        <a href="#" class="logo">
                            <i class='main-color'></i>ABC<span class="main-color">|</span>Cinema
                        </a>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut veniam ex quos hic id nobis beatae earum sapiente! Quod ipsa exercitationem officiis non error illum minima iusto et. Dolores, quibusdam?
                        </p>
                        <div class="social-list">
                             <a href="#" class="social-item">
                                <i class="bx bxl-facebook"></i>
                            </a>
                            <a href="#" class="social-item">
                                <i class="bx bxl-twitter"></i>
                            </a>
                            <a href="#" class="social-item">
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
                                    <li><a href="#">About us</a></li>
                                    <li><a href="#">My profile</a></li>
                                    <li><a href="#">Pricing plans</a></li>
                                    <li><a href="#">Contacts</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-3 col-md-6 col-sm-6">
                            <div class="content">
                                <p><b>Browse</b></p>
                                <ul class="footer-menu">
                                    <li><a href="#">Action Movies</a></li>
                                    <li><a href="#">Comedies</a></li>
                                    <li><a href="#">Drama</a></li>
                                    <li><a href="#">Family</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-3 col-md-6 col-sm-6">
                            <div class="content">
                                <p><b>Support</b></p>
                                <ul class="footer-menu">
                                    <li><a href="#">FAQ</a></li>
                                    <li><a href="#">Help center</a></li>
                                    <li><a href="#">Service</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-3 col-md-6 col-sm-6">
                            <div class="content">
                                <p><b>Get in Touch</b></p>
                                <ul class="footer-menu">
                                    <li><a href="#">Support</a></li>
                                    <li><a href="#">Schedule</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- END FOOTER SECTION -->

    <!-- JS Libraries -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
    <script src="script/main.js"></script>
</body>

</html>

