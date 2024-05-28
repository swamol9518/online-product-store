<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Details</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<style>
  body {
    font-family: Arial, sans-serif;
  }
  .btn {
    display: inline-block;
    background-color: #007bff;
    color: #fff;
    padding: 10px 20px;
    border-radius: 5px;
    text-decoration: none;
    transition: background-color 0.3s;
  }
  .btn i {
    margin-right: 5px;
  }
  .btn:hover {
    background-color: #0056b3;
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
if (msg == null) {
    out.println("Product Not Available...");
} else {
    out.println(msg);
    %>
    <a href="viewBill" class="btn"><i class="fas fa-receipt"></i> View Bill</a>
    <%
}
%>
</body>
</html>
