<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Dog</title>
</head>
<body>
<h3>The Dog Editor:</h3>
<form action="editDog.do" method="GET">
  <input type="hidden" name="id" value="${dog.id}"/>
  Name: <input type="text" name="name" value="${dog.name}"/> <br>
  Breed: <input type="text" name="breed" value="${dog.breed}"/> <br>
  Date of Birth: <input type="date" name="dob" value="${dog.dob}"/> <br>
  Description: <input type="text" name="description" value="${dog.description}"/> <br>
  <input type="submit" value="edit Dog"/>
</form>
</body>
</html>