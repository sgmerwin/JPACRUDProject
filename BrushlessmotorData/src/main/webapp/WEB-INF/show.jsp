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
<h4>Go to home page</h4>
<a href="getHome.do">Home</a>
</body>
</html>