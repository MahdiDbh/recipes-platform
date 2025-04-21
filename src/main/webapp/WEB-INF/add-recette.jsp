<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Add New Recipe | Culinary Connect</title>
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
  
  .add-recipe-header {
    background-color: var(--dark);
    color: white;
    padding: 60px 0;
    position: relative;
  }
  
  .add-recipe-header:after {
    content: '';
    position: absolute;
    bottom: 0;
    left: 0;
    width: 100%;
    height: 80px;
    background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 1440 320'%3E%3Cpath fill='%23ffffff' fill-opacity='1' d='M0,96L48,112C96,128,192,160,288,160C384,160,480,128,576,122.7C672,117,768,139,864,149.3C960,160,1056,160,1152,138.7C1248,117,1344,75,1392,53.3L1440,32L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z'%3E%3C/path%3E%3C/svg%3E");
    background-size: cover;
    background-position: center;
  }
  
  .add-recipe-content {
    margin-top: -30px;
    position: relative;
    z-index: 10;
  }
  
  .recipe-form-card {
    background-color: white;
    border-radius: 15px;
    box-shadow: 0 5px 20px rgba(0,0,0,0.05);
    margin-bottom: 30px;
    overflow: hidden;
  }
  
  .recipe-form-header {
    padding: 20px 25px;
    border-bottom: 1px solid #f1f1f1;
  }
  
  .recipe-form-title {
    font-weight: 600;
    margin-bottom: 0;
  }
  
  .recipe-form-body {
    padding: 30px;
  }
  
  .form-recipe .form-label {
    font-weight: 500;
  }
  
  .image-upload-container {
    border: 2px dashed #dee2e6;
    border-radius: 10px;
    padding: 30px;
    text-align: center;
    cursor: pointer;
    transition: all 0.3s;
  }
  
  .image-upload-container:hover {
    border-color: var(--primary);
  }
  
  .image-upload-icon {
    font-size: 2.5rem;
    color: #adb5bd;
    margin-bottom: 15px;
  }
  
  .image-preview {
    width: 100%;
    height: 200px;
    border-radius: 10px;
    object-fit: cover;
    display: none;
  }
  
  .ingredient-item {
    display: flex;
    align-items: center;
    margin-bottom: 10px;
  }
  
  .ingredient-item .form-control {
    margin-right: 10px;
  }
  
  .ingredient-item .btn {
    flex-shrink: 0;
  }
  
  .instruction-item {
    display: flex;
    margin-bottom: 15px;
  }
  
  .instruction-number {
    width: 30px;
    height: 30px;
    background-color: var(--primary);
    color: white;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    font-weight: bold;
    margin-right: 15px;
    flex-shrink: 0;
    margin-top: 5px;
  }
  
  .instruction-content {
    flex: 1;
  }
  
  .instruction-actions {
    display: flex;
    justify-content: flex-end;
    margin-top: 10px;
  }
  
  .tag-container {
    display: flex;
    flex-wrap: wrap;
    gap: 10px;
    margin-top: 10px;
  }
  
  .tag-item {
    background-color: #f8f9fa;
    border-radius: 20px;
    padding: 5px 15px;
    display: flex;
    align-items: center;
    font-size: 0.9rem;
  }
  
  .tag-item i {
    margin-left: 8px;
    cursor: pointer;
    color: #6c757d;
  }
  
  .tag-item i:hover {
    color: var(--primary);
  }
  
  .recipe-tips {
    background-color: #f8f9fa;
    border-radius: 10px;
    padding: 20px;
    margin-bottom: 30px;
  }
  
  .recipe-tips-title {
    font-weight: 600;
    margin-bottom: 15px;
    display: flex;
    align-items: center;
  }
  
  .recipe-tips-title i {
    color: var(--primary);
    margin-right: 10px;
  }
  
  .recipe-tips-list {
    list-style-type: none;
    padding-left: 0;
  }
  
  .recipe-tips-list li {
    padding: 8px 0;
    position: relative;
    padding-left: 25px;
  }
  
  .recipe-tips-list li:before {
    content: '\f058';
    font-family: 'Font Awesome 5 Free';
    font-weight: 900;
    color: var(--primary);
    position: absolute;
    left: 0;
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
          <a class="nav-link" href="home.jsp">Home</a>
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
        <a href="profile.jsp" class="btn btn-outline-primary me-2">My Account</a>
      </div>
    </div>
  </div>
</nav>

<!-- Add Recipe Header -->
<header class="add-recipe-header">
  <div class="container text-center">
    <h1>Share Your Recipe</h1>
    <p class="lead">Share your culinary masterpiece with food enthusiasts around the world</p>
  </div>
</header>

<!-- Add Recipe Content -->
<section class="add-recipe-content">
  <div class="container">
    <div class="row">
      <div class="col-lg-8 mx-auto">
        <c:if test="${not empty errorMessage}">
          <div class="alert alert-danger" role="alert">
            ${errorMessage}
          </div>
        </c:if>
        <c:if test="${not empty successMessage}">
          <div class="alert alert-success" role="alert">
            ${successMessage}
          </div>
        </c:if>
        
        <div class="recipe-form-card">
          <div class="recipe-form-header">
            <h4 class="recipe-form-title">Recipe Details</h4>
          </div>
          <div class="recipe-form-body">
            <form class="form-recipe" action="AddRecipeServlet" method="post" enctype="multipart/form-data">
              <!-- Basic Information -->
              <div class="mb-4">
                <label for="recipeTitle" class="form-label">Recipe Title</label>
                <input type="text" class="form-control" id="recipeTitle" name="recipeTitle" placeholder="Enter a descriptive title for your recipe" required>
              </div>
              
              <div class="mb-4">
                <label for="recipeDescription" class="form-label">Description</label>
                <textarea class="form-control" id="recipeDescription" name="recipeDescription" rows="3" placeholder="Briefly describe your recipe and what makes it special" required></textarea>
              </div>
              
              <div class="row mb-4">
                <div class="col-md-6 mb-3 mb-md-0">
                  <label for="recipeCategory" class="form-label">Category</label>
                  <select class="form-select" id="recipeCategory" name="recipeCategory" required>
                    <option value="" selected disabled>Select a category</option>
                    <option value="breakfast">Breakfast</option>
                    <option value="lunch">Lunch</option>
                    <option value="dinner">Dinner</option>
                    <option value="appetizer">Appetizer</option>
                    <option value="dessert">Dessert</option>
                    <option value="snack">Snack</option>
                    <option value="beverage">Beverage</option>
                  </select>
                </div>
                <div class="col-md-6">
                  <label for="recipeCuisine" class="form-label">Cuisine</label>
                  <select class="form-select" id="recipeCuisine" name="recipeCuisine" required>
                    <option value="" selected disabled>Select a cuisine</option>
                    <option value="italian">Italian</option>
                    <option value="mexican">Mexican</option>
                    <option value="asian">Asian</option>
                    <option value="american">American</option>
                    <option value="mediterranean">Mediterranean</option>
                    <option value="indian">Indian</option>
                    <option value="french">French</option>
                    <option value="other">Other</option>
                  </select>
                </div>
              </div>
              
              <!-- Recipe Image -->
              <div class="mb-4">
                <label class="form-label">Recipe Image</label>
                <div class="image-upload-container" id="imageUploadContainer">
                  <div class="image-upload-content">
                    <div class="image-upload-icon">
                      <i class="fas fa-cloud-upload-alt"></i>
                    </div>
                    <h5>Upload Recipe Image</h5>
                    <p class="text-muted">Drag and drop an image or click to browse</p>
                    <button type="button" class="btn btn-outline-primary">Select Image</button>
                  </div>
                  <img src="/placeholder.svg" alt="Recipe Preview" class="image-preview" id="imagePreview">
                </div>
                <input type="file" id="recipeImage" name="recipeImage" class="d-none" accept="image/*">
                <div class="form-text">High-quality images help your recipe stand out. Use a photo with good lighting that showcases your dish.</div>
              </div>
              
              <!-- Cooking Details -->
              <div class="row mb-4">
                <div class="col-md-3 col-6 mb-3 mb-md-0">
                  <label for="prepTime" class="form-label">Prep Time (mins)</label>
                  <input type="number" class="form-control" id="prepTime" name="prepTime" min="0" required>
                </div>
                <div class="col-md-3 col-6 mb-3 mb-md-0">
                  <label for="cookTime" class="form-label">Cook Time (mins)</label>
                  <input type="number" class="form-control" id="cookTime" name="cookTime" min="0" required>
                </div>
                <div class="col-md-3 col-6">
                  <label for="servings" class="form-label">Servings</label>
                  <input type="number" class="form-control" id="servings" name="servings" min="1" required>
                </div>
                <div class="col-md-3 col-6">
                  <label for="difficulty" class="form-label">Difficulty</label>
                  <select class="form-select" id="difficulty" name="difficulty" required>
                    <option value="easy">Easy</option>
                    <option value="medium">Medium</option>
                    <option value="hard">Hard</option>
                  </select>
                </div>
              </div>
              
              <!-- Ingredients -->
              <div class="mb-4">
                <label class="form-label">Ingredients</label>
                <div id="ingredientsList">
                  <div class="ingredient-item">
                    <input type="text" class="form-control" name="ingredients[]" placeholder="e.g. 2 cups flour" required>
                    <button type="button" class="btn btn-outline-danger btn-sm ingredient-remove" disabled>
                      <i class="fas fa-times"></i>
                    </button>
                  </div>
                  <div class="ingredient-item">
                    <input type="text" class="form-control" name="ingredients[]" placeholder="e.g. 1 tablespoon sugar" required>
                    <button type="button" class="btn btn-outline-danger btn-sm ingredient-remove">
                      <i class="fas fa-times"></i>
                    </button>
                  </div>
                </div>
                <button type="button" class="btn btn-outline-primary btn-sm mt-2" id="addIngredient">
                  <i class="fas fa-plus"></i> Add Ingredient
                </button>
              </div>
              
              <!-- Instructions -->
              <div class="mb-4">
                <label class="form-label">Instructions</label>
                <div id="instructionsList">
                  <div class="instruction-item">
                    <div class="instruction-number">1</div>
                    <div class="instruction-content">
                      <textarea class="form-control" name="instructions[]" rows="2" placeholder="Describe this step..." required></textarea>
                      <div class="instruction-actions">
                        <button type="button" class="btn btn-outline-danger btn-sm instruction-remove" disabled>
                          <i class="fas fa-times"></i> Remove
                        </button>
                      </div>
                    </div>
                  </div>
                  <div class="instruction-item">
                    <div class="instruction-number">2</div>
                    <div class="instruction-content">
                      <textarea class="form-control" name="instructions[]" rows="2" placeholder="Describe this step..." required></textarea>
                      <div class="instruction-actions">
                        <button type="button" class="btn btn-outline-danger btn-sm instruction-remove">
                          <i class="fas fa-times"></i> Remove
                        </button>
                      </div>
                    </div>
                  </div>
                </div>
                <button type="button" class="btn btn-outline-primary btn-sm mt-2" id="addInstruction">
                  <i class="fas fa-plus"></i> Add Step
                </button>
              </div>
              
              <!-- Nutrition Information (Optional) -->
              <div class="mb-4">
                <label class="form-label">Nutrition Information (Optional)</label>
                <div class="row">
                  <div class="col-md-3 col-6 mb-3">
                    <label for="calories" class="form-label">Calories</label>
                    <input type="number" class="form-control" id="calories" name="calories" placeholder="kcal">
                  </div>
                  <div class="col-md-3 col-6 mb-3">
                    <label for="protein" class="form-label">Protein</label>
                    <input type="number" class="form-control" id="protein" name="protein" placeholder="g">
                  </div>
                  <div class="col-md-3 col-6 mb-3">
                    <label for="carbs" class="form-label">Carbs</label>
                    <input type="number" class="form-control" id="carbs" name="carbs" placeholder="g">
                  </div>
                  <div class="col-md-3 col-6 mb-3">
                    <label for="fat" class="form-label">Fat</label>
                    <input type="number" class="form-control" id="fat" name="fat" placeholder="g">
                  </div>
                </div>
              </div>
              
              <!-- Tags -->
              <div class="mb-4">
                <label for="recipeTags" class="form-label">Tags</label>
                <div class="input-group">
                  <input type="text" class="form-control" id="recipeTags" placeholder="Add a tag and press Enter">
                  <button class="btn btn-outline-secondary" type="button" id="addTag">Add</button>
                </div>
                <div class="form-text">Tags help users find your recipe. Examples: vegan, gluten-free, quick dinner</div>
                <div class="tag-container" id="tagContainer">
                  <!-- Hidden input to store all tags -->
                  <input type="hidden" id="allTags" name="tags" value="">
                </div>
              </div>
              
              <!-- Notes -->
              <div class="mb-4">
                <label for="recipeNotes" class="form-label">Additional Notes (Optional)</label>
                <textarea class="form-control" id="recipeNotes" name="recipeNotes" rows="3" placeholder="Share any tips, variations, or additional information about your recipe"></textarea>
              </div>
              
              <!-- Submit Buttons -->
              <div class="d-flex justify-content-between">
                <button type="button" class="btn btn-outline-secondary" id="saveDraft" name="action" value="draft">Save as Draft</button>
                <button type="submit" class="btn btn-primary" name="action" value="publish">Publish Recipe</button>
              </div>
            </form>
          </div>
        </div>
        
        <!-- Recipe Tips -->
        <div class="recipe-tips">
          <h5 class="recipe-tips-title">
            <i class="fas fa-lightbulb"></i> Tips for a Great Recipe
          </h5>
          <ul class="recipe-tips-list">
            <li>Be specific with measurements and ingredients</li>
            <li>Break down complex steps into smaller, manageable instructions</li>
            <li>Include prep time, cook time, and total time</li>
            <li>Add notes about possible substitutions for ingredients</li>
            <li>Upload a high-quality photo that showcases your finished dish</li>
            <li>Mention any special equipment needed</li>
            <li>Include storage instructions if applicable</li>
          </ul>
        </div>
      </div>
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
          <li><i class="fas fa-map-marker-alt me-2"></i> Algeria ,Algier , El mohammadia </li>
          <li><i class="fas fa-phone me-2"></i> +213 556 12 24 28</li>
          <li><i class="fas fa-envelope me-2"></i> mahdi.debbah@outlook.com</li>
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
    // Image Upload Preview
    const imageUploadContainer = document.getElementById('imageUploadContainer');
    const imagePreview = document.getElementById('imagePreview');
    const recipeImage = document.getElementById('recipeImage');
    
    if (imageUploadContainer) {
      imageUploadContainer.addEventListener('click', function() {
        recipeImage.click();
      });
      
      recipeImage.addEventListener('change', function() {
        const file = this.files[0];
        if (file) {
          const reader = new FileReader();
          reader.onload = function(e) {
            imagePreview.src = e.target.result;
            imagePreview.style.display = 'block';
            imageUploadContainer.querySelector('.image-upload-content').style.display = 'none';
          }
          reader.readAsDataURL(file);
        }
      });
    }
    
    // Add Ingredient
    const addIngredientBtn = document.getElementById('addIngredient');
    const ingredientsList = document.getElementById('ingredientsList');
    
    if (addIngredientBtn && ingredientsList) {
      addIngredientBtn.addEventListener('click', function() {
        const newIngredient = document.createElement('div');
        newIngredient.className = 'ingredient-item';
        newIngredient.innerHTML = `
          <input type="text" class="form-control" name="ingredients[]" placeholder="e.g. 1 cup milk" required>
          <button type="button" class="btn btn-outline-danger btn-sm ingredient-remove">
            <i class="fas fa-times"></i>
          </button>
        `;
        ingredientsList.appendChild(newIngredient);
        
        // Add event listener to the new remove button
        const removeBtn = newIngredient.querySelector('.ingredient-remove');
        removeBtn.addEventListener('click', function() {
          ingredientsList.removeChild(newIngredient);
        });
      });
      
      // Add event listeners to existing remove buttons
      document.querySelectorAll('.ingredient-remove').forEach(btn => {
        if (!btn.disabled) {
          btn.addEventListener('click', function() {
            const ingredientItem = this.parentElement;
            ingredientsList.removeChild(ingredientItem);
          });
        }
      });
    }
    
    // Add Instruction
    const addInstructionBtn = document.getElementById('addInstruction');
    const instructionsList = document.getElementById('instructionsList');
    
    if (addInstructionBtn && instructionsList) {
      addInstructionBtn.addEventListener('click', function() {
        const instructionCount = instructionsList.children.length + 1;
        const newInstruction = document.createElement('div');
        newInstruction.className = 'instruction-item';
        newInstruction.innerHTML = `
          <div class="instruction-number">${instructionCount}</div>
          <div class="instruction-content">
            <textarea class="form-control" name="instructions[]" rows="2" placeholder="Describe this step..." required></textarea>
            <div class="instruction-actions">
              <button type="button" class="btn btn-outline-danger btn-sm instruction-remove">
                <i class="fas fa-times"></i> Remove
              </button>
            </div>
          </div>
        `;
        instructionsList.appendChild(newInstruction);
        
        // Add event listener to the new remove button
        const removeBtn = newInstruction.querySelector('.instruction-remove');
        removeBtn.addEventListener('click', function() {
          instructionsList.removeChild(newInstruction);
          // Update instruction numbers
          updateInstructionNumbers();
        });
      });
      
      // Add event listeners to existing remove buttons
      document.querySelectorAll('.instruction-remove').forEach(btn => {
        if (!btn.disabled) {
          btn.addEventListener('click', function() {
            const instructionItem = this.closest('.instruction-item');
            instructionsList.removeChild(instructionItem);
            // Update instruction numbers
            updateInstructionNumbers();
          });
        }
      });
      
      // Function to update instruction numbers
      function updateInstructionNumbers() {
        const instructions = instructionsList.querySelectorAll('.instruction-item');
        instructions.forEach((item, index) => {
          item.querySelector('.instruction-number').textContent = index + 1;
        });
      }
    }
    
    // Add Tag
    const addTagBtn = document.getElementById('addTag');
    const recipeTagsInput = document.getElementById('recipeTags');
    const tagContainer = document.getElementById('tagContainer');
    const allTagsInput = document.getElementById('allTags');
    let tags = [];
    
    if (addTagBtn && recipeTagsInput && tagContainer) {
      // Function to add a tag
      function addTag() {
        const tagText = recipeTagsInput.value.trim();
        if (tagText && !tags.includes(tagText)) {
          tags.push(tagText);
          
          const newTag = document.createElement('div');
          newTag.className = 'tag-item';
          newTag.innerHTML = `${tagText} <i class="fas fa-times"></i>`;
          tagContainer.appendChild(newTag);
          
          // Update hidden input with all tags
          allTagsInput.value = tags.join(',');
          
          // Add event listener to remove tag
          const removeIcon = newTag.querySelector('i');
          removeIcon.addEventListener('click', function() {
            tagContainer.removeChild(newTag);
            tags = tags.filter(tag => tag !== tagText);
            allTagsInput.value = tags.join(',');
          });
          
          // Clear input
          recipeTagsInput.value = '';
        }
      }
      
      // Add tag on button click
      addTagBtn.addEventListener('click', addTag);
      
      // Add tag on Enter key press
      recipeTagsInput.addEventListener('keypress', function(e) {
        if (e.key === 'Enter') {
          e.preventDefault();
          addTag();
        }
      });
    }
    
    // Save as Draft button
    const saveDraftBtn = document.getElementById('saveDraft');
    if (saveDraftBtn) {
      saveDraftBtn.addEventListener('click', function() {
        // Set the form action to save as draft
        this.form.action = 'SaveDraftServlet';
        this.form.submit();
      });
    }
  });
</script>
</body>
</html>