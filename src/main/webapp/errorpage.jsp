<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login error</title>
<jsp:include page="header.jsp"></jsp:include>
</head>
<body>
<!-- <h1>this is login error </h1> -->
${errormessage} 

<marquee width="90%" direction="left">
		<p style="color: red; font-size: 30px;">
			<i>Sorry! Login Failed ! Please provide valid credentials !!!</i>
		</p>
	</marquee>

</body>
</html>