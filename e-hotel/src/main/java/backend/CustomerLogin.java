package backend;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/CustomerLogin")
public class CustomerLogin extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String customerUsername = request.getParameter("customerUsername");
        String customerPassword = request.getParameter("customerPassword");

        if (isValidUser(customerUsername, customerPassword)) {
            HttpSession session = request.getSession();
            session.setAttribute("customerUsername", customerUsername);
            response.sendRedirect("/pages/customer-homepage.jsp");
        } else {
            request.setAttribute("error", "Invalid username or password");
            request.getRequestDispatcher("customer-login.jsp").forward(request, response);
        }
    }

    private boolean isValidUser(String customerUsername, String customerPassword) {
        return customerUsername.equals("customer") && customerPassword.equals("123");
    }
}
