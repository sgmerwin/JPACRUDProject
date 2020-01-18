<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Motor Details</title>
</head>
<body>
<h2>Motor Details</h2>
<c:choose>
<c:when test="${empty motor}">
<h4>The motor is not in the database</h4>
</c:when>
<c:otherwise>
ID: ${motor.id}<br>
Name: ${motor.name}<br>
Current in Amps: ${motor.current}<br>
Voltage: ${motor.voltage}<br>
Price in USD: ${motor.price}<br>
Weight in Grams: ${motor.weight}<br>
RPM: ${motor.rpm}<br>
Force in Newtons: ${motor.force}<br>
<h4>Delete the Motor from the database</h4>
<form action="deleteMotor.do" method="POST">
  <input type="hidden" placeholder="${motor.id}" value="${motor.id}" name="mid" />
  Delete Motor: <input type="submit" value="Delete Motor" />
  </form>
<h4>Update a motor in the database</h4>
<form action="updateMotor.do" method="GET">
 <input type="hidden" placeholder="${motor.id}" value="${motor.id}" name="mid" />
  Update Motor: <input type="submit" value="Update Motor" />
</form>
</c:otherwise>
</c:choose>
<h4>Go to home page</h4>
<a href="getHome.do">Home</a>
</body>
</html>