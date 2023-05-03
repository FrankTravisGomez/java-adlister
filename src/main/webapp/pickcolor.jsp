<%--
  Created by IntelliJ IDEA.
  User: lauratorres
  Date: 5/3/23
  Time: 9:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>Pick a Color</title>
</head>
<body>
<h1>What's your favorite color?</h1>
<form method="post" action="/viewcolor">
  <input type="text" name="color" placeholder="Enter your favorite color">
  <button type="submit">Submit</button>
</form>
</body>
</html>