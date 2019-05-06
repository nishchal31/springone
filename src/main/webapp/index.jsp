<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<jsp:include page="header.jsp"></jsp:include>
</head>
<body><br><br>
<form action="log">
Username<input type="text" name="usernme"><br>
Password<input type="password" name="passwrd"><br>
<input type="submit" value="Login">

<a href="register.jsp">Register Here</a>
</form>
</body>
</html>