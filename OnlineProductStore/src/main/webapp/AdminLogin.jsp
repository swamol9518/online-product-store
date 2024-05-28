<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="OnlineProduct.AdminBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Panel</title>
<!-- Bootstrap CSS -->
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<!-- FontAwesome CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
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
  }


  body {
       background-image: url("https://img.freepik.com/free-photo/shopping-cart-with-wooden-elements_23-2148879396.jpg");
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed;

  }
</style>
</head>
<body>
<%
AdminBean ab=(AdminBean)session.getAttribute("abean");
out.println("<nav><b>Welcome Admin: "+ab.getFname()+"</b></nav><br>");
%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#"><b>Admin Panel</b></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav ml-auto">
      <li class="nav-item">
        <a class="nav-link" href="product.html"><i class="fas fa-plus"></i> Add Product</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="view"><i class="fas fa-eye"></i> View All Products</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="logout"><i class="fas fa-sign-out-alt"></i> Logout</a>
      </li>
    </ul>
  </div>
</nav>
</body>
</html>
