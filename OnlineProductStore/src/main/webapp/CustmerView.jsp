<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="OnlineProduct.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer View</title>
<!-- Bootstrap CSS -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<style>
  
  .navbar-dark .navbar-nav .nav-link {
    color: #fff; 
  }

  .navbar-brand {
    color: #fff !important;
    font-weight: bold;
  }
</style>
</head>
<body>
<%
AddCustomerBean cb = (AddCustomerBean) session.getAttribute("cbean");
ArrayList<ProductBean> al = (ArrayList<ProductBean>) session.getAttribute("alist");

out.println("<nav class='navbar navbar-dark bg-dark'>");
out.println("<a class='navbar-brand' href='#'>Page Belongs To Customer: <span style='color:white;'>" + cb.getFname() + "</span></a>");
out.println("</nav><br>");

if (al.size() == 0) {
    out.println("<div class='alert alert-warning'>Product Not Available...</div><br>");
} else {
%>
<table class="table table-striped">
  <thead class="thead-dark">
    <tr>
      <th scope="col">Product Code</th>
      <th scope="col">Product Name</th>
      <th scope="col">Price</th>
      <th scope="col">Quantity</th>
      <th scope="col">Operation</th>
    </tr>
  </thead>
  <tbody>
  <% 
    Iterator<ProductBean> it = al.iterator();
    while (it.hasNext()) {
        ProductBean pb = it.next();
  %>
  <tr>
    <td><%= pb.getCode() %></td>
    <td><%= pb.getName() %></td>
    <td><%= pb.getPrice() %></td>
    <td><%= pb.getQty() %></td>
    <td>
      <a href="AddCart?pcode=<%= pb.getCode() %>&pname=<%= pb.getName() %>&price=<%= pb.getPrice() %>&pqty=<%=pb.getQty() %>" class="btn btn-primary">Add To Cart</a>
      <a href="viewcart" class="btn btn-primary">View Cart</a> 
     <!--   <a href="Buy?Pcode=<%=pb.getCode() %>" class="btn btn-primary">Buy Now</a>  -->
      
    </td>
  </tr>
  <% 
    } // end while loop
  %>
  </tbody>
</table>
<%
} // end if-else block
%>
<a href="logout" class="btn btn-danger">Log Out</a>
<a href="home.html" class="btn btn-danger" style="background-color: blue; color: white;">Back</a>


</body>
</html>
