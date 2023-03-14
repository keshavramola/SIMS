<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>list</title>
<style>
body {
  background-image: url('https://educationusa.state.gov/sites/default/files/styles/carousel-full-bleed_1220x505/public/homepage_carousel_-_first_step.png?itok=KktRIqNt');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}
</style>
</head>
<body>
<% 
   HttpSession s = request.getSession(false);
   if(s.getAttribute("email")!=null){
%>
   <h2>All Registration</h2>
   <table border = '1'>
       <tr>
           <th>Name</th>
           <th>City</th>
           <th>Email</th>
           <th>Mobile</th>
           <th>Delete</th>
           <th>Update</th>
       </tr>
       
       <%
          ResultSet result = (ResultSet)request.getAttribute("result");
          while(result.next()){
       %>
          <tr>
           <td><%= result.getString(1) %></td>
           <td><%= result.getString(2) %></td>
           <td><%= result.getString(3) %></td>
           <td><%= result.getString(4) %></td>
           <td><a href="delete?email=<%= result.getString(3) %>">delete</a></td>
           <th><a href="update?email=<%= result.getString(3) %>&mobile=<%= result.getString(4) %>&name=<%= result.getString(1) %>&city=<%= result.getString(2) %>">update</a></th>
       </tr>
       <% } %>
   </table>
   <%}else{
	   RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
	   rd.forward(request, response);
   }
	   %>
<br>
<br>
<%@ include file = "menu.jsp" %>
</body>
</html>