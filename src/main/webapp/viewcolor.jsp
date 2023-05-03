
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Color</title>
    <style>
        body {
            background-color: <%= request.getAttribute("color") %>;
        }
    </style>
</head>
<body>
<h1>Your color is <%= request.getAttribute("color") %></h1>
</body>
</html>