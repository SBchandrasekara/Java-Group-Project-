<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %> <!-- Import ResultSet -->

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
    <link rel="stylesheet" href="style/movies.css">
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

    <!-- NOW SHOWING MOVIES SECTION -->
     <section class="movie-info-section">
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
                                String title = rs.getString("title");
                                String image = rs.getString("image");
                                float rating = rs.getFloat("rating");
                                int duration = rs.getInt("duration");
                                String ageRating = rs.getString("age_rating");

                                // Debugging output: Print movie details
                                
                %>
                                <!-- MOVIE ITEM -->
                                <a href="aboutmovie.jsp?title=<%=title%>&image=<%=image%>&rating=<%=rating%>&duration=<%=duration%>&ageRating=<%=ageRating%>" class="movie-item">
                                    <img src="<%=image%>" alt="<%=title%>">
                                    <div class="movie-item-content">
                                        <div class="movie-item-title">
                                            <%=title%>
                                        </div>
                                        <div class="movie-infos">
                                            <div class="movie-info">
                                                <i class="bx bxs-star"></i>
                                                <span><%=rating%></span>
                                            </div>
                                            <div class="movie-info">
                                                <i class="bx bxs-time"></i>
                                                <span><%=duration%> hours</span>
                                            </div>
                                            <div class="movie-info">
                                                <span>HD</span>
                                            </div>
                                            <div class="movie-info">
                                                <span><%=ageRating%>+</span>
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
                        e.printStackTrace();  // Print the stack trace for debugging
                    } catch (SQLException e) {
                        out.println("<p>Database error: " + e.getMessage() + "</p>");
                        e.printStackTrace();  // Print the stack trace for debugging
                    } catch (Exception e) {
                        out.println("<p>Unexpected error: " + e.getMessage() + "</p>");
                        e.printStackTrace();  // Print the stack trace for debugging
                    } finally {
                        try {
                            // Close resources
                            if (rs != null) rs.close();
                            if (stmt != null) stmt.close();
                            if (conn != null) conn.close();
                        } catch (SQLException e) {
                            out.println("<p>Error closing resources: " + e.getMessage() + "</p>");
                            e.printStackTrace();  // Print the stack trace for debugging
                        }
                    }
                %>
            </div>
        </div>
    </div>
    </section>
    <!-- END NOW SHOWING MOVIES SECTION -->

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
                <!-- Additional footer sections here... -->
            </div>
        </div>
    </footer>
    <!-- END FOOTER SECTION -->

    <!-- COPYRIGHT SECTION -->
    <div class="copyright">
        ABC CINEMA
    </div>
    <!-- END COPYRIGHT SECTION -->

    <!-- SCRIPT -->
    <!-- JQUERY -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExl..." crossorigin="anonymous"></script>
    <!-- OWL CAROUSEL SCRIPT -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
    <script>
        $(document).ready(function() {
            $('.owl-carousel').owlCarousel({
                items: 4,  // Number of items to display
                loop: true,
                margin: 10,
                autoplay: true,
                autoplayTimeout: 5000,
                autoplayHoverPause: true
            });
        });
    </script>
</body>
</html>
