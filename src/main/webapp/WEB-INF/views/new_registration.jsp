<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>new registration</title>
<style>
  body {
  background-image: url('https://img.freepik.com/premium-vector/watercolor-design-back-school-background_23-2148593945.jpg?w=2000');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}
.save-button:hover {
  background-color :#007399
}
.save-button {
  border-color : white;
  border-radius: 2px;
  height : 25px;
  width : 50px;
  cursor : pointer;
}
</style>
</head>
<body style="text-align:center" bgcolor = "#4d99b3">
 <h1 style="background-color:#007399; color : black ">Student Registration</h1>
  <form action="newReg" method = "post">
   <pre>
   <b>Name</b>   <input type = "text" name = "name"/>
   <b>City</b>   <input type = "text" name = "city"/>
   <b>Email</b>  <input type = "text" name = "email"/>
   <b>Mobile</b> <input type = "text" name = "mobile"/>
        
         <input type = "submit" value = "save" class = "save-button"/>
   </pre>
  </form>
  <%
     if(request.getAttribute("msg")!=null){
    	 out.println(request.getAttribute("msg"));
     }
  %>
  <br>
  <br>
  <%@ include file = "menu.jsp" %> 
</body>
</html>
