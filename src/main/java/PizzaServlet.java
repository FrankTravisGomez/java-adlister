import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;

@WebServlet(name = "PizzaServlet", urlPatterns = "/pizza-order")
public class PizzaServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws IOException, ServletException{
        request.getRequestDispatcher("/pizza-order.jsp").forward(request,response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) {


        String crust = request.getParameter("crust");
        String sauce = request.getParameter("sauce");
        String size = request.getParameter("size");
        String[] toppings = request.getParameterValues("toppings");
        String deliveryAddress = request.getParameter("delivery-address");

//        if (crust != null && sauce != null && size != null && deliveryAddress != null) {
            System.out.println("Crust: " + crust);
            System.out.println("Sauce: " + sauce);
            System.out.println("Size: " + size);
            System.out.print("Toppings: ");
            if (toppings != null) {
                for (String topping : toppings) {
                    System.out.print(topping + " ");
                }
                System.out.println();
//            } else {
//                System.out.println("None");
//            }
            System.out.println("Delivery Address: " + deliveryAddress);
            }

    }
}
