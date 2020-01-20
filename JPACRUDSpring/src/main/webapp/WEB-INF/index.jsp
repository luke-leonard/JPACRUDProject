<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>
<h3>Find a dog by id:</h3>
<form action="getDog.do" method="GET">
  Dog ID: <input type="text" name="id" />
  <input type="submit" value="Get Dog" />
</form>
<h3>Create a new dog:</h3>
<form action="newDog.do" method="GET">
  Name: <input type="text" name="name" /> <br>
  Breed: <input type="text" name="breed" /> <br>
  Date of Birth: <input type="date" name="dob" /> <br>
  Description: <input type="text" name="description" /> <br>
  <input type="submit" value="New Dog" />
</form>
</body>
</html>