<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel = "stylesheet" href ="/css/app.css"/>
</head>
<body>
	
	<div class = "container">.
	<h2 >Vendor's Portal</h2>
	<br/>
	<br/>
	<h4 style = "color:red">${message}</h4>
	<sf:form modelAttribute="cred" method="post" action="authenticate" class="form-signin">
		
		<table>
			<tr>	
				<td><s:message code="email.label" text="Enter your email"/>:</td>
				<td><sf:input path="email" class="form-control"/></td>
				<td><sf:errors path="email" /></td>
			</tr>
			<tr>	
				<td><s:message code="password.label" text="Enter your password:"/></td>
				<td><sf:password path="password" class="form-control"/></td>
				<td><sf:errors path="password"/></td>
			</tr>
			<tr>
				<td> <br/></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>	
				<td colspan = "1">
				</td>
				<td colspan="2">
					<input type="submit" class = "btn btn-success" value="<s:message code="signin.label" text="SignIn"/>"/>
					
				</td>
			</tr>
		</table>
		<br/>
	
		
		<%--
		<sf:errors path="*"/>
		--%>
	</sf:form>
	</div>
</body>
</html>