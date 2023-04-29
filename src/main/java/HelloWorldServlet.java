import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.io.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
@WebServlet(name = "HelloWorldServlet", urlPatterns = "/hello-world")
public class HelloWorldServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String name = request.getParameter("name");

        if(name != null && !name.isEmpty()){
            out.println("<html><body><h1>Hello, " + name + "!</h1></body></html>");
        } else{
            out.println("<html><body><h1>Hello, World!</h1></body></html>");
        }
    }

}
