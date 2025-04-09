<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Culinary Connect | Share Your Recipes</title>
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
    }
    
    h1, h2, h3, h4, h5, h6 {
      font-family: 'Playfair Display', serif;
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
    
    .hero {
      background: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.5)), url('https://images.unsplash.com/photo-1495521821757-a1efb6729352?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1200&q=80');
      background-size: cover;
      background-position: center;
      color: white;
      padding: 120px 0;
      margin-bottom: 60px;
      position: relative;
    }
    
    .hero-content {
      max-width: 600px;
    }
    
    .hero h1 {
      font-size: 3.5rem;
      margin-bottom: 20px;
    }
    
    .hero p {
      font-size: 1.2rem;
      margin-bottom: 30px;
    }
    
    .recipe-card {
      border-radius: 15px;
      overflow: hidden;
      box-shadow: 0 5px 15px rgba(0,0,0,0.1);
      transition: transform 0.4s, box-shadow 0.4s;
      margin-bottom: 30px;
      border: none;
    }
    
    .recipe-card:hover {
      transform: translateY(-10px);
      box-shadow: 0 15px 30px rgba(0,0,0,0.15);
    }
    
    .recipe-img-container {
      height: 200px;
      overflow: hidden;
    }
    
    .recipe-img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: transform 0.8s;
    }
    
    .recipe-card:hover .recipe-img {
      transform: scale(1.1);
    }
    
    .recipe-card .card-body {
      padding: 25px;
    }
    
    .recipe-meta {
      display: flex;
      justify-content: space-between;
      margin-bottom: 15px;
      font-size: 0.85rem;
      color: #6c757d;
    }
    
    .recipe-category {
      display: inline-block;
      background-color: var(--accent);
      color: var(--dark);
      padding: 3px 10px;
      border-radius: 20px;
      font-size: 0.75rem;
      font-weight: 600;
      text-transform: uppercase;
      margin-bottom: 10px;
    }
    
    .recipe-title {
      font-size: 1.5rem;
      margin-bottom: 10px;
      font-weight: 700;
    }
    
    .recipe-description {
      color: #6c757d;
      margin-bottom: 20px;
    }
    
    .recipe-footer {
      display: flex;
      justify-content: space-between;
      align-items: center;
    }
    
    .chef-info {
      display: flex;
      align-items: center;
    }
    
    .chef-avatar {
      width: 40px;
      height: 40px;
      border-radius: 50%;
      margin-right: 10px;
      object-fit: cover;
    }
    
    .chef-name {
      font-weight: 500;
      font-size: 0.9rem;
    }
    
    .recipe-likes {
      display: flex;
      align-items: center;
      color: #6c757d;
      font-size: 0.9rem;
    }
    
    .recipe-likes i {
      color: var(--primary);
      margin-right: 5px;
    }
    
    .section-title {
      position: relative;
      margin-bottom: 50px;
      text-align: center;
    }
    
    .section-title:after {
      content: '';
      position: absolute;
      width: 80px;
      height: 3px;
      background-color: var(--primary);
      bottom: -15px;
      left: 50%;
      transform: translateX(-50%);
    }
    
    .featured-badge {
      position: absolute;
      top: 20px;
      right: 20px;
      background-color: var(--primary);
      color: white;
      padding: 5px 15px;
      border-radius: 20px;
      font-size: 0.8rem;
      font-weight: 600;
      z-index: 10;
    }
    
    .categories-section {
      background-color: white;
      padding: 60px 0;
      margin: 60px 0;
    }
    
    .category-item {
      text-align: center;
      padding: 30px 20px;
      border-radius: 10px;
      transition: transform 0.3s, box-shadow 0.3s;
      cursor: pointer;
    }
    
    .category-item:hover {
      transform: translateY(-10px);
      box-shadow: 0 10px 25px rgba(0,0,0,0.1);
    }
    
    .category-icon {
      width: 80px;
      height: 80px;
      background-color: var(--light);
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
      margin: 0 auto 20px;
      font-size: 2rem;
      color: var(--primary);
      transition: background-color 0.3s, color 0.3s;
    }
    
    .category-item:hover .category-icon {
      background-color: var(--primary);
      color: white;
    }
    
    .category-title {
      font-weight: 600;
      margin-bottom: 10px;
    }
    
    .category-count {
      color: #6c757d;
      font-size: 0.9rem;
    }
    
    .newsletter {
      background-color: var(--secondary);
      padding: 60px 0;
      color: white;
    }
    
    .newsletter-form {
      max-width: 500px;
      margin: 30px auto 0;
      position: relative;
    }
    
    .newsletter-input {
      height: 60px;
      border-radius: 30px;
      padding-left: 25px;
      padding-right: 140px;
      border: none;
    }
    
    .newsletter-btn {
      position: absolute;
      right: 5px;
      top: 5px;
      height: 50px;
      border-radius: 25px;
      padding: 0 30px;
      background-color: var(--primary);
      border: none;
    }
    
    footer {
      background-color: var(--dark);
      color: white;
      padding: 60px 0 30px;
    }
    
    .footer-title {
      font-size: 1.2rem;
      margin-bottom: 25px;
      position: relative;
      padding-bottom: 10px;
    }
    
    .footer-title:after {
      content: '';
      position: absolute;
      width: 40px;
      height: 2px;
      background-color: var(--primary);
      bottom: 0;
      left: 0;
    }
    
    .footer-links {
      list-style: none;
      padding: 0;
    }
    
    .footer-links li {
      margin-bottom: 15px;
    }
    
    .footer-links a {
      color: #adb5bd;
      text-decoration: none;
      transition: color 0.3s;
    }
    
    .footer-links a:hover {
      color: var(--primary);
    }
    
    .footer-social {
      display: flex;
      margin-top: 20px;
    }
    
    .footer-social a {
      width: 40px;
      height: 40px;
      border-radius: 50%;
      background-color: rgba(255,255,255,0.1);
      display: flex;
      align-items: center;
      justify-content: center;
      margin-right: 10px;
      color: white;
      transition: background-color 0.3s;
    }
    
    .footer-social a:hover {
      background-color: var(--primary);
    }
    
    .copyright {
      text-align: center;
      padding-top: 30px;
      margin-top: 30px;
      border-top: 1px solid rgba(255,255,255,0.1);
      color: #adb5bd;
      font-size: 0.9rem;
    }
    
    /* Animation classes */
    .fade-in {
      animation: fadeIn 1s ease-in-out;
    }
    
    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(20px); }
      to { opacity: 1; transform: translateY(0); }
    }
    
    /* Responsive adjustments */
    @media (max-width: 768px) {
      .hero {
        padding: 80px 0;
      }
      
      .hero h1 {
        font-size: 2.5rem;
      }
      
      .recipe-card {
        margin-bottom: 20px;
      }
    }
  </style>
</head>
<body>
  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-light sticky-top">
    <div class="container">
      <a class="navbar-brand" href="home.jsp">Culinary Connect</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item">
            <a class="nav-link active" href="home.jsp">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="browse-recipes.jsp">Recipes</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Categories</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Contact</a>
          </li>
        </ul>
        <div class="ms-lg-3">
          <c:choose>
            <c:when test="${empty sessionScope.user}">
              <a href="login.jsp" class="btn btn-outline-primary me-2">Login</a>
              <a href="register.jsp" class="btn btn-primary">Register</a>
            </c:when>
            <c:otherwise>
              <a href="profile.jsp" class="btn btn-outline-primary me-2">My Account</a>
              <a href="add-recette.jsp" class="btn btn-primary">Add Recipe</a>
            </c:otherwise>
          </c:choose>
        </div>
      </div>
    </div>
  </nav>

  <!-- Hero Section -->
  <section class="hero">
    <div class="container">
      <div class="hero-content fade-in">
        <h1>Share Your Culinary Masterpieces</h1>
        <p>Join our community of food enthusiasts and share your favorite recipes with the world. Discover new flavors and cooking techniques from chefs around the globe.</p>
        <c:choose>
          <c:when test="${empty sessionScope.user}">
            <a href="register.jsp" class="btn btn-primary btn-lg me-2">Join Now</a>
          </c:when>
          <c:otherwise>
            <a href="add-recette.jsp" class="btn btn-primary btn-lg me-2">Add Recipe</a>
          </c:otherwise>
        </c:choose>
        <a href="browse-recipes.jsp" class="btn btn-outline-light btn-lg">Explore Recipes</a>
      </div>
    </div>
  </section>

  <!-- Featured Recipes Section -->
  <section class="container mb-5">
    <h2 class="section-title">Featured Recipes</h2>
    <div class="row">
      <c:forEach var="recipe" items="${featuredRecipes}" varStatus="status">
        <div class="col-lg-4 col-md-6">
          <div class="recipe-card position-relative">
            <c:if test="${status.index == 0}">
              <span class="featured-badge">Featured</span>
            </c:if>
            <div class="recipe-img-container">
              <img src="${recipe.imageUrl}" alt="${recipe.title}" class="recipe-img">
            </div>
            <div class="card-body">
              <span class="recipe-category">${recipe.category}</span>
              <h3 class="recipe-title">${recipe.title}</h3>
              <div class="recipe-meta">
                <span><i class="far fa-clock"></i> ${recipe.prepTime + recipe.cookTime} mins</span>
                <span><i class="fas fa-fire"></i> ${recipe.difficulty}</span>
                <span><i class="fas fa-utensils"></i> ${recipe.servings} servings</span>
              </div>
              <p class="recipe-description">${recipe.description}</p>
              <div class="recipe-footer">
                <div class="chef-info">
                  <img src="${recipe.chef.avatarUrl}" alt="${recipe.chef.name}" class="chef-avatar">
                  <span class="chef-name">${recipe.chef.name}</span>
                </div>
                <div class="recipe-likes">
                  <i class="fas fa-heart"></i> ${recipe.likes}
                </div>
              </div>
            </div>
          </div>
        </div>
      </c:forEach>
      
      <!-- If no recipes are available, show placeholders -->
      <c:if test="${empty featuredRecipes}">
        <!-- Recipe Card 1 -->
        <div class="col-lg-4 col-md-6">
          <div class="recipe-card position-relative">
            <span class="featured-badge">Featured</span>
            <div class="recipe-img-container">
              <img src="https://images.unsplash.com/photo-1551183053-bf91a1d81141?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=600&q=80" alt="Pasta Recipe" class="recipe-img">
            </div>
            <div class="card-body">
              <span class="recipe-category">Italian</span>
              <h3 class="recipe-title">Creamy Garlic Parmesan Pasta</h3>
              <div class="recipe-meta">
                <span><i class="far fa-clock"></i> 30 mins</span>
                <span><i class="fas fa-fire"></i> Medium</span>
                <span><i class="fas fa-utensils"></i> 4 servings</span>
              </div>
              <p class="recipe-description">A rich and creamy pasta dish with garlic, parmesan cheese, and fresh herbs that's perfect for a quick weeknight dinner.</p>
              <div class="recipe-footer">
                <div class="chef-info">
                  <img src="https://randomuser.me/api/portraits/women/65.jpg" alt="Chef" class="chef-avatar">
                  <span class="chef-name">Maria Rodriguez</span>
                </div>
                <div class="recipe-likes">
                  <i class="fas fa-heart"></i> 245
                </div>
              </div>
            </div>
          </div>
        </div>
        
        <!-- Recipe Card 2 -->
        <div class="col-lg-4 col-md-6">
          <div class="recipe-card">
            <div class="recipe-img-container">
              <img src="https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=600&q=80" alt="Pizza Recipe" class="recipe-img">
            </div>
            <div class="card-body">
              <span class="recipe-category">Italian</span>
              <h3 class="recipe-title">Homemade Margherita Pizza</h3>
              <div class="recipe-meta">
                <span><i class="far fa-clock"></i> 45 mins</span>
                <span><i class="fas fa-fire"></i> Easy</span>
                <span><i class="fas fa-utensils"></i> 2 servings</span>
              </div>
              <p class="recipe-description">Classic Margherita pizza with a crispy crust, fresh mozzarella, tomatoes, and basil. Simple yet delicious!</p>
              <div class="recipe-footer">
                <div class="chef-info">
                  <img src="https://randomuser.me/api/portraits/men/32.jpg" alt="Chef" class="chef-avatar">
                  <span class="chef-name">Alex Johnson</span>
                </div>
                <div class="recipe-likes">
                  <i class="fas fa-heart"></i> 189
                </div>
              </div>
            </div>
          </div>
        </div>
        
        <!-- Recipe Card 3 -->
        <div class="col-lg-4 col-md-6">
          <div class="recipe-card">
            <div class="recipe-img-container">
              <img src="https://images.unsplash.com/photo-1563729784474-d77dbb933a9e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=600&q=80" alt="Cake Recipe" class="recipe-img">
            </div>
            <div class="card-body">
              <span class="recipe-category">Dessert</span>
              <h3 class="recipe-title">Chocolate Lava Cake</h3>
              <div class="recipe-meta">
                <span><i class="far fa-clock"></i> 25 mins</span>
                <span><i class="fas fa-fire"></i> Medium</span>
                <span><i class="fas fa-utensils"></i> 6 servings</span>
              </div>
              <p class="recipe-description">Decadent chocolate cake with a molten center, served warm with a scoop of vanilla ice cream.</p>
              <div class="recipe-footer">
                <div class="chef-info">
                  <img src="https://randomuser.me/api/portraits/women/44.jpg" alt="Chef" class="chef-avatar">
                  <span class="chef-name">Emily Chen</span>
                </div>
                <div class="recipe-likes">
                  <i class="fas fa-heart"></i> 312
                </div>
              </div>
            </div>
          </div>
        </div>
      </c:if>
    </div>
    <div class="text-center mt-4">
      <a href="browse-recipes.jsp" class="btn btn-outline-primary btn-lg">View All Recipes</a>
    </div>
  </section>

  <!-- Categories Section -->
  <section class="categories-section">
    <div class="container">
      <h2 class="section-title">Browse Categories</h2>
      <div class="row">
        <div class="col-lg-3 col-md-4 col-6 mb-4">
          <div class="category-item">
            <div class="category-icon">
              <i class="fas fa-pizza-slice"></i>
            </div>
            <h4 class="category-title">Italian</h4>
            <div class="category-count">128 Recipes</div>
          </div>
        </div>
        <div class="col-lg-3 col-md-4 col-6 mb-4">
          <div class="category-item">
            <div class="category-icon">
              <i class="fas fa-hamburger"></i>
            </div>
            <h4 class="category-title">American</h4>
            <div class="category-count">95 Recipes</div>
          </div>
        </div>
        <div class="col-lg-3 col-md-4 col-6 mb-4">
          <div class="category-item">
            <div class="category-icon">
              <i class="fas fa-fish"></i>
            </div>
            <h4 class="category-title">Seafood</h4>
            <div class="category-count">76 Recipes</div>
          </div>
        </div>
        <div class="col-lg-3 col-md-4 col-6 mb-4">
          <div class="category-item">
            <div class="category-icon">
              <i class="fas fa-seedling"></i>
            </div>
            <h4 class="category-title">Vegetarian</h4>
            <div class="category-count">112 Recipes</div>
          </div>
        </div>
        <div class="col-lg-3 col-md-4 col-6 mb-4">
          <div class="category-item">
            <div class="category-icon">
              <i class="fas fa-cookie"></i>
            </div>
            <h4 class="category-title">Desserts</h4>
            <div class="category-count">143 Recipes</div>
          </div>
        </div>
        <div class="col-lg-3 col-md-4 col-6 mb-4">
          <div class="category-item">
            <div class="category-icon">
              <i class="fas fa-pepper-hot"></i>
            </div>
            <h4 class="category-title">Mexican</h4>
            <div class="category-count">87 Recipes</div>
          </div>
        </div>
        <div class="col-lg-3 col-md-4 col-6 mb-4">
          <div class="category-item">
            <div class="category-icon">
              <i class="fas fa-utensils"></i>
            </div>
            <h4 class="category-title">Asian</h4>
            <div class="category-count">104 Recipes</div>
          </div>
        </div>
        <div class="col-lg-3 col-md-4 col-6 mb-4">
          <div class="category-item">
            <div class="category-icon">
              <i class="fas fa-bread-slice"></i>
            </div>
            <h4 class="category-title">Bakery</h4>
            <div class="category-count">68 Recipes</div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- Newsletter Section -->
  <section class="newsletter">
    <div class="container text-center">
      <h2>Subscribe to Our Newsletter</h2>
      <p>Get weekly recipe inspiration, cooking tips, and exclusive content delivered to your inbox.</p>
      <div class="newsletter-form">
        <form action="NewsletterServlet" method="post">
          <input type="email" class="form-control newsletter-input" name="email" placeholder="Your email address" required>
          <button type="submit" class="btn newsletter-btn">Subscribe</button>
        </form>
      </div>
    </div>
  </section>

  <!-- Footer -->
  <footer>
    <div class="container">
      <div class="row">
        <div class="col-lg-4 mb-4">
          <h4 class="footer-title">About Culinary Connect</h4>
          <p>A community-driven platform for food enthusiasts to share recipes, cooking tips, and culinary experiences from around the world.</p>
          <div class="footer-social">
            <a href="#"><i class="fab fa-facebook-f"></i></a>
            <a href="#"><i class="fab fa-twitter"></i></a>
            <a href="#"><i class="fab fa-instagram"></i></a>
            <a href="#"><i class="fab fa-pinterest"></i></a>
            <a href="#"><i class="fab fa-youtube"></i></a>
          </div>
        </div>
        <div class="col-lg-2 col-md-4 mb-4">
          <h4 class="footer-title">Explore</h4>
          <ul class="footer-links">
            <li><a href="browse-recipes.jsp">Recipes</a></li>
            <li><a href="#">Categories</a></li>
            <li><a href="#">Chefs</a></li>
            <li><a href="#">Popular</a></li>
            <li><a href="#">Latest</a></li>
          </ul>
        </div>
        <div class="col-lg-2 col-md-4 mb-4">
          <h4 class="footer-title">Company</h4>
          <ul class="footer-links">
            <li><a href="#">About Us</a></li>
            <li><a href="#">Contact</a></li>
            <li><a href="#">Careers</a></li>
            <li><a href="#">Privacy Policy</a></li>
            <li><a href="#">Terms of Service</a></li>
          </ul>
        </div>
        <div class="col-lg-4 col-md-4 mb-4">
          <h4 class="footer-title">Contact Us</h4>
          <ul class="footer-links">
            <li><i class="fas fa-map-marker-alt me-2"></i> 123 Culinary Street, Foodville</li>
            <li><i class="fas fa-phone me-2"></i> (123) 456-7890</li>
            <li><i class="fas fa-envelope me-2"></i> info@culinaryconnect.com</li>
          </ul>
        </div>
      </div>
      <div class="copyright">
        &copy; 2025 Culinary Connect. All rights reserved.
      </div>
    </div>
  </footer>

  <!-- JavaScript -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
  <script>
    document.addEventListener('DOMContentLoaded', function() {
      // Add animation to elements when they come into view
      const observerOptions = {
        root: null,
        rootMargin: '0px',
        threshold: 0.1
      };
      
      const observer = new IntersectionObserver((entries, observer) => {
        entries.forEach(entry => {
          if (entry.isIntersecting) {
            entry.target.classList.add('fade-in');
            observer.unobserve(entry.target);
          }
        });
      }, observerOptions);
      
      document.querySelectorAll('.recipe-card, .category-item').forEach(item => {
        observer.observe(item);
      });
    });
  </script>
</body>
</html>