<%@taglib uri="http://www.springframework.org/tags/form" prefix="frm"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Data</title>
</head>
<body>
	<div align="center">
		<frm:form modelAttribute="employee">
		<h2>Registration Form</h2>
			<table border="1">
				<tr>
					<td><label>Name:</label></td>
					<td><frm:input type="text" path="email" /></td>
				</tr>
				<tr>
					<td><label>Email:</label></td>
					<td><frm:input type="text" path="pwd" /></td>
				</tr>
				<tr>
					<td><label>Role:</label></td>
					<td><frm:input type="text" path="role" /></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="submit"></td>
				</tr>
			</table>
			<br>
			<br>
			<h2><a href="./emp_data" style="text-decoration:none">Employee Data</a></h2>
		</frm:form>
	</div>
</body>
</html>