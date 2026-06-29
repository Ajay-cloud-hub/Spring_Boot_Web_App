<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EMPLOYEES</title>
</head>
<body>
	<center>
		<table border="1px">
			<tr>
				<th>EMAIL</th>
				<th>PASSWORD</th>
				<th>ROLE</th>
				<th>Edit/Update</th>
				<th>Delete</th>
			</tr>
			<br>
			<c:forEach var="emp" items="${empList}">
				<tr>
					<td>${emp.email}</td>
					<td>${emp.pwd}</td>
					<td>${emp.role}</td>
					<td><a href="/update?id=${emp.id}">update</a></td>
					<td><a href="/delete?id=${emp.id}">delete</a></td>
				</tr>
			</c:forEach>
		</table><br><br>
		<a href="/register">Register Here...</a>
	</center>
</body>
</html>