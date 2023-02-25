<%@page import="dto.product"%>
<%@page import="dao.productdao"%>
<%@page import="dao.productdao"%>
<%@page import="dto.product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Product</title>
<style>
body {
	background-color: #FFDEE9;
background-image: linear-gradient(0deg, #FFDEE9 0%, #B5FFFC 100%);

	margin-top: 100px;
	justify-content: center;
	display: flex;
	
}
div{
align-items: center;


}
</style>

</head>
<body>
	<%
	int id = (Integer.parseInt(request.getParameter("id")));
	productdao dao = new productdao();
	product product = dao.fetchProduct(id);
	%>

<div>
	<h1 align="center">Edit Product</h1>
	<br>
	<form action="updateproduct" >
		Id: <input type="text" name="id" value="<%=product.getId()%>"
			readonly="readonly"><br> <br> Name:<input
			type="text" name="name" value="<%=product.getName()%>"><br>
		<br> Category:<input type="text" name="category"
			value="<%=product.getCategory()%>" readonly="readonly"><br>
		<br> Price:<input type="text" name="price"
			value="<%=product.getPrice()%>"><br> <br>
		<button>Update</button>
		<button type="reset">Cancel</button><br><br>
		<a href="viewproduct"><button>Back</button></a>
	</form>
	
	</div>
	
</body>
</html>