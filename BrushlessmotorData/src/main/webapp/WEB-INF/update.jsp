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
<div>
<h2>Motor Details</h2>
<p>
ID: ${motor.id}<br>
Name: ${motor.name}<br>
Current in Amps: ${motor.current}<br>
Voltage: ${motor.voltage}<br>
Price in USD: ${motor.price}<br>
Weight in Grams: ${motor.weight}<br>
RPM: ${motor.rpm}<br>
Force in Newtons: ${motor.force}<br>
</p>
</div>
<br>
<div>

<h4>Update the motor details</h4>
<form action="editMotor.do" method="POST">
  <input type="hidden" placeholder="${motor.id}" value="${motor.id}" name="mid" />
  <br>
  Motor Name: <input type="text" placeholder="${motor.name}" value="${motor.name}" name="name"/>
  <br>
  <!--  
  Motor Current: <input type="number" placeholder="${motor.current}" value="${motor.current}" name="current"/>
  <br>
  Motor Voltage: <input type="number" placeholder="${motor.voltage}" value="${motor.voltage}" name="voltage"/>
  <br>
   Motor Price: <input type="number" placeholder="${motor.price}" value="${motor.price}" name="price"/>
   <br>
   Motor Weight: <input type="number" placeholder="${motor.weight}" value="${motor.weight}" name="weight"/>
   <br>
   Motor RPM: <input type="number" placeholder="${motor.rpm}" value="${motor.rpm}" name="rpm"/>
   <br>
   Motor Force: <input type="number" placeholder="${motor.force}" value="${motor.force}" name="force"/>
   <br>
   -->
  <c:choose>
   <c:when test="${empty motor.current}"> Motor Current: <input type="number" placeholder="${0}" value="${0}" name="current"/>
   </c:when>
   <c:otherwise>
   Motor Current: <input type="number" placeholder="${motor.current}" value="${motor.current}" name="current"/>
   </c:otherwise>
   </c:choose>  
   <br>
   <c:choose>
   <c:when test="${empty motor.voltage}"> Motor Voltage: <input type="number" placeholder="${0}" value="${0}" name="voltage"/>
   </c:when>
   <c:otherwise>
   Motor Voltage: <input type="number" placeholder="${motor.voltage}" value="${motor.voltage}" name="voltage"/>
   </c:otherwise>
   </c:choose>  
  <br>
   <c:choose>
   <c:when test="${empty motor.price}"> Motor Price: <input type="number" placeholder="${0}" value="${0}" name="price"/>
   </c:when>
   <c:otherwise>
   Motor Price: <input type="number" placeholder="${motor.price}" value="${motor.price}" name="price"/>
   </c:otherwise>
   </c:choose>  
  <br>
   <c:choose>
   <c:when test="${empty motor.weight}"> Motor Weight: <input type="number" placeholder="${0}" value="${0}" name="weight"/>
   </c:when>
   <c:otherwise>
   Motor Weight: <input type="number" placeholder="${motor.weight}" value="${motor.weight}" name="weight"/>
   </c:otherwise>
   </c:choose>  
  <br>
   <c:choose>
   <c:when test="${empty motor.rpm}"> Motor RPM: <input type="number" placeholder="${0}" value="${0}" name="rpm"/>
   </c:when>
   <c:otherwise>
   Motor RPM: <input type="number" placeholder="${motor.rpm}" value="${motor.rpm}" name="rpm"/>
   </c:otherwise>
   </c:choose>  
  <br>
   <c:choose>
   <c:when test="${empty motor.force}"> Motor Force: <input type="number" placeholder="${0}" value="${0}" name="force"/>
   </c:when>
   <c:otherwise>
   Motor Force: <input type="number" placeholder="${motor.force}" value="${motor.force}" name="force"/>
   </c:otherwise>
   </c:choose>  
  <br>
  <input type="submit" value="Update Motor" />
  <br>
</form>
</div>
<div>
<h2>Updated Motor Details</h2>
<p>
Name: ${updateMotor.name}<br>
Current in Amps: ${updateMotor.current}<br>
Voltage: ${updateMotor.voltage}<br>
Price in USD: ${updateMotor.price}<br>
Weight in Grams: ${updateMotor.weight}<br>
RPM: ${updateMotor.rpm}<br>
Force in Newtons: ${updateMotor.force}<br>
</p>
</div>
<h4>Go to home page</h4>
<a href="getHome.do">Home</a>
</body>
</html>