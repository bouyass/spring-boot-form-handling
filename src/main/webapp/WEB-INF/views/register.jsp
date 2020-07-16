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
		width:220px;
		margin:10px;
		text-align:left;
	}
	button{
		width:150px;
		height:50px;
	}
</style>

</head>
<body>
	<div style="background-color:  #108df4;" align="center">
		<h2>User registration</h2>
		<form:form action="register" method="post" modelAttribute="user">
			<form:label path="name">User name</form:label>
			<form:input value="${user.name}" path="name"/><br/><br/>
			
			<form:label path="email">Email</form:label>
			<form:input  path="email"/><br/><br/>
			
			<form:label path="password">Password</form:label>
			<form:input type="password" path="password"/><br/><br/>
			
			<form:label path="profession">Profession</form:label>
			<form:select path="profession" items="${professionList}"/><br/><br/>
			
			<form:label path="birthday">Birth day</form:label>
			<form:input path="birthday"/><br/><br/>
			
			<form:label path="married">Married</form:label>
			<form:checkbox  path="married"/><br/><br/>
			
			<form:label path="gender">Gender</form:label>
			<form:radiobutton path="gender" value="Male"/>Male
			<form:radiobutton path="gender" value="Female"/>Female<br/><br/>
			
			<form:label path="note">Note</form:label>
			<form:textarea path="note"/><br/><br/>
			
			<form:button>Register</form:button>
		</form:form>
	</div>
</body>
</html>