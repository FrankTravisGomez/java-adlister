<%--
  Created by IntelliJ IDEA.
  User: lauratorres
  Date: 5/3/23
  Time: 9:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Title</title>--%>
<%--</head>--%>
<%--<body>--%>

<%--</body>--%>
<%--</html>--%>


@WebServlet("/viewcolor")
    public class ViewColorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    String color = request.getParameter("color");
    response.sendRedirect("/viewcolor.jsp?color=" + color);
    }
}
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>View Color</title>
</head>
<body style="background-color: <%= request.getParameter("color") %>;">
<h1>Your favorite color is <%= request.getParameter("color") %></h1>
</body>
</html>