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
		<h2>Welcome Admin ${name}</h2>
		<table class = "table table-dark table-stripped">
			<thead>
				<tr>
					<th>Name</th>
					<th>Email</th>
					<th>City</th>
					<th>Cell_no</th>
					<th>Update</th>
					<th>Delete</th>
				</tr>
			</thead>
				<c:forEach var = "v" items = "${vendorList}">
					<tr>
						<td>${v.name}</td>
						<td>${v.email}</td>
						<td>${v.city}</td>
						<td>${v.cell_no}</td>
						<td><a href = "update?id=${v.id}" class = "btn btn-success">Update</a></td>
						<td><a href = "delete?id=${v.id}" class = "btn btn-warning">delete</a></td>
					</tr>
				
				</c:forEach>
				
			<tbody>
			
			</tbody>
		</table>
		<a href = "addvendor" class = "btn btn-primary">Add New Vendor</a>
	</div>

</body>
</html>