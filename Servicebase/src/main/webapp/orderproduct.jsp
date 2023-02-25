<%@page import="dto.product"%>
<%@page import="dto.product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
*{
margin: 0;
padding: 0;
}
.body{
background-color: #D9AFD9;
background-image: linear-gradient(0deg, #D9AFD9 0%, #97D9E1 100%);

background-attachment:fixed;

background-repeat: no-repeat;
background-size: cover;
color: #00308F;
display: flex;
justify-content: center;
height: 100vh;

}
button {
	padding: 10px;
	border-radius: 10px;
	margin: 10px;
}
.center{
position: relative;
left: 20vh;
color: #00308F;
}
.main{
position: absolute;
margin-top: 100px;
}
table {
	border-radius: 20px;
	background: rgb(2,0,36);
background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(220,13,62,1) 35%, rgba(0,212,255,1) 100%); 
}
</style>
</head>
<body>
<%List<product> list=(List<product>) session.getAttribute("productlist"); %>
<%char ch='a'; %>
<div class="body">
<div class="main">
<h1 Class="center">PLACE ORDER</h1>

<form action="placeorder">
<table border="1" width="500px" height="300px" align="center">
  <tr>
    <th style="color: white;">Product_Name</th>
    <th style="color: white;">Price</th>
    <th style="color: white;">Category</th>
    <th style="color: white;">Select</th>
  </tr>
  <%for(product pro:list){ %>
  <tr>
    <td style="color: white;"><%=pro.getName() %></td>
    <td style="color: white;"><%=pro.getPrice() %></td>
    <td style="color: white;"><%=pro.getCategory() %></td>
    <td style="color: white;"><input type="checkbox" name="<%=ch++%>" value="<%=pro.getId() %>"></td>
  </tr>
  <%} %>
  </table>
 <span> <a href="bill.jsp"><button>Order</button></a>
 
  </form>
  <a href="customerhomepage.html"><button>Back</button></a></span>
</div>
</div>


</body>
</html>