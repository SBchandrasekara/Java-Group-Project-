<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Work Portal Login</title>
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;700;900&display=swap" rel="stylesheet">
    <!-- Box Icons -->
    <link href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css" rel="stylesheet">    
    <!-- App CSS -->
    <link rel="stylesheet" href="style/login.css">
    <link rel="stylesheet" href="style/grid.css">
      <link rel="stylesheet" href="style/movies.css">
</head>
<body>

    <main>
        <div class="login-box">
          <h2>Welcome Back!</h2>
          <p>Please enter your credentials to access the Work Portal.</p>
          <form action="Login" method="post">
            <input type="email" name="email" placeholder="Email" required>
            <input type="password" name="password" placeholder="Password" required>
            <div class="options">
              <label class="remember-me">
                <input type="checkbox" name="rememberMe"> Remember Me
              </label>
              <a href="forgotPassword.jsp" class="forgot-password">Forgot Password?</a>
            </div>
            <button type="submit" class="login-button">Login</button>
            <p class="new-member">New Member? <a href="signup.jsp" class="signup-link">Sign Up</a></p>
          </form>
        </div>
      </main>
        
