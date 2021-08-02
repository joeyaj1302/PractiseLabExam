<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<div class = "container">
		<h2>Login Form </h2>
		<br/>
		<h4 style= "color:red">${message}</h4>
		<form action="authenticate" method = "post" class = "form-signin">
			<table>
				<tr>
					<td>Email :</td>
					<td><input type = "text" name = "email" value = "some@gmail.com" class = "form-control"/></td>
				</tr>
				<tr>
					<td>Password :</td>
					<td><input type = "password" name = "password" value = "" class = "form-control"/></td>
				</tr>
				
			</table>
			<input type = "submit" value = "SignIn" class = "btn btn-primary"/>
		</form>
	</div>
</body>
</html>