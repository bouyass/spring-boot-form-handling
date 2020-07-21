<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>USERMAG</title>
<style type="text/css">
.name{
	background-color: #e0e1e3 ;
}
.email{
	background-color: #1b6eb2 ;
}

.prof{
	background-color: #6290b5 ;
}

.birth{
	background-color: #0460ad ;
}

</style>
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
					<td class="name">Name</td>
					<td class="email">email</td>
					<td class="birth">birthday</td>
					<td class="prof">profession</td>
				</tr>
				<c:forEach var="user" items="${users}">
					<tr>
						<td class="name"><c:out value="${user.name}"></c:out></td>
						<td class="email"><c:out value="${user.email}"></c:out></td>
						<td class="birth"><c:out value="${user.birthday}"></c:out></td>
						<td class="prof"><c:out value="${user.profession}"></c:out></td>
					</tr>
				</c:forEach>
				</table>
		</c:otherwise>
	</c:choose>
	
</body>
</html>