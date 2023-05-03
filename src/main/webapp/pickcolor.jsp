<%--
  Created by IntelliJ IDEA.
  User: lauratorres
  Date: 5/3/23
  Time: 9:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>Pick Color</title>
</head>
<body>
<form action="/pickcolor" method="post">
  <label for="color">Enter color</label>
  <input type="text" id="color" name="color">
  <button type="submit">Submit</button>
</form>
</body>
</html>