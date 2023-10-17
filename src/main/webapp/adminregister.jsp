<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
body {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
	background-color: Lightblue;
}

form {
	border: 1px solid #ccc;
	padding: 20px;
	width: 400px;
	background-color: #fff;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

table {
	border-collapse: collapse;
	width: 100%;
	height: 400px;
}

td {
	padding: 10px;
}
</style>
<body>
	<form action="adminRegister" method="post">
		<table border="1px" cellPadding="10px">
			<tr>
				<td colspan="2" align="center">
					<h1>Admin Registration</h1>
				</td>
			</tr>
			<tr>
				<td>Username</td>
				<td><input type="text" name="a_username" required></td>

			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="a_password" required></td>

			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Register"
					style="width: 150px; height: 40px; font-size: 15px; background-color: blue; color: white; cursor: pointer;">
				</td>
			</tr>

		</table>
	</form>

</body>
</html>