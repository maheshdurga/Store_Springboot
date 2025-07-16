<%@page import="com.example.Supplement_Store.entities.Product"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Supplements Store - Home</title>
    <link rel="stylesheet" href="/static/css/home-style.css">
     <link rel="stylesheet" href="<c:url value='/static/css/header-style.css'/>" />
</head>
<body>

   <!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Supplements Store</title>
  <link rel="stylesheet" href="style.css"> <!-- Link to CSS below -->
</head>
<body style="background-color:orange;">

<header class="site-header">
  <div class="container">
    <h1 class="logo">Supplements Store</h1>
    <nav class="main-nav">
      <a href="/home">Home</a>
      <a href="/products">Products</a>
      <a href="/cart">Cart</a>
      <a href="/auth/login">Login</a>
      <a href="/auth/signup">Register</a>
    </nav>
    <form class="search-box">
      <input type="text" placeholder="Search supplements...">
      <button type="submit">Search</button>
    </form>
  </div>
</header>

</body>
</html>


    <main>
        <section class="hero">
            <h2>Welcome to Supplements Store</h2>
            <p>Your trusted source for quality health supplements.</p>
        </section>
    </main>
    
    <h2>Available Supplements</h2>
<div style="display: flex; flex-wrap: wrap; gap: 20px; justify-content: center;">    
<%List<Product> products=(List<Product>)request.getAttribute("products"); %>
<%for (int i=0;i<10;i++){ %>
<div style=" padding: 10px; width: 200px; text-align: center;">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRl7ak5NilKxxpgNvYYAh45SCZmWvLDa2N6dQ&s" 
             style="width:100%; height:auto;">
        <h3>Name</h3>
        <h3> Price</h3>
        <p>Description</p>
</div>
<%} %>


    <footer style="background-color:black; color:#fff; text-align:center; width:100%;">
  <p>&copy; 2025 Your Company Name. All rights reserved.</p>
  <nav>
    <a href="/privacy-policy.html" style="color:#ccc; margin: 0 10px;">Privacy Policy</a> |
    <a href="/terms.html" style="color:#ccc; margin: 0 10px;">Terms of Service</a> |
    <a href="/contact.html" style="color:#ccc; margin: 0 10px;">Contact Us</a>
  </nav>
</footer>


</body>
</html>
