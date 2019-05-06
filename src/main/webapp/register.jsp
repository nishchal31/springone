<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Page</title>
<jsp:include page="header.jsp"></jsp:include>
</head>

<body><br><br>
<centre>
<form action="regStudent">
Roll No: <input type="text" name="rollNo"><br>
Name: <input type="text" name="name"><br>
Address: <input type="text" name="address"><br>
Username: <input type="text" name="username"><br>
Password: <input type="password" name="password"><br>

<input type="submit" value="Register">


</form>
</centre>
</body>
</html>