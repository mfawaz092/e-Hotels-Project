import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/EmployeeLogin")
public class EmployeeLogin extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String employeeUsername = request.getParameter("employeeUsername");
        String employeePassword = request.getParameter("employeePassword");

        if (isValidUser(employeeUsername, employeePassword)) {
            HttpSession session = request.getSession();
            session.setAttribute("employeeUsername", employeeUsername);
            response.sendRedirect("employee-homepage.jsp");
        } else {
            request.setAttribute("error", "Invalid username or password");
            request.getRequestDispatcher("employee-login.jsp").forward(request, response);
        }
    }

    private boolean isValidUser(String employeeUsername, String employeePassword) {
        return employeeUsername.equals("employee") && employeePassword.equals("123");
    }
}