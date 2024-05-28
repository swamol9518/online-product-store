<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="OnlineProduct.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Product</title>
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

  .container {
    max-width: 500px;
    margin: 50px auto;
    padding: 20px;
    background: #f4f4f4;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  }

  input[type="text"],
  input[type="submit"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 20px;
    border: 1px solid #ccc;
    border-radius: 3px;
  }

  input[type="submit"] {
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 3px;
    cursor: pointer;
    transition: background-color 0.3s;
  }

  input[type="submit"]:hover {
    background-color: #0056b3;
  }
</style>
</head>
<body>
<%
AdminBean ab=(AdminBean)session.getAttribute("abean");
out.println("<nav><b>Page Belogs To Admin :"+ab.getFname()+"</b></nav><br>");
ProductBean pb=(ProductBean)request.getAttribute("pbean");
%>
<form action="update"method="post">
<input type="hidden"name="pcode" value=<%=pb.getCode() %>>
Product Price :<input type="text" name="price"value=<%=pb.getPrice() %>>
<br>
Product Quantity:<input type="text" name="qty" value=<%=pb.getQty() %>>
<input type="submit"value="UpdateProduct">

</form>
</body>
</html>