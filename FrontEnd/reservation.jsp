<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Reservation Summary</title>
  <!-- GOOGLE FONTS -->
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;700;900&display=swap" rel="stylesheet">
  <!-- BOX ICONS -->
  <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>    
  <!-- OWL CAROUSEL -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g==" crossorigin="anonymous" />
  <link rel="stylesheet" href="style/reservation.css">
  <link rel="stylesheet" href="style/movies.css">
  <link rel="stylesheet" href="style/grid.css ">
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
                    <a href="index.html" class="nav-link">
                        Home
                        <span class="underline"></span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="movies.html" class="nav-link">
                        Movies
                        <span class="underline"></span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="contact.html" class="nav-link">
                        Contact Us
                        <span class="underline"></span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="aboutus.html" class="nav-link">
                        About Us
                        <span class="underline"></span>
                    </a>
                </li>
            </ul>
        </nav>
        
        <div class="user-section">
            <div class="user-profile">
                <img src="images/image (1).jpg" alt="User Profile" class="profile-pic">
                <span class="user-name">Hello, Mr SB</span>
                <span class="dropdown-arrow">▼</span>
            </div>
            <div class="notification-container">
                <button class="notification-btn">
                    <span class="notification-icon">🔔</span>
                </button>
            </div>
        </div>
    </header>

    <!-- END NAV -->
