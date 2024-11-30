package com.practice;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Register extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            // Retrieving form data
            String name = request.getParameter("user_name");
            String password = request.getParameter("user_password");
            String email = request.getParameter("user_email");

            // Displaying the received data
            out.println("<h1>Registration Information</h1>");
            out.println("<p>Name: " + name + "</p>");
            out.println("<p>Password: " + password + "</p>");
            out.println("<p>Email: " + email + "</p>");

            // Database connection
            try {
                // Load the MySQL JDBC driver
                Class.forName("com.mysql.cj.jdbc.Driver");
                
                // Establish the database connection
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/mydatabases", "root", "arun");
                
                // SQL query to insert the user data
                String q = "INSERT INTO registration (name, password, email) VALUES (?, ?, ?)";
                
                // Creating PreparedStatement
                PreparedStatement pst = con.prepareStatement(q);
                pst.setString(1, name);   // Set the name parameter
                pst.setString(2, password); // Set the password parameter
                pst.setString(3, email);    // Set the email parameter
                
                // Execute the update
                pst.executeUpdate();
                
                
                // Close the connection
          out.println("done");
            } catch (SQLException | ClassNotFoundException e) {
              
                e.printStackTrace();
                  out.println("error");
            }

            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "User Registration Servlet";
    }
}
