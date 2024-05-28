<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Product</title>
<!-- Add Bootstrap CDN link -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<style>
  
  * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
  }

 
  nav {
    background-color: #white; /* Use gray color */
    padding: 10px;
    text-align: center;
  }

 
  nav a {
    color: #white; /* Use gray color for links */
    text-decoration: none;
    margin-right: 20px;
  }

  nav a:hover {
    text-decoration: underline;
  }

  .navbar-toggler-icon {
    color: #white; /* Use gray color for the toggler icon */
  }

  .navbar-nav .nav-link.active, .navbar-nav .nav-link:focus {
    color: #000; /* Set color for active or focused link */
  }

 
  body {
    background-image: url("https://watermark.lovepik.com/photo/20211211/large/lovepik-concept-of-mobile-online-shopping-under-blue-picture_501806928.jpg");
    padding: 20px;
    text-align: center;
  }
</style>
<body>
<%
String msg=(String)request.getAttribute("msg");
out.println("<b>"+msg+"<b>");
%>

<nav class="navbar navbar-expand-lg navbar-dark bg-secondary">
  
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav ml-auto">
      <li class="nav-item">
        <a class="nav-link" href="product.html">Add Product</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="view">View All Product</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="logout">LogOut</a>
      </li>
    </ul>
  </div>
</nav>

</body>
</html>
