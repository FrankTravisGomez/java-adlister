import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;

@WebServlet(name = "PageCounterServlet", urlPatterns = "/count")
public class PageCounter extends HttpServlet {

    private int count = 0;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String resetNum = request.getParameter("reset");

        if(resetNum != null && resetNum.equals("true")){
            count = 0;
        } else {
            count ++;
        }

        out.println("<html>" + count + "</html>");
    }
}

