<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="OnlineProduct.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product List</title>

<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
<style>
 
  * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
  }

  nav {
    background-color: gray;
    padding: 10px;
    color: #fff;
    text-align: center;
    display: flex;
    align-items: center;
    justify-content: space-between;
  }

  /* Style table */
  table {
    width: 100%;
    border-collapse: collapse;
    margin-bottom: 20px;
  }

  th, td {
    padding: 8px;
    text-align: left;
    border-bottom: 1px solid #ddd;
  }

  th {
    background-color: #007bff;
    color: #fff;
  }


  tr:nth-child(even) {
    background-color: #f2f2f2;
  }

  a {
    color: #007bff;
    text-decoration: none;
  }

  a:hover {
    text-decoration: underline;
    color: red;
  }

  .logout-icon {
    color: red;
    margin-left: 5px;
  }
  body {
       background-image: url("https://t3.ftcdn.net/jpg/02/64/92/28/360_F_264922838_NErJEovZiP9MTa49apqL1Vs3f88ZT8Dg.jpg");
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed;

  }
</style>
</head>
<body>
<%
AdminBean ab = (AdminBean) session.getAttribute("abean");
ArrayList<ProductBean> al = (ArrayList<ProductBean>) session.getAttribute("alist");
%>
<nav>
  <a href="logout"><i class="fas fa-sign-out-alt logout-icon"></i>LogOut</a>
  <span>Page Belongs To Admin: <%= ab.getFname() %></span>
</nav>
<br>
<%
if (al.size() == 0) {
    out.println("Product Not Available...<br>");
} else {
%>
<table>
  <tr>
    <th>Product Code</th>
    <th>Product Name</th>
    <th>Price</th>
    <th>Quantity</th>
    <th>Actions</th>
  </tr>
  <% 
    for (ProductBean pb : al) {
  %>
  <tr>
    <td><%= pb.getCode() %></td>
    <td><%= pb.getName() %></td>
    <td><%= pb.getPrice() %></td>
    <td><%= pb.getQty() %></td>
    <td>
      <a href="edit?pcode=<%= pb.getCode() %>">Edit</a>
      <span> | </span>
      <a href="delete?pcode=<%= pb.getCode() %>">Delete</a>
      
    </td>
  </tr>
  <% 
    } // end for loop
  %>
</table>
<%
} // end if-else block
%>
</body>
</html>
