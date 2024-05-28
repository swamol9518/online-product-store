<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="OnlineProduct.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Buy Product</title>
<style>

  * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
  }

  body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
  }

  .container {
    max-width: 400px;
    margin: 50px auto;
    padding: 20px;
    background: #fff;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  }

  h2 {
    text-align: center;
    margin-bottom: 20px;
    color: #007bff;
  }

  input[type="text"],
  input[type="submit"] {
    width: calc(100% - 20px);
    padding: 10px;
    margin-bottom: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
    margin-left: 10px;
    margin-right: 10px;
  }

  input[type="submit"] {
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s;
  }

  input[type="submit"]:hover {
    background-color: #0056b3;
  }
  body
  {
  
  
      background-image:url("https://img.freepik.com/photos-gratuite/arrangement-caddies-vendredi-noir-espace-copie_23-2148667047.jpg");
     background-size: cover;
    background-position: center;
    font-family: Arial, sans-serif; 
  }
</style>
</head>
<body>
<div class="container">
  <h2>Buy Product</h2>
  <%
  CartBean cb=(CartBean)session.getAttribute("cart");
  %>
  <form action="order" method="post">
    <input type="hidden" name="pcode" value="<%=cb.getPcode() %>">
    <input type="hidden" name="price" value="<%=cb.getPrice() %>">
  <!--   <label for="pname">Product Name:</label>  -->
    <input type="hidden" name="pname" value="<%=cb.getPname() %>">
    <label for="qty">Product Quantity:</label>
    <input type="text" name="qty" value="<%=cb.getQty() %>">
    <input type="submit" value="Buy Product">
    <a href="CustomerLogin.html">Back</a>
  </form>
</div>
</body>
</html>
