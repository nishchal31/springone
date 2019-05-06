<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html lang="en">

<head>
  
<!-- css for form -->
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: black;
}

* {
  box-sizing: border-box;
}

/* Add padding to containers */
.container {
  padding: 16px;
  background-color: #a3a3c2;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 50%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
  background-color: #ff1a1a;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 40%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
  
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color:  #ff4d4d;
  text-align: center;
}
</style>


<!-- css for radio button -->

<style>
/* the container */
.container1 {
  display: block;
  position: relative;
  padding-left: 35px;
  margin-bottom: 12px;
  cursor: pointer;
  font-size: 22px;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}

/* Hide the browser's default radio button */
.container input1 {
  position: absolute;
  opacity: 0;
  cursor: pointer;
}

/* Create a custom radio button */
.checkmark {
  position: absolute;
  top: 0;
  left: 0;
  height: 25px;
  width: 25px;
  background-color: #eee;
  border-radius: 50%;
}

/* On mouse-over, add a grey background color */
.container1:hover input ~ .checkmark {
  background-color: #ccc;
}

/* When the radio button is checked, add a blue background */
.container input1:checked ~ .checkmark {
  background-color: #2196F3;
}

/* Create the indicator (the dot/circle - hidden when not checked) */
.checkmark:after {
  content: "";
  position: absolute;
  display: none;
}

/* Show the indicator (dot/circle) when checked */
.container input1:checked ~ .checkmark:after {
  display: block;
}

/* Style the indicator (dot/circle) */
.container1 .checkmark:after {
 	top: 9px;
	left: 9px;
	width: 8px;
	height: 8px;
	border-radius: 50%;
	background: white;
}
</style>
<jsp:include page="header.jsp"></jsp:include>
</head>
<body>
<form action="update" modelAttribute="student">
		<div class="container">
			<h1>Update Information Here !</h1>
			<p>Please fill in this form to update information.</p>
    <hr>
<label for="rollNo"><b>Roll No</b></label><br>
    <input type="text" placeholder="Enter Roll rollno" name="rollNo" required value="${data.rollNo}">
    <br>
    <label for="name"><b>Name</b></label><br>
    <input type="text" placeholder="Enter Name" name="name" required value="${data.name}">
    <br>
    <label for="address"><b>Address</b></label><br>
    <input type="text" placeholder="Enter Address" name="address" required value="${data.address}">
    <br>
    <label for="username"><b>Username</b></label><br>
    <input type="text" placeholder="Enter username" name="username" required value="${data.username}">
    <br>
    <label for="password"><b>Password</b></label><br>
    <input type="text" placeholder="Enter password" name="password" required value="${data.password}">
    <br> 
  <br>
    <button type="submit" class="registerbtn">Update</button>
  </div>
  <div class="container signin">
    <p>Already have an account? <a href="login.jsp" style="color: purple">Sign in</a>.</p>
  </div>
</form>
</body>
</html>