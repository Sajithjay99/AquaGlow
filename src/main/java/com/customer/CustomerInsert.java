package com.customer;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CustomerInsert")
public class CustomerInsert extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        boolean isUsernameTaken = false; // You should check if the username is already taken here.

        if (isUsernameTaken) {
            // Set an alert message if the username is taken.
            request.setAttribute("alertMessage", "Username is already taken");

            // Forward the request back to the customerinsert.jsp.
            RequestDispatcher dis = request.getRequestDispatcher("customerinsert.jsp");
            dis.forward(request, response);
        } else {
            boolean isTrue;
            isTrue = CustomerDBUtil.insertcustomer(name, email, phone, username, password);

            if (isTrue) {
                RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
                dis.forward(request, response);
            } else {
                RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess2.jsp");
                dis2.forward(request, response);
            }
        }
    }
}
