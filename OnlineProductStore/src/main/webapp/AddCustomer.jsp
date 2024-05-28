<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Customer </title>
</head>
<style>
  * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
  }

  nav {
    background-color: #007bff;
    padding: 10px;
    color: #fff;
    text-align: center;
  }

 
  nav a {
    color: #fff;
    text-decoration: none;
    margin-right: 20px;
  }

  nav a:hover {
    text-decoration: underline;
  }

 
  body {
    background-color: #f4f4f4;
    padding: 20px;
    text-align: center;
  }
</style>
<body>
<%
String msg=(String)request.getAttribute("msg");
out.println(msg);
%>
<a href=product.html>Add Product</a>
<a href=view>View All Product</a>
<a href=logout>LogOut</a>

</body>
</html>