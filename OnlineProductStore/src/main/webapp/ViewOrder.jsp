<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="OnlineProduct.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Summary</title>
<style>
  body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    padding: 20px;
  }
  .container {
    max-width: 600px;
    margin: 0 auto;
  }
  .bill {
    border: 1px solid #ccc;
    border-radius: 5px;
    padding: 20px;
    margin-bottom: 20px;
     box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3); /* Adding box shadow */
  }
  .title {
    font-size: 24px;
    font-weight: bold;
    margin-bottom: 10px;
  }
  .item {
    margin-bottom: 10px;
  }
  .item label {
    font-weight: bold;
  }
  body
  {
   
   background-image: url("https://previews.123rf.com/images/marinademidiuk/marinademidiuk2101/marinademidiuk210100034/162620114-empty-shopping-cart-on-female-hand-shopping-theme-small-trolley-isolated-on-a-bright-yellow.jpg");
    background-size: cover;
    background-position: center;
    font-family: Arial, sans-serif;   
  }
</style>
</head>
<body>
<div class="container">
  <div class="bill">
    <div class="title">Order Summary</div>
    <% ArrayList<OrderBean> al = (ArrayList<OrderBean>) session.getAttribute("list");
       if (al.size() == 0)
       { 
       %>
      <p>No Orders Placed Yet.</p>
    <% } else {
        for (OrderBean ob : al) 
        { %>
          <div class="item">
            <label>Product Code:</label> <%= ob.getPcode() %><br>
            <label>Product Name:</label> <%= ob.getPname() %><br>
            <label>Quantity:</label> <%= ob.getQty() %><br>
            <label>Unit Price:</label> <%= ob.getPrice() %><br>
            <label>Total Price:</label> <%= ob.getTotal() %><br>
          </div>
    <% } 
        } %>
    <hr>
    <div class="item">
      <label>Total Items:</label> <%= al.size() %><br>
      <label>Total Amount:</label> <% 
        float totalAmount = 0;
        for (OrderBean ob : al) 
        {
          totalAmount += ob.getTotal();
        }
        out.println(totalAmount);
      %><br>
    </div>
    <hr>
    <p>Thank you for shopping with us...!</p>
          <a href="viewcart" class="btn btn-primary">Back</a> 

  </div>
</div>
</body>
</html>
