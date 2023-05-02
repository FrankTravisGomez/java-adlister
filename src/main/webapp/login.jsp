
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>Login Form</title>
    <%@ include file="partials/head.jsp" %>
</head>
<%@ include file="partials/navbar.jsp" %>

<body>
<h2>Login</h2>
<form method="post">
    <label>Username:</label>
    <input type="text" name="username"><br><br>
    <label>Password:</label>
    <input type="password" name="password"><br><br>
    <input type="submit" value="Login">
</form>
<%
        if(request.getMethod().equals("POST")) {
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            if (username != null && password != null && username.equals("username") && password.equals("password")) {

                response.sendRedirect("profile.jsp");
            } else {

                response.sendRedirect("login.jsp");
            }
        }
%>

</body>
</html>