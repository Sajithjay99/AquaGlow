<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
        /* CSS for table */
        table {
            border-collapse: collapse;
            width: 50%;
            margin: 0 auto;
            border: 2px solid #333;
        }
        th, td {
            padding: 10px;
            border: 1px solid #ddd;
        }
        th {
            background-color: #007BFF;
            color: white;
        }
        
        /* CSS for input fields */
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
            input[type="submit"] {
            display: block; /* Make the button a block element */
            margin: 0 auto; /* Center the button horizontally */
            padding: 10px 20px;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        }
    </style>
    
</head>
<body>

<jsp:include page="header2.jsp"/>
<br>

	
    <%
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String userU = request.getParameter("uname");
        String passU = request.getParameter("pass");
    %>

    <form action="update" method="post">
        <table>
            <tr>
                <th colspan="2">Customer Information</th>
            </tr>
            <tr>
                <td>Customer ID</td>
                <td><input type="text" name="cusid" value="<%= id %>" readonly></td>
            </tr>
            <tr>
                <td>Name</td>
                <td><input type="text" name="name" value="<%= name %>"></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><input type="text" name="email" value="<%= email %>"></td>
            </tr>
            <tr>
                <td>Phone number</td>
                <td><input type="text" name="phone" value="<%= phone %>"></td>
            </tr>
            <tr>
                <td>User name</td>
                <td><input type="text" name="uname" value="<%= userU %>"></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="password" name="pass" value="<%= passU %>"></td>
            </tr>
        </table>
        <br>
        <input type="submit" name="submit" value="Update My Data">
    </form>
    
    <br><br>
	<jsp:include page="footer.jsp"/>
	
		
</body>
</html>