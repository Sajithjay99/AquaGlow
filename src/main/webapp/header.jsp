<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="header.css">
</head>
<body>

<header id="header">
    
    
<nav>
    <div class="logo">
        <a href="#"><img src="assets/img/logo.png" alt="logo">
            <div class="logo-text">
                <h1>AquaGlow</h1>
                <p>Laundry Service</p></a>
    </div>
</div>
<div class="nav-links" id="navLinks">
    <ul>
        <li><a href="home.jsp">Home</a></li>
        <li><a href="aboutus.jsp">About Us</a></li>
        <li><a href="gallery.jsp">Gallery</a></li>
        <li><a href="packages.jsp">Packages</a></li>
        <li><a href="reviews.jsp">Reviews</a></li>
        <li><a href="branches.jsp">Branches</a></li>
        
    </ul>
</div>
    <button class="login-btn" onclick="window.location='login.jsp'"><img class="loginImg"src="assets/img/loginImg.png" alt="login">Login</button>
    <button class="login-btn" onclick="window.location='CustomerInsert.jsp'"><img class="loginImg"src="assets/img/loginImg.png" alt="login">SignUp</button>
</nav>
   </header>
   
   
</body>
</html>