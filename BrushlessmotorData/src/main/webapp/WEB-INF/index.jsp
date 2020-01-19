<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="./css/main.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Brushless Motors</title>
</head>
<body id = "indexPage">	
<div style=" margin: auto; text-align: center; color: yellow; background-color: rgba(0, 0, 128, 0.7); width:600px; 
    height:450px; font-family:Marker Felt, fantasy;">					
<h2>Welcome to the Brushless Motor Site</h2>
<h4>Get the motor details by ID</h4>

<form action="getMotor.do" method="GET">
  Motor ID: <input type="number" name="mid" />
  <input type="submit" class="btn btn-outline-danger" value="Get Motor" />
</form>
<h4>List all motors in the database</h4>
<form action="listMotor.do" method="GET">
  <input type="submit" class="btn btn-outline-danger" value="List Motors" />
</form>
<h4>Update a motor in the database</h4>
<form action="updateMotor.do" method="GET">
 Motor ID: <input type="number" name="mid" />
  <input type="submit" class="btn btn-outline-danger" value="Update Motor" />
</form>
<h4>Create a motor in the database</h4>
<form action="createMotor.do" method="POST">
  Motor Name: <input type="text" name="name"/>
  <input type="submit" class="btn btn-outline-danger" value="Create Motor" />
  <br>
</form>
<h4>Delete a motor in the database</h4>
<form action="deleteMotor.do" method="POST">
  Motor ID: <input type="number" name="mid"/>
  <input type="submit" class="btn btn-outline-danger" value="Delete Motor" />
  <br>
</form>
</div>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>