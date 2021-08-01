<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		<h2>Welcome ${name}!!</h2>
		<br/>
		<h4>The Vendor's List is show below: </h4>
		<br/>
		<table class = "table table-dark table-striped">
			<thead>
			<tr>
				<th>Name</th>
				<th>Email</th>
				<th>City</th>
				<th>Cell No</th>
				<th>Update</th>
				<th>Delete</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="vendor" items = "${vendorList}">
				<tr>
					<td>${vendor.name}</td>
					<td>${vendor.email}</td>
					<td>${vendor.city}</td>
					<td>${vendor.cell_no}</td>
					<td><a href="update?id=${vendor.id}" class = "btn btn-success">Update</a></td>
					<td><a href="delete?id=${vendor.id}" class = "btn btn-warning">Delete</a></td>
				</tr>
			</c:forEach>					
		</tbody>
		
		</table>
		<a href = "addvendor" class = "btn btn-primary"> Add Vendor</a>
		<br/>
		<br/>
		<a href = "logout" class = "btn btn-success">Logout</a>
	</div>
	
</body>
</html>