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



  <style type="text/css">
  
  
    
        /* General Styles */
        header {
            padding: 20px;
        }

        header .logo img {
            width: 120px;
        }

        /* Checkout Page */
        .checkout-container {
            max-width: 1200px;
            margin: 30px auto;
            padding: 20px;
           
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .checkout-box {
            display: flex;
            justify-content: space-between;
            gap: 30px;
        }

        .movie-info {
           display: grid;
           justify-content: center;
        }

        .movie-info img {
            width: 100%;
            max-width: 300px;
        }

        .price-summary {
            flex: 1;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table th, table td {
            padding: 8px;
            border-bottom: 1px solid #ccc;
        }

        form {
            margin-top: 20px;
        }

        label {
            display: block;
            margin: 10px 0 5px;
        }

        select, input[type="number"], input[type="email"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border-radius: 5px;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        button.btn {
            background-color: #333;
            color: white;
            padding: 15px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button.btn:hover {
            background-color: #555;
        }

        .screen {
            background-color: #ccc;
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 20px;
            font-weight: bold;
        }
         .seating-section {
        text-align: center;
        margin: 2rem auto;
        max-width: 800px;
    }
    .seats {
        display: grid;
        grid-template-columns: repeat(10, 1fr);
        gap: 10px;
        justify-content: center;
    }
    .seat {
        width: 30px;
        height: 30px;
        font-size: 18px;
        color: white;
        background-color: #4caf50;
        border-radius: 5px;
        cursor: pointer;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .seat.selected {
        background-color: #f39c12;
    }
    .seat.occupied {
        background-color: #f39c12;
        cursor: not-allowed;
    }
        .legend {
            display: flex;
            justify-content: center;
            gap: 15px;
            margin-top: 15px;
        }
        .legend div {
            display: flex;
            align-items: center;
            gap: 5px;
        }
        .legend .box {
            width: 20px;
            height: 20px;
            border-radius: 5px;
        }
        .paypal-container {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 20px;
            width: 100%;
        }

        .paypal-button {
            margin-top: 20px;
        }
        
    </style>
    <!-- PayPal SDK -->
     <script src="https://www.paypal.com/sdk/js?client-id=Ae_v1-FbGVrMCk2Sg2okfDDC829hfgG8FKi9TQtqPnX2NUbYodf3XY2sKQVY336FGCpDZyRoQpv8wKJY&currency=USD"></script>
</head>
<body>
 <header class="header">
        <div class="logo-container">
            <a href="/" class="logo-link">
                <span class="logo-text">ABC</span>
                <span class="logo-highlight">CINEMA</span>
            </a>
        </div>
        <nav class="nav-menu">
            <ul class="nav-list">
                <li class="nav-item"><a href="home.jsp" class="nav-link">Home</a></li>
                <li class="nav-item"><a href="movie.jsp" class="nav-link">Movies</a></li>
                <li class="nav-item"><a href="#" class="nav-link">Contact Us</a></li>
                <li class="nav-item"><a href="#" class="nav-link">About Us</a></li>
            </ul>
        </nav>
    </header>


 <div class="checkout-container">
    <div class="checkout-box">
        <!-- Display Movie Information -->
        
<section class="seating-section">

    <br>

    <div class="seats">
        <!-- Seat allocation with icons (Available, Selected, Occupied) -->
        <div class="seat" data-row="A" data-col="1" title="Available"><i class="fas fa-chair"></i></div>
        <div class="seat" data-row="A" data-col="2" title="Available"><i class="fas fa-chair"></i></div>
        <div class="seat" data-row="A" data-col="3" title="Available"><i class="fas fa-chair"></i></div>
        <div class="seat" data-row="A" data-col="4" title="Available"><i class="fas fa-chair"></i></div>
        <div class="seat" data-row="A" data-col="5" title="Available"><i class="fas fa-chair"></i></div>
        <div class="seat" data-row="A" data-col="6" title="Available"><i class="fas fa-chair"></i></div>
        <div class="seat" data-row="A" data-col="7" title="Available"><i class="fas fa-chair"></i></div>
        <div class="seat" data-row="A" data-col="8" title="Available"><i class="fas fa-chair"></i></div>
        <div class="seat" data-row="A" data-col="9" title="Available"><i class="fas fa-chair"></i></div>
        <div class="seat" data-row="A" data-col="10" title="Available"><i class="fas fa-chair"></i></div>
    </div>
    <br>
      <div class="seats">
        <!-- Seat allocation with icons (Available, Selected, Occupied) -->
        <div class="seat" data-row="A" data-col="11" title="Available"><i class="fas fa-chair"></i></div>
        <div class="seat" data-row="A" data-col="12" title="Available"><i class="fas fa-chair"></i></div>
        <div class="seat" data-row="A" data-col="13" title="Available"><i class="fas fa-chair"></i></div>
        <div class="seat" data-row="A" data-col="14" title="Available"><i class="fas fa-chair"></i></div>
        <div class="seat" data-row="A" data-col="15" title="Available"><i class="fas fa-chair"></i></div>
        <div class="seat" data-row="A" data-col="16" title="Available"><i class="fas fa-chair"></i></div>
        <div class="seat" data-row="A" data-col="17" title="Available"><i class="fas fa-chair"></i></div>
        <div class="seat" data-row="A" data-col="18" title="Available"><i class="fas fa-chair"></i></div>
        <div class="seat" data-row="A" data-col="19" title="Available"><i class="fas fa-chair"></i></div>
        <div class="seat" data-row="A" data-col="20" title="Available"><i class="fas fa-chair"></i></div>
    </div>
    <br>
      <div class="seats">
        <!-- Seat allocation with icons (Available, Selected, Occupied) -->
        <div class="seat" data-row="A" data-col="21" title="Available"><i class="fas fa-chair"></i></div>
        <div class="seat" data-row="A" data-col="22" title="Available"><i class="fas fa-chair"></i></div>
        <div class="seat" data-row="A" data-col="23" title="Available"><i class="fas fa-chair"></i></div>
        <div class="seat" data-row="A" data-col="24" title="Available"><i class="fas fa-chair"></i></div>
        <div class="seat" data-row="A" data-col="25" title="Available"><i class="fas fa-chair"></i></div>
        <div class="seat" data-row="A" data-col="26" title="Available"><i class="fas fa-chair"></i></div>
        <div class="seat" data-row="A" data-col="27" title="Available"><i class="fas fa-chair"></i></div>
        <div class="seat" data-row="A" data-col="28" title="Available"><i class="fas fa-chair"></i></div>
        <div class="seat" data-row="A" data-col="29" title="Available"><i class="fas fa-chair"></i></div>
        <div class="seat" data-row="A" data-col="30" title="Available"><i class="fas fa-chair"></i></div>
    </div>
    <br>
      <div class="seats">
        <!-- Seat allocation with icons (Available, Selected, Occupied) -->
        <div class="seat" data-row="A" data-col="31" title="Available"><i class="fas fa-chair"></i></div>
        <div class="seat" data-row="A" data-col="32" title="Available"><i class="fas fa-chair"></i></div>
        <div class="seat" data-row="A" data-col="33" title="Available"><i class="fas fa-chair"></i></div>
        <div class="seat" data-row="A" data-col="34" title="Available"><i class="fas fa-chair"></i></div>
        <div class="seat" data-row="A" data-col="35" title="Available"><i class="fas fa-chair"></i></div>
        <div class="seat" data-row="A" data-col="36" title="Available"><i class="fas fa-chair"></i></div>
        <div class="seat" data-row="A" data-col="37" title="Available"><i class="fas fa-chair"></i></div>
        <div class="seat" data-row="A" data-col="38" title="Available"><i class="fas fa-chair"></i></div>
        <div class="seat" data-row="A" data-col="39" title="Available"><i class="fas fa-chair"></i></div>
        <div class="seat" data-row="A" data-col="40" title="Available"><i class="fas fa-chair"></i></div>
    </div>
   
