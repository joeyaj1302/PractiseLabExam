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
		<h2>Welcome ${vendor.name}</h2>
		<h4 style = "color:green">Your Details are: </h4>
		<br/>
		<ul class="list-group">
		  <li class="list-group-item"><b>Id:  		 </b>${vendor.id}</li>
		  <li class="list-group-item"><b>Name:  	 </b>${vendor.name}</li>
		  <li class="list-group-item"><b>Email:  	 </b>${vendor.email}</li>
		  <li class="list-group-item"><b>City:  	 </b>${vendor.city}</li>
		  <li class="list-group-item"><b>Cell No:  	 </b>${vendor.cell_no}</li>
		  <li class="list-group-item"><b>Reg_amount: </b>${vendor.reg_amount}</li>
		  <li class="list-group-item"><b>Reg_Date:   </b>${vendor.reg_date}</li>
		</ul>
		<br/>
		<a href = "logout" class = "btn btn-success">Logout</a>
	</div>
	
</body>
</html>