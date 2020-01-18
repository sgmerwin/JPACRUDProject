<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  Motor ID: <input type="text" placeholder="${motor.id}" value="${motor.id}" name="id" />
  <br>
  Motor Name: <input type="text" name="name"/>
  <br>
   Motor Current: <input type="number" name="current"/>
   <br>
  Motor Voltage: <input type="number" name="volt"/>
  <br>
  Motor Price: <input type="number" name="price"/>
  <br>
  Motor Weight: <input type="number" name="weight"/>
  <br>
  Motor RPM: <input type="number" name="rpm"/>
  <br>
  Motor Force: <input type="number" name="force"/>
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