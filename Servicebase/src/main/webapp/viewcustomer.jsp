<%@page import="dto.user"%>
<%@page import="java.util.List"%>
<%@page import="dto.user"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customers</title>
<style>
body{
background-color: #FAACA8;
background-image: linear-gradient(19deg, #FAACA8 0%, #DDD6F3 100%);

background-repeat: no-repeat;
background-size: cover;
color: #00308F;

}
button {
	padding: 10px;
	border-radius: 10px;
}
table {
	background: #F0F8FF;
}
</style>
</head>
<body>
<%List<user> list=(List<user>)session.getAttribute("customerlist"); %>
<h1 align="center">PRODUCTS</h1><br>
<table border="1" align="center" cellpadding="10">
<tr>
<th>ID</th>
<th>Name</th>
<th>Email</th>
<th>Mobile</th>
<th>Password</th>
</tr>
<% for(user u:list){%>
<tr>
<th><%=u.getId() %></th>
<th><%=u.getName() %></th>
<th><%=u.getEmail() %></th>
<th><%=u.getPassword() %></th>
<th><%=u.getMobile() %></th>
</tr>
<%} %>
</table>
<br>
<h1 align="center"><a href="adminhomepage.html"><button>Back</button></a></h1>


</body>
</html>