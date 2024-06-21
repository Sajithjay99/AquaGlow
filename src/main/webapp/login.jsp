<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="login.css">
<title>Login Page</title>
</head>
<body>
   <jsp:include page="header.jsp"/>
    
    
    
       
        <!-- -----------------------------------------------Header end------------------------------------------------------------ -->
        <section class="section-login">
            <div class="form-box">
                <div class="form-value">

                    <form action="login"  method="post">
                        <h2>Login</h2>
                        <div class="inputbox">
                            <ion-icon name="person-circle-outline"></ion-icon>
                            <input type="text" name="username" >
                            <label>User Name</label>
                        </div>

                        <div class="inputbox">
                            <ion-icon name="lock-closed-outline"></ion-icon>
                             <input type="password" name="password" >
                            <label>Password</label>
                        </div>
                       
                        <input type="submit" name="submit" class="button-1" value="Login">
                        

                    </form>

                </div>


            </div>



        </section>
        
        <br>
         
</body>
</html>








