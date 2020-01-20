<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dog</title>
</head>
<body>
<div>
  <h5>${dog.name} </h5>
  <h5>${dog.breed} </h5>
  <h5>${dog.dob} </h5>
  <h5>${dog.description} </h5>
  <form action="deleteDog.do" method="GET">
 	<input type="hidden" name="id" value="${dog.id}" />
  <input type="submit" value="Delete" />
  </form>
  <form action="editDogPage.do" method="GET">
 	<input type="hidden" name="id" value="${dog.id}" />
  <input type="submit" value="Edit" />
</form>
</div>
</body>
</html>