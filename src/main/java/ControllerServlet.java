import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ControllerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher pageDispatcher = request.getRequestDispatcher("/page.jsp");
        pageDispatcher.forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher checkDispatcher = request.getRequestDispatcher("/check");
        RequestDispatcher pageDispatcher = request.getRequestDispatcher("/page.jsp");

        String x_coordinate = request.getParameter("x_coordinate");
        String y_coordinate = request.getParameter("y_coordinate");
        String r_coordinate = request.getParameter("r_coordinate");
        String clear = request.getParameter("clear_table");

        if (x_coordinate != null && y_coordinate != null && r_coordinate != null || clear != null) {
            checkDispatcher.forward(request, response);
        } else {
            pageDispatcher.forward(request, response);
        }
    }
}
