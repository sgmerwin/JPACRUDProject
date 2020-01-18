<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Motors in the Database</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>
<h3>List of all motors in the database</h3>
<table>
<c:forEach var="motor" items="${motors}">
<tr>
<td><a href="getMotor.do?mid=${motor.id}">${motor.name}</a></td>
</tr>
</c:forEach>
</table>
<h4>Go to home page</h4>
<a href="getHome.do">Home</a>
</body>
</html>