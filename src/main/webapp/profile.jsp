<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <jsp:include page="partials/head.jsp">--%>
<%--        <jsp:param name="title" value="Your Profile" />--%>
<%--    </jsp:include>--%>
<%--</head>--%>
<%--<body>--%>
<%--    <jsp:include page="partials/navbar.jsp" />--%>

<%--    <div class="container">--%>
<%--        <h1>Viewing your profile.</h1>--%>
<%--    </div>--%>

<%--</body>--%>
<%--</html>--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="javax.servlet.http.HttpSession" %>

<%
    HttpSession httpSession = request.getSession(false);

    if (httpSession == null || httpSession.getAttribute("user") == null) {
        response.sendRedirect("/login");
    }
%>

<%
    String username = (String) session.getAttribute("user");
%>

<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
<jsp:include page="partials/navbar.jsp" />

<div class="container">
    <h1>Viewing your profile.</h1>
</div>

<div class="container">
    <h1>Welcome, <%= username %>!</h1>
    <p>You are currently logged in as <%= username %>.</p>
</div>

<form action="/logout" method="POST">
    <input type="submit" value="Logout">
</form>
</body>
</html>