<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	<h2>Vendor Site</h2>
	<form method="post" action="authenticate">
		<table>
			<tr>	
				<td>Email:</td>
				<td><input type="text" name="email"/></td>
			</tr>
			<tr>	
				<td>Password:</td>
				<td><input type="password" name="password"/></td>
			</tr>
			<tr>	
				<td colspan="2">
					<input type="submit" value="Sign In"/>
					
				</td>
			</tr>
		</table>
	</form>
</body>
</html>

