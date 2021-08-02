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
		<h2>Welcome Vendor ${vendor.name}</h2>
		<br/>
		<h4 style = "color:green">Your details are: </h4>
		<ul class = "list-group">
			<li class = "list-group-item"><b>Id: </b> ${vendor.id}</li>
			<li class = "list-group-item"><b>Id: </b> ${vendor.email}</li>
			<li class = "list-group-item"><b>Name: </b> ${vendor.name}</li>
			<li class = "list-group-item"><b>City: </b> ${vendor.city}</li>
			<li class = "list-group-item"><b>Phone no: </b> ${vendor.cell_no}</li>
			<li class = "list-group-item"><b>Registered Date: </b> ${vendor.reg_date}</li>
			
		</ul>	
	</div>

</body>
</html>