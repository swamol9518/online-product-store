<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="OnlineProduct.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Product</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<!-- FontAwesome CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
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


  a {
    display: block;
    padding: 10px;
    margin: 10px;
    color: #blue;
    text-decoration: none;
    transition: background-color 0.3s;
  }

  a:hover {
    background-color: #0056b3;
  }

 
  a.add-product {
    background-color: #28a745;
  }


  a.view-all-product {
    background-color: #ffc107;
  }


  a.logout {
    background-color: #dc3545;
  }
  body {
       background-image: url("https://imageio.forbes.com/specials-images/imageserve/63d599d870e2498dea5c856c/Online-shopping/960x0.jpg?format=jpg&width=960");
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed;

  }
</style>
<body>
<%
AdminBean ab=(AdminBean)session.getAttribute("abean");
String msg=(String)request.getAttribute("msg");
out.println("<nav><b>Page Belongs To Admin :"+ab.getFname()+"</b></nav><br>");
out.println(msg);

%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container">
    <a class="navbar-brand" href="#"><b>Page Belongs To Admin <%= ab.getFname() %></b></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
          <a class="nav-link add-product" href="product.html"><i class="fas fa-plus-circle"></i> Add Product</a>
        </li>
        <li class="nav-item">
          <a class="nav-link view-all-product" href="view"><i class="fas fa-list"></i> View All Product</a>
        </li>
        <li class="nav-item">
          <a class="nav-link logout" href="logout"><i class="fas fa-sign-out-alt"></i> LogOut</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
</body>
</html>
