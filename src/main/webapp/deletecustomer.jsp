<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
</head>
<body>

<jsp:include page="header2.jsp"/>

<%
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String userU = request.getParameter("uname");
%>

<h1 style="text-align: center;">Customer Account Delete</h1>

<form action="delete" method="post" style="text-align: center;">
    <table style="width: 50%; margin: 0 auto; border-collapse: collapse; border: 2px solid #333;">
        <tr>
            <th style="background-color: #DC3545; color: white;" colspan="2">Customer Information</th>
        </tr>
        <tr>
            <td style="padding: 10px;">Customer ID</td>
            <td><input type="text" name="cusid" value="<%= id %>" readonly style="width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 5px; background-color: #f5f5f5;"></td>
        </tr>
        <tr>
            <td style="padding: 10px;">Name</td>
            <td><input type="text" name="name" value="<%= name %>" readonly style="width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 5px; background-color: #f5f5f5;"></td>
        </tr>
        <tr>
            <td style="padding: 10px;">Email</td>
            <td><input type="text" name="email" value="<%= email %>" readonly style="width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 5px; background-color: #f5f5f5;"></td>
        </tr>
        <tr>
            <td style="padding: 10px;">Phone number</td>
            <td><input type="text" name="phone" value="<%= phone %>" readonly style="width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 5px; background-color: #f5f5f5;"></td>
        </tr>
        <tr>
            <td style="padding: 10px;">User name</td>
            <td><input type="text" name="uname" value="<%= userU %>" readonly style="width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 5px; background-color: #f5f5f5;"></td>
        </tr>
    </table>
    <br>
    <input type="submit" name="submit" value="Delete My Account" style="display: block; margin: 0 auto; padding: 10px 20px; background-color: #DC3545; color: white; border: none; border-radius: 5px; cursor: pointer;">
</form>


<br><br>

<jsp:include page="footer.jsp"/>
</body>
</html>