<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login page</title>
<style>
body {
  background-image: url('https://www.sagatraining.ca/wp-content/uploads/2018/10/background-images-for-login-form-8.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}
.login-button {
   background-color : white;
   border-color : white;
   border-radius : 4px;
   cursor : pointer;
   border : none;
   height : 20px;
   width : 50px;
}
.login-button:hover {
   background-color : rgb(230, 230, 230);
}
.login-button:active {
   opacity : 0.5;
}
</style>
</head>
<body style="text-align:center" bgcolor = "#4d99b3">
    <h2 style="background-color:#007399; color : black ">Login here</h2>
    <form action="verifylogin" method = "post">
    <br>
    <br>
    <br>
    <br>
        <table style="margin-left:auto;margin-right:auto; color: black;">
            <tr>
               <td><b>Email</b></td>
               <td><input type = "text" name = "email" placeholder = "Enter email"/></td>
            </tr>  
            <tr>
               <td><b>Password</b></td>
               <td><input type = "password" name = "password" placeholder = "Enter password"/></td>
            </tr>
            <tr>
               <td></td>
               <td><br><input type = "submit" value = "Login" class = "login-button"/>
            </tr>
        </table>
    </form> 
    <%
       if(request.getAttribute("msg")!=null){
    	   out.println(request.getAttribute("msg"));
       }
    %>
</body>
</html>