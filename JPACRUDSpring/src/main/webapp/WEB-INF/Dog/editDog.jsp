<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Dog</title>
</head>
<body>
<form action="editDog.do" method="GET">
  <input type="hidden" name="id" value="${dog.id}"/>
  Name: <input type="text" name="name" value="${dog.name}"/>
  Breed: <input type="text" name="breed" value="${dog.breed}"/>
  Date of Birth: <input type="date" name="dob" value="${dog.dob}"/>
  Description: <input type="text" name="description" value="${dog.description}"/>
  <input type="submit" value="edit Dog"/>
</form>
</body>
</html>