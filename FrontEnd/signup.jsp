<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Cinema</title>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;700;900&display=swap" rel="stylesheet">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g==" crossorigin="anonymous" />
    <link rel="stylesheet" href="style/sign up.css">
    <link rel="stylesheet" href="style/grid.css">
    <link rel="stylesheet" href="style/movies.css">
</head>
<body>

    <main>
        <section class="signup-form1">
            <h1>Sign Up with SCREEN PASS!</h1>
            <p>Sign up for seamless bookings, exclusive perks, and unforgettable cinema moments.</p>
            <form action="SignUp" method="post">
                <input type="text" name="first_name" placeholder="Enter First name" required>
                <input type="text" name="last_name" placeholder="Enter Last name" required>
                <input type="email" name="email" placeholder="Enter Email Address" required>
                <div class="horizontal-group">
                    <div class="gender">
                      <b>Gender:</b>
                     <button type="button" class="gender-btn" data-value="Male">Male</button>
                     <button type="button" class="gender-btn" data-value="Female">Female</button>
                        <input type="hidden" name="gender" id="gender-input" required>
                    </div>
                <div class="mobile">
                    <span>+94</span>
                    <input type="tel" name="mobile" placeholder="Enter Mobile Number" required>
                </div>
                </div>
                <input type="text" name="nic" placeholder="Enter NIC number" required>
                 <input type="text" name="address" placeholder="Enter Address" required>
                 <input type="password" name="password" placeholder="Password" required>
                <input type="password" placeholder="Confirm Password" required>
                <button type="submit">Create Account</button>
            </form>
            <p>Already a member? <a href="login.jsp">Login!</a></p>
        </section>
    </main>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous"></script>
    <script src="js/movies.js"></script>

</body>
</html>
