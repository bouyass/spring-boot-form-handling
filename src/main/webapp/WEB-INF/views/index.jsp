<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>USERMAG</title>
</head>
<body>
	<h1>Users manager</h1>
	<a href="register_form">Click to register new user</a>

	<c:choose>
		<c:when test="${empty users}">
			<p align="center">
				<i>No user registered</i>
			</p>
		</c:when>
		<c:otherwise>
			<table align="center">
				<tr style="background-color: yellow;">
					<td>Name</td>
					<td>email</td>
					<td>birthday</td>
					<td>profession</td>
				</tr>
				<c:forEach var="user" items="${users}">
					<tr>
						<td><c:out value="${user.name}"></c:out></td>
						<td><c:out value="${user.email}"></c:out></td>
						<td><c:out value="${user.birthday}"></c:out></td>
						<td><c:out value="${user.profession}"></c:out></td>
					</tr>
				</c:forEach>
				</table>
		</c:otherwise>
	</c:choose>
	
</body>
</html>