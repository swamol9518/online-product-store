<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="OnlineProduct.AddCustomerBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Dashboard</title>

<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<style>
  body {
    background-image: url("https://static.vecteezy.com/system/resources/previews/022/816/700/non_2x/shopping-cart-on-a-yellow-background-theme-of-purchases-and-sales-photo.jpg");
    background-size: cover;
    background-position: center;
    font-family: Arial, sans-serif;
    color: #333;
    padding-top: 20px;
  }
  nav {
    background-color: gray;
    color: #fff;
    padding: 10px;
    margin-bottom: 20px;
  }
</style>
</head>
<body>
<%
AddCustomerBean cb=(AddCustomerBean)session.getAttribute("cbean");
out.println("<nav>Welcome Customer: "+cb.getFname()+"</nav><br>");
%>
<a href="viewProduct" class="btn btn-primary">View All Products</a>
<a href="logout" class="btn btn-danger">Log Out</a>
</body>
</html>
