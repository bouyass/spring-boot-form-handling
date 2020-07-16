<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration form</title>
</head>
<body>
	<div align="center">
		<h2>User registration</h2>
		<form:form action="register" method="post" modelAttribute="user">
			<form:label path="name">User name</form:label>
			<form:input type="text" path="name"/>
			
			<form:button>Register</form:button>
		</form:form>
	</div>
</body>
</html>