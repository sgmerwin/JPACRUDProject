<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="./css/main.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Motor Details</title>
</head>
<body id = "updatePage">
<div style=" margin: auto; text-align: center; color: yellow; background-color: rgba(0, 0, 128, 0.7); width:600px; 
    height:100%; font-family:Marker Felt, fantasy;">	
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
<br>
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
  <input type="submit" class="btn btn-outline-danger" value="Update Motor" />
  </form>
</c:otherwise> 
   </c:choose> 

<h4>Go to home page</h4>
<a href="getHome.do"  class="btn btn-info">>Home</a>
</div>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</body>
</html>