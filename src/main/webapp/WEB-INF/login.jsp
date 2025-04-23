<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login | Culinary Connect</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;700&family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="css/styles.css">
  <style>
    :root {
      --primary: #ff6b6b;
      --secondary: #4ecdc4;
      --dark: #292f36;
      --light: #f7f7f7;
      --accent: #ffd166;
    }
    
    body {
      font-family: 'Poppins', sans-serif;
      background-color: var(--light);
      color: var(--dark);
      min-height: 100vh;
      display: flex;
      flex-direction: column;
    }
    
    .navbar {
      background-color: white;
      box-shadow: 0 2px 15px rgba(0,0,0,0.1);
      padding: 15px 0;
    }
    
    .navbar-brand {
      font-family: 'Playfair Display', serif;
      font-weight: 700;
      font-size: 1.8rem;
      color: var(--primary);
    }
    
    .nav-link {
      font-weight: 500;
      margin: 0 10px;
      position: relative;
      transition: all 0.3s;
    }
    
    .nav-link:after {
      content: '';
      position: absolute;
      width: 0;
      height: 2px;
      bottom: 0;
      left: 0;
      background-color: var(--primary);
      transition: width 0.3s;
    }
    
    .nav-link:hover:after {
      width: 100%;
    }
    
    .btn-primary {
      background-color: var(--primary);
      border-color: var(--primary);
    }
    
    .btn-primary:hover {
      background-color: #ff5252;
      border-color: #ff5252;
    }
    
    .btn-outline-primary {
      color: var(--primary);
      border-color: var(--primary);
    }
    
    .btn-outline-primary:hover {
      background-color: var(--primary);
      border-color: var(--primary);
    }
    
    .login-container {
      flex: 1;
      display: flex;
      align-items: center;
      justify-content: center;
      padding: 40px 0;
    }
    
    .login-card {
      background-color: white;
      border-radius: 15px;
      box-shadow: 0 10px 30px rgba(0,0,0,0.1);
      overflow: hidden;
      width: 100%;
      max-width: 450px;
    }
    
    .login-header {
      background-color: var(--primary);
      color: white;
      padding: 30px;
      text-align: center;
    }
    
    .login-title {
      font-family: 'Playfair Display', serif;
      font-weight: 700;
      margin-bottom: 10px;
    }
    
    .login-subtitle {
      font-weight: 300;
      opacity: 0.9;
    }
    
    .login-body {
      padding: 40px;
    }
    
    .form-label {
      font-weight: 500;
    }
    
    .form-control {
      border-radius: 8px;
      padding: 12px 15px;
      margin-bottom: 20px;
      border: 1px solid #e1e1e1;
    }
    
    .form-control:focus {
      box-shadow: 0 0 0 3px rgba(255, 107, 107, 0.25);
      border-color: var(--primary);
    }
    
    .login-options {
      display: flex;
      justify-content: space-between;
      margin-bottom: 20px;
    }
    
    .social-login {
      display: flex;
      justify-content: center;
      margin-top: 30px;
    }
    
    .social-btn {
      width: 50px;
      height: 50px;
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
      margin: 0 10px;
      color: white;
      transition: transform 0.3s;
      text-decoration: none;
    }
    
    .social-btn:hover {
      transform: scale(1.1);
      color: white;
    }
    
    .facebook {
      background-color: #3b5998;
    }
    
    .google {
      background-color: #db4437;
    }
    
    .twitter {
      background-color: #1da1f2;
    }
    
    .login-footer {
      text-align: center;
      margin-top: 20px;
      color: #6c757d;
    }
    
    .login-footer a {
      color: var(--primary);
      text-decoration: none;
    }
    
    .login-footer a:hover {
      text-decoration: underline;
    }
    
    .alert {
      border-radius: 8px;
      padding: 15px;
      margin-bottom: 20px;
    }
    
    footer {
      background-color: var(--dark);
      color: white;
      padding: 20px 0;
      margin-top: auto;
    }
    
    .copyright {
      text-align: center;
      color: #adb5bd;
      font-size: 0.9rem;
    }
  </style>
</head>
<body>
  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-light">
    <div class="container">
      <a class="navbar-brand" href="home.jsp">Culinary Connect</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item">
            <a class="nav-link" href="home.jsp">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="browse-recipes.jsp">Recipes</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Contact</a>
          </li>
        </ul>
        <div class="ms-lg-3">
          <a href="register" class="btn btn-primary">Register</a>
        </div>
      </div>
    </div>
  </nav>

  <!-- Login Container -->
  <div class="login-container">
    <div class="login-card">
      <div class="login-header">
        <h2 class="login-title">Welcome Back</h2>
        <p class="login-subtitle">Sign in to continue to Culinary Connect</p>
      </div>
      <div class="login-body">
        <% if(request.getAttribute("errorMessage") != null) { %>
          <div class="alert alert-danger" role="alert">
            <%= request.getAttribute("errorMessage") %>
          </div>
        <% } %>
        
        <form action="login" method="post">
          <div class="mb-3">
            <label for="email" class="form-label">Email address</label>
            <input type="email" class="form-control" id="email" name="email" required>
          </div>
          <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" class="form-control" id="password" name="password" required>
          </div>
          <div class="login-options">
            <div class="form-check">
              <input class="form-check-input" type="checkbox" id="rememberMe" name="rememberMe">
              <label class="form-check-label" for="rememberMe">Remember me</label>
            </div>
            <a href="#" class="text-decoration-none">Forgot password?</a>
          </div>
          <button type="submit" class="btn btn-primary w-100 py-2">Sign In</button>
        </form>
        
        <div class="social-login">
          <p class="text-center mb-3">Or sign in with</p>
          <div class="d-flex justify-content-center">
            <a href="#" class="social-btn facebook">
              <i class="fab fa-facebook-f"></i>
            </a>
            <a href="#" class="social-btn google">
              <i class="fab fa-google"></i>
            </a>
            <a href="#" class="social-btn twitter">
              <i class="fab fa-twitter"></i>
            </a>
          </div>
        </div>
        
        <div class="login-footer">
          <p>Don't have an account? <a href="register.jsp">Sign up</a></p>
        </div>
      </div>
    </div>
  </div>

  <!-- Footer -->
  <footer>
    <div class="container">
      <div class="copyright">
        &copy; 2025 Culinary Connect. All rights reserved.
      </div>
    </div>
  </footer>

  <!-- JavaScript -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>