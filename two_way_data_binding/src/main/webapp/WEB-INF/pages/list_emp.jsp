<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EMPLOYEES</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div align="center">
		<h2>Employee Data</h2>
		<br> <br>
		<table class="table">
			<tr>
			 	<th class="text-center">EMAIL</th>
				<th class="text-center">PASSWORD</th>
				<th class="text-center">ROLE</th>
				<th class="text-center">Edit/Update</th>
				<th class="text-center">Delete</th>
			</tr>
			<c:forEach var="emp" items="${empList}">
				<tr>
					<td align="center">${emp.email}</td>
					<td align="center">${emp.pwd}</td>
					<td align="center">${emp.role}</td>
					<td align="center"><a href="/update?id=${emp.id}"
						style="text-decoration: none;">update</a></td>
					<td align="center"><a href="/delete?id=${emp.id}"
						style="text-decoration: none;">delete</a></td>
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