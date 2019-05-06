<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #0184ff;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: #52527a;
}

.topnav a.active {
  background-color: #52527a;
  color: white;
}
</style>
</head>
<body>

<div class="topnav">
  <!-- <a class="active" href="login.jsp">Login</a> -->
  <a href="register.jsp">Register</a>
  <a href="showAll">All Records</a>
  <a href="index.jsp">Login</a>
</div>

<div style="padding-left:16px">
  <!-- <h2>Top Navigation Example</h2>
  <p>Some content..</p> -->
</div>

</body>
</html>