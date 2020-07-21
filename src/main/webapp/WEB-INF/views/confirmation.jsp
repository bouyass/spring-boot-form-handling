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
	<p> email: ${ user.email } </p><br/>
	<p> password: ${ user.password } </p><br/>
	<p> profession: ${ user.profession } </p><br/>
	<p> birthday: ${ user.birthday } </p><br/>
	<p> gender: ${ user.gender } </p><br/>
	<p> married: ${ user.married } </p><br/>
	<p> note: ${ user.note } </p><br/>


	<button onclick="window.location.href='confirm_register?name=${user.name}&email=${user.email}&password=${user.password}&profession=${user.profession}&note=${user.note}&gender=${user.gender}&birthday=${user.birthday}&married=${user.married}'"> Confirmer </button>
	<a href="correction_form?name=${user.name}&email=${user.email}&password=${user.password}&profession=${user.profession}&note=${user.note}&gender=${user.gender}&birthday=${user.birthday}&married=${user.married}">Corriger</a>

</div>

</body>
</html>