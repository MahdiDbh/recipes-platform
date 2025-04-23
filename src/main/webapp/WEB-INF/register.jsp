<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Register | Culinary Connect</title>
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
    
    .register-container {
      flex: 1;
      display: flex;
      align-items: center;
      justify-content: center;
      padding: 40px 0;
    }
    
    .register-card {
      background-color: white;
      border-radius: 15px;
      box-shadow: 0 10px 30px rgba(0,0,0,0.1);
      overflow: hidden;
      width: 100%;
      max-width: 600px;
    }
    
    .register-header {
      background-color: var(--primary);
      color: white;
      padding: 30px;
      text-align: center;
    }
    
    .register-title {
      font-family: 'Playfair Display', serif;
      font-weight: 700;
      margin-bottom: 10px;
    }
    
    .register-subtitle {
      font-weight: 300;
      opacity: 0.9;
    }
    
    .register-body {
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
    
    .social-register {
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
    
    .register-footer {
      text-align: center;
      margin-top: 20px;
      color: #6c757d;
    }
    
    .register-footer a {
      color: var(--primary);
      text-decoration: none;
    }
    
    .register-footer a:hover {
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
    
    .password-strength {
      height: 5px;
      border-radius: 5px;
      margin-top: -15px;
      margin-bottom: 20px;
      transition: all 0.3s;
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
          <a href="login" class="btn btn-outline-primary">Login</a>
        </div>
      </div>
    </div>
  </nav>

  <!-- Register Container -->
  <div class="register-container">
    <div class="register-card">
      <div class="register-header">
        <h2 class="register-title">Create an Account</h2>
        <p class="register-subtitle">Join our community of food enthusiasts</p>
      </div>
      <div class="register-body">
        <% if(request.getAttribute("errorMessage") != null) { %>
          <div class="alert alert-danger" role="alert">
            <%= request.getAttribute("errorMessage") %>
          </div>
        <% } %>
        
        <form action="register" method="post" id="registerForm">
	             <div class="row">
            <div class="col-md-6">
            </div>
              <div class="col-md-6">
              <div class="mb-3">
                <label for="name" class="form-label">hay!!!!</label>
               	
              </div>
            </div>
          </div>
          
          <div class="mb-3">
            <label for="name" class="form-label">name</label>
            <input type="text" class="form-control" id="name" name="name" required>
          </div>
          
          <div class="mb-3">
            <label for="email" class="form-label">Email address</label>
            <input type="email" class="form-control" id="email" name="email" required>
          </div>
          
          <div class="mb-3">
            <label for="username" class="form-label">Username</label>
            <input type="text" class="form-control" id="username" name="username" required>
          </div>
          
          <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" class="form-control" id="password" name="password" required>
            <div class="password-strength" id="passwordStrength"></div>
          </div>
          
          <div class="mb-3">
            <label for="confirmPassword" class="form-label">Confirm Password</label>
            <input type="password" class="form-control" id="confirmPassword" name="Cpassword" required>
          </div>
          
          <div class="mb-4 form-check">
            <input type="checkbox" class="form-check-input" id="termsAgree" name="termsAgree" required>
            <label class="form-check-label" for="termsAgree">
              I agree to the <a href="#">Terms of Service</a> and <a href="#">Privacy Policy</a>
            </label>
          </div>
          
          <button type="submit" class="btn btn-primary w-100 py-2">Create Account</button>
        </form>
        
        <div class="social-register">
          <p class="text-center mb-3">Or sign up with</p>
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
        
        <div class="register-footer">
          <p>Already have an account? <a href="login">Sign in</a></p>
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
  <script>
    document.addEventListener('DOMContentLoaded', function() {
      const passwordInput = document.getElementById('password');
      const confirmPasswordInput = document.getElementById('confirmPassword');
      const passwordStrength = document.getElementById('passwordStrength');
      const registerForm = document.getElementById('registerForm');
      
      // Password strength indicator
      passwordInput.addEventListener('input', function() {
        const password = this.value;
        let strength = 0;
        
        if (password.length >= 8) strength += 25;
        if (password.match(/[a-z]+/)) strength += 25;
        if (password.match(/[A-Z]+/)) strength += 25;
        if (password.match(/[0-9]+/)) strength += 25;
        
        passwordStrength.style.width = strength + '%';
        
        if (strength < 50) {
          passwordStrength.style.backgroundColor = '#dc3545'; // Weak
        } else if (strength < 75) {
          passwordStrength.style.backgroundColor = '#ffc107'; // Medium
        } else {
          passwordStrength.style.backgroundColor = '#28a745'; // Strong
        }
      });
      
      // Form validation
      registerForm.addEventListener('submit', function(e) {
        if (passwordInput.value !== confirmPasswordInput.value) {
          e.preventDefault();
          alert('Passwords do not match!');
          return false;
        }
        
        if (passwordInput.value.length < 8) {
          e.preventDefault();
          alert('Password must be at least 8 characters long!');
          return false;
        }
        
        return true;
      });
    });
  </script>
</body>
</html>
