<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %> <!-- Import ResultSet -->
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>ABC Cinema</title>
      <!-- GOOGLE FONTS -->
      <link rel="preconnect" href="https://fonts.gstatic.com">
      <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;700;900&display=swap" rel="stylesheet">
      <!-- BOX ICONS -->
      <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
      <!-- OWL CAROUSEL -->
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g==" crossorigin="anonymous" />
  
  <link rel="stylesheet" href="style/aboutus.css">
  <link rel="stylesheet" href="style/app.css">
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
  <div class="container-2">
    <!-- About Section -->
    <div class="about-section">
      <h2>ABOUT ABC CINEMA</h2>
      <p>
        "Welcome to ABC Cinema, your go-to spot for the best movie experience! From enormous blockbusters to endearing indie films, we’ve been telling tales that inspire, entertain, and move people all the country. With decades of experience in the film industry, ABC Cinema has been known for quality, comfort, and innovation."
      </p>
    </div>

    <!-- Mission and Vision Section -->
    <div class="mission-vision-section">
      <div class="mission">
        <h3>MISSION</h3>
        <p>
          To create unforgettable cinematic experiences in Sri Lanka. Whether it’s an edge-of-your-seat thriller or a family-friendly animation, we strive to make every movie moment magical by combining cutting-edge technology with unparalleled service.
        </p>
      </div>
      <div class="vision">
        <h3>VISION</h3>
        <p>
          Our vision is to redefine the movie-going experience by seamlessly merging tradition with innovation.
        </p>
      </div>
    </div>

    <!-- Customer Feedback Section -->
    <div class="feedback-section">
      <h2>Customer Feedbacks</h2>
      <div class="feedback">
        <img src="images/image (1).jpg" alt="User Icon">
        <blockquote>
          "Booking tickets is so easy now! The website is user-friendly, and I love the quick payment process."
        </blockquote>
        <cite>- Jane T</cite>
      </div>
      <div class="feedback">
        <img src="images/image (2).jpg" alt="User Icon">
        <blockquote>
          "Booking tickets is so easy now! The website is user-friendly, and I love the quick payment process."
        </blockquote>
        <cite>- Jane T</cite>
      </div>
      <div class="feedback">
        <img src="images/image (4).jpg" alt="User Icon">
        <blockquote>
          "Booking tickets is so easy now! The website is user-friendly, and I love the quick payment process."
        </blockquote>
        <cite>- Jane T</cite>
      </div>
      <div class="feedback">
        <img src="images/image (3).jpg" alt="User Icon">
        <blockquote>
          "Booking tickets is so easy now! The website is user-friendly, and I love the quick payment process."
        </blockquote>
        <cite>- Jane T</cite>
      </div>
    </div>
  </div>

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
<!-- END COPYRIGHT SECTION -->

<!-- SCRIPT -->
<!-- JQUERY -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<!-- OWL CAROUSEL -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous"></script>
<!-- APP SCRIPT -->
<script src="js/app.js"></script>

</body>
</html>
