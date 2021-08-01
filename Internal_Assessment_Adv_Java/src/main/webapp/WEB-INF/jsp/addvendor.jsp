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
	<div class= "container">
		<br/>
		<br/>
		<form method="post" action ="addvendortodb" class = "form">
			<h3>Add a new Vendor to DataBase :</h3>
			<br/>
			Name : <input type = "text" name ="name" value="" class="form-control"/><br>
			Email  :<input type="email" name = "email" Value ="" class="form-control"/><br>
			Password : <input type = "password" name ="password" value="" class="form-control"/><br>
			City : <input type= "text" name = "city" Value ="" class="form-control"/><br>
			Cell No :<input type = "text" name ="cell_no" value="" class="form-control"/><br>
			Reg Amount<input type="number" name = "reg_amount" Value ="" class="form-control"/><br>
			Reg Date : <input type = "date" name ="reg_date" value="" class="form-control"/><br>
			Role : <input type="text" name = "role" Value =""  class="form-control"/><br>
			<input type="submit" value= "Add Vendor" class = "btn btn-primary"/>
	</form>
	</div>
</body>
</html>