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
		<br/>
		
		<form action="addvendortodb" method = "post" class = "form-contol">
			<h2>Add A new Vendor</h2>
			Name : <input type = "text" name = "name" class = "form-control"/>
			Email: <input type = "email" name = "email" class = "form-control"/>
			Password: <input type = "password" name = "password" class = "form-control"/>
			city: <input type = "text" name = "city" class = "form-control"/>
			Registered Date: <input type = "date" name = "reg_date" class = "form-control"/>
			Role: <input type = "text" name = "role" class = "form-control"/>
			<input type = "submit" value = "Add Vendor" class = "btn btn-primary"/>
		</form>
	</div>
	
</body>
</html>