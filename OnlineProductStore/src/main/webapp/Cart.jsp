<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
  nav {
    background-color: black;
    padding: 10px;
    color: white; 
  }
  body {
    background-image: url("https://t3.ftcdn.net/jpg/01/17/33/22/360_F_117332203_ekwDZkViF6M3itApEFRIH4844XjJ7zEb.jpg");
    background-size: cover;
    background-position: center;
    font-family: Arial, sans-serif;
  }
</style>
</head>
<body>
<%
String msg = (String) request.getAttribute("msg");
%>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <span class="navbar-brand mb-0 h1"><%=msg%></span>
</nav>

<div class="container mt-3">
  <a href="viewProduct" class="btn btn-primary">View</a>
  <a href="logout" class="btn btn-danger">Log Out</a>
</div>

</body>
</html>
