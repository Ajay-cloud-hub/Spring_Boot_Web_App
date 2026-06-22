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
	<frm:form modelAttribute="employee">
		<center>
			<table border="1">
				<div>
					<label>Name:</label>
					<frm:input type="text" path="email" />
				</div>
				<br>

				<div>
					<label>Email:</label>
					<frm:input type="text" path="pwd" />
				</div>
				<br>

				<div>
					<label>Role:</label>
					<frm:input type="text" path="role" />
				</div>
				<br>

				<div>
					<input type="submit" value="submit">
				</div>
			</table>
		</center>
	</frm:form>
	</table>
</body>
</html>