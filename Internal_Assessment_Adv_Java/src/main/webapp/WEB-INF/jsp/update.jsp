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
		<br/>
		<h2>Update the details of ${vendor.name} :</h2>
		<br/>
		<form action="updateVendor" class = "form-signin">
			<table>
				<tr>	
					<td>New City:</td> 
					<td><input type="text" name="city"  value = "${vendor.city}" class="form-control"/></td>
				</tr>
				<tr>	
					<td>New Cell phone number:</td>
					<td><input type="text" name="cell_no" value = "${vendor.cell_no}" class="form-control"/></td>
				</tr>
				<tr>	
					<td colspan="2">
						<input type = "hidden" name = "id" value = "${vendor.id}"/>
						<input type="submit" value="Update Details" class = "btn btn-success"/>
						
					</td>
				</tr>

			</table>
		</form>
	</div>
</body>
</html>