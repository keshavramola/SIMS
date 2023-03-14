<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
a:hover {
  color:red;
}
</style>
</head>
<body>
    <a href = "newReg" style="text-decoration:none">New Registration</a>
    <br>
    <br>
    <a href = "listall" style="text-decoration:none">All Registration</a>
    <br>
    <br>
    <form action="logout" method = "post">
       <input type = "submit" value = "Logout"/>
    </form>
</body>
</html>