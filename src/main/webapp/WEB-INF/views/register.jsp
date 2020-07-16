<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration form</title>
<style>
	label{
		display:inline-block;
	}
</style>

</head>
<body>
	<div align="center">
		<h2>User registration</h2>
		<form:form action="register" method="post" modelAttribute="user">
			<form:label path="name">User name</form:label>
			<form:input type="text" path="name"/><br/><br/>
			
			<form:label path="email">Email</form:label>
			<form:input type="email" path="email"/><br/><br/>
			
			<form:label path="password">Password</form:label>
			<form:input type="password" path="password"/><br/><br/>
			
			<form:label path="profession">Profession</form:label>
			<form:select path="profession" items="${professionList}"/><br/><br/>
			
			<form:label path="birthday">Birth day</form:label>
			<form:input path="birthday"/><br/><br/>
			
			<form:label path="note">Note</form:label>
			<form:textarea type="text" path="note"/><br/><br/>
			
			
			<form:button>Register</form:button>
		</form:form>
	</div>
</body>
</html>