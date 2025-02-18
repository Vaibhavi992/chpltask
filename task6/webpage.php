<?php include('dbcon.php'); ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Restaurant Website</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="style.css">
    <!-- Add this in your <head> section -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>


</head>

<body>
    <!-- Navbar with Dynamic Logo -->
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">
                    <img src="./upload/" id="logo" alt="Restaurant Logo" class="d-inline-block align-text-top"
                        style="height: 60px;">
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item">
                            <a class="nav-link active text-white" href="#home">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#menu">Menu</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#about">About Us</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#contact">Contact</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>

    <!-- Hero Section -->
    <section id="home" class="text-center py-5"
        style="background-image: url('../images/food3jpg.jpg'); background-size: cover;">
        <div class="container">
            <h1 class="display-4 text-white">Welcome to Our Restaurant</h1>
            <p class="lead text-white">Delicious food awaits you!</p>
        </div>
    </section>

    <!-- Menu Section -->
    <section id="menu" class="py-5 bg-light">
        <div class="container">
            <h2 class="text-center mb-5">Our Menu</h2>
            <div class="row" id="menu-item">
                <!-- ajax through get data -->
            </div>
        </div>
    </section>

    <!-- About Us Section -->
    <section id="about" class="py-5">
        <div class="container">
            <h2 class="text-center mb-4">About Us</h2>
            <p id="about-text"></p>
        </div>
    </section>

    <!-- Contact Us Section -->
    <section id="contact" class="py-5 bg-light">
        <div class="container">
            <h2 class="text-center mb-4">Contact Us</h2>
            <div class="row">
                <div class="col-md-8" id="contact-info">
                </div>
                <div class="col-md-4" id="social-links">
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="bg-dark text-white text-center py-3">

        <!-- Footer -->
        <footer class="bg-dark text-white text-center py-3">
            <p>&copy; 2025 Restaurant ! All Right Reserved. </p>
        </footer>

        <script src="script.js"></script>

</body>

</html>