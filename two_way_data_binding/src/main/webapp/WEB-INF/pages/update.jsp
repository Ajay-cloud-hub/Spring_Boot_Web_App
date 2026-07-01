<%@taglib uri="http://www.springframework.org/tags/form" prefix="frm"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Form</title>
</head>
<body>
	<div align="center">
		<frm:form modelAttribute="employee">
			<h2>Update Form</h2>
			<table border="1">
				<frm:hidden path="id" />
				<tr>
					<td>Email:</td>
					<td><frm:input path="email" /></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><frm:input path="pwd" /></td>
				</tr>
				<tr>
					<td>Role:</td>
					<td><frm:input path="role" /></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="submit"></td>
			</table>
		</frm:form>
		<br> <br>
		<h2>
			<a href="/emp_data" style="text-decoration:none">Employee Data</a>
		</h2>
	</div>
</body>
</html>