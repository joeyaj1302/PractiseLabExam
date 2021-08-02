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
	<br/>
	<br/>
	<div class = "container">
	<h2>Update Details of ${vendor.name} :</h2>
	<br/>
		<form method = "post" action = "updateVendor" class = "form-control">
			<input type = "hidden" name = "id" value = "${vendor.id}"/>
			<table>
				<tr> 
				
					<td>City :</td>
					<td> <input type = "text" value = "${vendor.city}" name = "city" class = "form-control"/> </td>
				</tr>
				<tr> 
					<td>Cell no :</td>
					<td> <input type = "text" value = "${vendor.cell_no}" name = "cell_no" class = "form-control"/> </td>
				</tr>
			</table>
			<br/>
			
			<input type = "submit" class = "btn btn-success" value = "Update Details"/>
		</form>
	
	</div>
</body>
</html>