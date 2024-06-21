<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="signup.css">
    <title>Sign up</title>
</head>
<body>
    <jsp:include page="header.jsp"/>

    <session class="page body">
        <div class="container">
            <div class="left-side">
                <div class="profile-img">
                    <img src="assets/img/Why choose.jpg">
                </div>
            </div>
            <div class="right-side">
                <form action="CustomerInsert" method="post">
                    <h1>Sign Up</h1>
                    <div class="input-fields">
                        <input type="text" name="name" class="text" placeholder="Name">
                        <input type="text" name="email" class="text" placeholder="Email">
                        <input type="text" name="phone" class="text" placeholder="Phone number">
                        <input type="text" name="username" class="text" placeholder="Username">
                        <input type="password" name="password" class="text" placeholder="Password">
                    </div>

                    <input type="submit" name="submit" class="submit" value="Create Customer">
                    <h5>Already have an account? <a href="login.html">Log in</a></h5>
                </form>
            </div>
            <div class="clear"></div>
        </div>
    </session>

    <hr>
    <br>

    <jsp:include page="footer.jsp"/>

    <%
        String alertMessage = (String)request.getAttribute("alertMessage");
        if (alertMessage != null && !alertMessage.isEmpty()) {
    %>
    <script type="text/javascript">
        alert("<%= alertMessage %>");
    </script>
    <%
        }
    %>
</body>
</html>
