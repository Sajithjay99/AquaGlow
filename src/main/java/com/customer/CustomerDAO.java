package com.customer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CustomerDAO {
    public static List<Customer> getAllCustomers() {
        List<Customer> customers = new ArrayList<>();
        Connection connection = DBConnect.getConnection();
        if (connection != null) {
            try {
                String query = "SELECT * FROM customer"; // Change table name to match your database
                PreparedStatement preparedStatement = connection.prepareStatement(query);
                ResultSet resultSet = preparedStatement.executeQuery();
                while (resultSet.next()) {
                    int id = resultSet.getInt("id");
                    String name = resultSet.getString("name");
                    String email = resultSet.getString("email");
                    String phone = resultSet.getString("phone");
                    String username = resultSet.getString("username");
                    String password = resultSet.getString("password");
                    // Add more columns as needed

                    customers.add(new Customer(id, name, email, phone, username, password));
                }
                resultSet.close();
                preparedStatement.close();
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return customers;
    }
}
