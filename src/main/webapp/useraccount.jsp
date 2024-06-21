<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Account Page</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
        background-color: #f8f9fa;
        margin: 0;
        padding: 0;
    }

    table {
        width: 80%;
        margin: 20px auto;
        border-collapse: collapse;
        background-color: #ffffff;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        border-radius: 10px;
    }

    th, td {
        padding: 15px;
        text-align: left;
    }

    th {
        background-color: #007bff;
        color: white;
    }

    tr:nth-child(even) {
        background-color: #f1f1f1;
    }

    .button-container {
        text-align: center;
        margin-top: 20px;
    }

    .update-button,
    .delete-button {
        background-color: #007bff;
        color: #fff;
        border: none;
        padding: 10px 20px;
        border-radius: 5px;
        cursor: pointer;
        text-decoration: none;
        font-size: 16px;
        margin-right: 10px;
    }

    .update-button:hover,
    .delete-button:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>

<jsp:include page="header2.jsp"/>


<table>

	 <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Phone</th>
        <th>Username</th>
        <th>Password</th>
    </tr>
    <c:forEach var="cus" items="${cusDetails}">
    
        <c:set var="id" value="${cus.id}"></c:set>
        <c:set var="name" value="${cus.name}"></c:set>
        <c:set var="email" value="${cus.email}"></c:set>
        <c:set var="phone" value="${cus.phone}"></c:set>
        <c:set var="username" value="${cus.username}"></c:set>
        <c:set var="password" value="${cus.password}"></c:set>

        <tr>
            <td>${cus.id}</td>
            <td>${cus.name}</td>
            <td>${cus.email}</td>
            <td>${cus.phone}</td>
            <td>${cus.username}</td>
            <td>${cus.password}</td>
        </tr>
    </c:forEach>
</table>




<div class="button-container">
    <c:url value="updatecustomer.jsp" var="cusupdate">
        <c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="userU" value="${username}"/>
		<c:param name="passU" value="${password}"/>
    </c:url>
    <a href="${cusupdate}" class="update-button">Update My Data</a>

    <c:url value="deletecustomer.jsp" var="cusdelete">
		<c:param name="id" value="${id}" />
		<c:param name="name" value="${name}" />
		<c:param name="email" value="${email}" />
		<c:param name="uname" value="${username}" />
		<c:param name="pass" value="${password}" />
	</c:url>
    <a href="${cusdelete}" class="delete-button">Delete My Account</a>
    
    
</div>

<br><br>

<jsp:include page="footer.jsp"/>




</body>
</html>
