<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Buy</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
  nav {
    background-color: darkslategrey;
    padding: 10px;
    color: white; 
  }
 
  a {
    margin-right: 10px;
  }
     body
     { 
              background-image: url("https://imageio.forbes.com/specials-images/imageserve/63d599d870e2498dea5c856c/Online-shopping/960x0.jpg?format=jpg&width=960");
      background-size: cover;
    background-position: center;
    font-family: Arial, sans-serif;
     }
</style>
</head>
<body>
<%
String msg = (String) request.getAttribute("msg");
out.println("<nav><b>" + msg + "</b></nav>");
%>
<a href="viewProduct" class="btn btn-primary">View</a>
<a href="logout" class="btn btn-danger">Log Out</a>
</body>
</html>
