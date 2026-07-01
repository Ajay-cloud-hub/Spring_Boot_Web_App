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
	<div align="center">
	<h2>Employee Data</h2>
		<table border="1">
			<tr>
				<th>EMAIL</th>
				<th>PASSWORD</th>
				<th>ROLE</th>
				<th>Edit/Update</th>
				<th>Delete</th>
			</tr>
			<c:forEach var="emp" items="${empList}">
				<tr>
					<td align="center">${emp.email}</td>
					<td align="center">${emp.pwd}</td>
					<td align="center">${emp.role}</td>
					<td align="center"><a href="/update?id=${emp.id}" style="text-decoration: none;">update</a></td>
					<td align="center"><a href="/delete?id=${emp.id}" style="text-decoration: none;">delete</a></td>
				</tr>
			</c:forEach>
		</table>
		<br> <br>
		<h2>
			<a href="/register">Register Here...</a>
		</h2>
	</div>
</body>
</html>