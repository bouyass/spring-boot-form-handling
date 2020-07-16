<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Checking page</title>
</head>
<body>

<div align="center" style="background: #cfd4d8;">
	<h2> Confirmer les données entrées </h2>
	
	<p> Name: ${ user.name } </p><br/>
	<p> Name: ${ user.email } </p><br/>
	<p> Name: ${ user.password } </p><br/>
	<p> Name: ${ user.profession } </p><br/>
	<p> Name: ${ user.birthday } </p><br/>
	<p> Name: ${ user.gender } </p><br/>
	<p> Name: ${ user.married } </p><br/>
	<p> Name: ${ user.note } </p><br/>


	<button onclick="window.location.href='confirm_register'"> Confirmer </button>
	<a href="correction_form?name=${user.name}&email=${user.email}">Corriger</a>

</div>

</body>
</html>