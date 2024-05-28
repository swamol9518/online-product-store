<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="OnlineProduct.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Cart</title>
<style>
  nav {
    background-color: #4CAF50; /* Green */
    color: white;
    padding: 10px;
    text-align: center;
  }

  table {
    width: 100%;
    border-collapse: collapse;
    border-spacing: 0;
    margin-top: 20px;
  }

  th, td {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
  }

  th {
    background-color: #f2f2f2;
  }

  tr:nth-child(even) {
    background-color: #f2f2f2;
  }

  tr:hover {
    background-color: #ddd;
  }
</style>
</head>
<body>
<%
  AddCustomerBean ab = (AddCustomerBean) session.getAttribute("cbean");
  ArrayList<CartBean> al = (ArrayList<CartBean>) session.getAttribute("alist");
%>
<nav>Customer Cart To: <%= ab.getFname() %></nav>
<%
  if (al.size() == 0) {
    out.println("<p>No Products Available</p>");
  } else {
%>
    <table>
      <thead>
        <tr>
          <th>Product Code</th>
          <th>Product Name</th>
          <th>Price</th>
          <th>Quantity</th>
          <th>Place Order</th>
        </tr>
      </thead>
      <tbody>
      <% 
        Iterator<CartBean> it = al.iterator();
        while (it.hasNext()) {
          CartBean cb = it.next();
      %>
          <tr>
            <td><%= cb.getPcode() %></td>
            <td><%= cb.getPname() %></td>
            <td><%= cb.getPrice() %></td>
            <td><%=cb.getQty() %>
            
            <td><a href="Buy?Pcode=<%=cb.getPcode() %>&pname=<%= cb.getPname()%>&price=<%= cb.getPrice()%>&qty=<%=cb.getQty() %>"class="btn btn-primary">Buy Now</a> </td>
          </tr>
      <% } %>
      </tbody>
    </table>
<% } %>
<a href="viewProduct">Back</a>&nbsp
<a href="logout">LogOut</a>
</body>
</html>
