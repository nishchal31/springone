<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>

<head>

<title>Success Page</title>

<script type="text/javascript">

	function edit() {
		alert("edit.....")
		document.myform.action = "edit";
		document.myform.submit();
	}
	
	function del() {
		alert("delete.........")
		document.myform.action = "delete";
		document.myform.submit();
	}
	
	</script>
	<jsp:include page="header.jsp"></jsp:include>
</head>
<body>

<form name="myform">

	<h1 align="center" style="color: red; font-family: cursive;">Student
		Management System</h1>

<table>
      <tr>
            <th>SELECT</th>
            <th>Roll No</th>
			<th>Name</th>
			<th>Address</th>
			<th>Username</th>
			<th>Password</th>
		
      </tr>
      
      <c:forEach items="${data}" var="s">
				<tr>
					<td><input type="radio" name="id" value="${s.rollNo}">
					</td>
					<td><c:out value="${s.rollNo}" /></td>
					<td><c:out value="${s.name}" /></td>
					<td><c:out value="${s.address}" /></td>
					<td><c:out value="${s.username}" /></td>
					<td><c:out value="${s.password}" /></td>
					
      </tr>
			</c:forEach>
	  
	  <tr>
				<td><input type="submit" onclick="edit()" value="EDIT" class="buttn">
				</td>

				<td><input type="submit" onclick="del()" value="DELETE" class="button">
				</td>



			</tr>
			</table>
</body>
</form>
</html>
