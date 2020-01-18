<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brushless Motors</title>
</head>
<body>
<h2>Welcome to the Brushless Motor Site</h2>
<h4>Get the motor details by ID</h4>
<form action="getMotor.do" method="GET">
  Motor ID: <input type="number" name="mid" />
  Get Motor: <input type="submit" value="Show Motor" />
</form>
<h4>List all motors in the database</h4>
<form action="listMotor.do" method="GET">
  Motor List: <input type="submit" value="List Motors" />
</form>
<h4>Update a motor in the database</h4>
<form action="updateMotor.do" method="GET">
 Motor ID: <input type="text" name="mid" />
  Update Motor: <input type="submit" value="Update Motor" />
</form>
<h4>Create a motor in the database</h4>
<form action="createMotor.do" method="POST">
  Motor Name: <input type="text" name="name"/>
  Create Motor: <input type="submit" value="Create Motor" />
  <br>
</form>
<h4>Delete a motor in the database</h4>
<form action="deleteMotor.do" method="POST">
  Motor ID: <input type="number" name="mid"/>
  Delete Motor: <input type="submit" value="Delete Motor" />
  <br>
</form>
</body>
</html>