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
        <li><a href="home2.jsp">Home</a></li>
        <li><a href="index.jsp">Place Order</a></li>
        <li><a href="payment.jsp">Payment</a></li>
        <li><a href="feedbackinsert.jsp">feedback</a></li>
        <li><a href="contactus.jsp">Contact Us</a></li>
    </ul>
</div>
 <button class="login-btn" onclick="window.location='useraccount.jsp'" >Profile</button>
 <br>
    <button class="login-btn" onclick="window.location='login.jsp'"><img class="loginImg"src="assets/img/loginImg.png" alt="login">Logout</button>
    
</nav>
   </header>
   
   
</body>
</html>