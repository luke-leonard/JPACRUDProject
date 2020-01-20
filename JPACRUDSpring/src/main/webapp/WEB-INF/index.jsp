<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>
<form action="getDog.do" method="GET">
  Dog ID: <input type="text" name="id" />
  <input type="submit" value="Get Dog" />
</form>
<form action="newDog.do" method="GET">
  Name: <input type="text" name="name" />
  Breed: <input type="text" name="breed" />
  Date of Birth: <input type="date" name="dob" />
  Description: <input type="text" name="description" />
  <input type="submit" value="New Dog" />
</form>
</body>
</html>