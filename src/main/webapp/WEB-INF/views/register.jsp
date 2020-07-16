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
			<form:input type="text" path="name"/><br/>
			
			<form:label path="email">Email</form:label>
			<form:input type="email" path="email"/><br/>
			
			<form:label path="password">Password</form:label>
			<form:input type="password" path="password"/><br/>
			
			<form:label path="profession">Profession</form:label>
			<form:input type="text" path="profession"/><br/>
			
			<form:label path="note">Note</form:label>
			<form:input type="text" path="note"/><br/>
			
			<form:label path="gender">Genre</form:label>
			<form:input type="radio" value="Male" path="genre"/>
			<form:input type="radio" value="Female" path="gender"/><br/><br/>
			
			<form:label path="birthday">Birth day</form:label>
			<form:input type="date" path="birthday"/><br/>
			
			
			<form:button>Register</form:button>
		</form:form>
	</div>
</body>
</html>