<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Motor</title>
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
<h4>Delete the Motor</h4>
<form action="destroyMotor.do" method="POST">
  <input type="hidden" placeholder="${motor.id}" value="${motor.id}" name="mid" />
  <input type="submit" value="Delete Motor" />
</form>
<h4>Go to home page</h4>
<a href="getHome.do">Home</a>
</body>
</html>