
<%@ page import="java.util.Arrays" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pizza Order</title>
</head>
<body>
<h1>Pizza Order Form</h1>
<form action="/pizza-order" method="POST" >
  <label for="crust">Crust Type:</label>
  <select name="crust" id="crust">
    <option value="thin-crust">Thin Crust</option>
    <option value="thick-crust">Thick Crust</option>
    <option value="cauliflower">Cauliflower</option>
  </select>

  <br><br>

  <label for="sauce">Sauce Type:</label>
  <select name="sauce" id="sauce">
    <option value="tomato">tomato</option>
    <option value="spicy">Spicy Calabrian Chili red Sauce</option>
    <option value="bbq">BBQ Sauce</option>
  </select>

  <br><br>

  <label for="size">Size Type:</label>
  <select name="size" id="size">
        <option value="small">Small</option>
        <option value="medium">Medium</option>
        <option value="large">Large</option>
  </select>
  <br><br>

  <label>Toppings:</label>
  <br>

      <input type="checkbox" name="toppings" value="pepperoni">Pepperoni<br>
      <input type="checkbox" name="toppings" value="mushrooms">Mushrooms<br>
      <input type="checkbox" name="toppings" value="onions">Onions<br>
      <input type="checkbox" name="toppings" value="sausage">Sausage<br>
      <input type="checkbox" name="toppings" value="bacon">Bacon<br>

  <br>

      <label for="delivery-address">Delivery Address:</label>
      <input type="text" name="delivery-address" id="delivery-address">

  <br><br>

  <input type="submit" value="Submit Order">


    <p>your pizza order </p>
    <ul>
        <li><b>crust type:</b> <%= request.getParameter("crust-type") %></li>
        <li><b>sauce type:</b> <%= request.getParameter("sauce-type") %></li>
        <li><b>size type:</b> <%= request.getParameter("size-type") %></li>
        <li><b>toppings:</b> <%= Arrays.toString(request.getParameterValues("toppings")) %></li>
        <li><b>delivery address:</b> <%= request.getParameter("deliveryAddress") %></li>
    </ul>

</form>


</body>
</html>