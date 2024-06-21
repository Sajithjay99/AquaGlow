package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustomerDBUtil {

    public static List<Customer> validate(String username, String password) {
        ArrayList<Customer> cus = new ArrayList<>();
        String url = "jdbc:mysql://localhost:3306/laundry";
        String user = "root";
        String pass = "Ss19914@";

        try {
            Class.forName("com.mysql.jdbc.Driver");
            try (Connection con = DriverManager.getConnection(url, user, pass);
                    PreparedStatement stmt = con.prepareStatement("SELECT * FROM customer WHERE username=? AND password=?")) {
                stmt.setString(1, username);
                stmt.setString(2, password);

                ResultSet rs = stmt.executeQuery();

                if (rs.next()) {
                    int id = rs.getInt(1);
                    String name = rs.getString(2);
                    String email = rs.getString(3);
                    String phone = rs.getString(4);
                    String userU = rs.getString(5);
                    String passU = rs.getString(6);

                    Customer c = new Customer(id, name, email, phone, userU, passU);
                    cus.add(c);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cus;
    }
    
    public static boolean insertcustomer(String name, String email, String phone, String username, String password) {
        boolean isSuccess = false;
        String url = "jdbc:mysql://localhost:3306/laundry";
        String user = "root";
        String pass = "Ss19914@";

        try {
            Class.forName("com.mysql.jdbc.Driver");
            try (Connection con = DriverManager.getConnection(url, user, pass)) {
                // Check if the username is already taken
                if (!isUsernameTaken(con, username)) {
                    String sql = "INSERT INTO customer (name, email, phone, username, password) VALUES (?, ?, ?, ?, ?)";
                    PreparedStatement stmt = con.prepareStatement(sql);
                    stmt.setString(1, name);
                    stmt.setString(2, email);
                    stmt.setString(3, phone);
                    stmt.setString(4, username);
                    stmt.setString(5, password);

                    int rowsInserted = stmt.executeUpdate();

                    if (rowsInserted > 0) {
                        isSuccess = true;
                    }
                } else {
                    // Username is already taken
                    isSuccess = false;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return isSuccess;
    }

    private static boolean isUsernameTaken(Connection con, String username) {
        try {
            PreparedStatement stmt = con.prepareStatement("SELECT username FROM customer WHERE username=?");
            stmt.setString(1, username);
            ResultSet rs = stmt.executeQuery();
            return rs.next(); // If there's a result, the username is already taken
        } catch (Exception e) {
            e.printStackTrace();
            return true; // In case of an error, assume the username is taken
        }
    }

    

 public static boolean updatecustomer(String id, String name, String email, String phone, String username, String password) {
    	
    	boolean isSuccess = false;
		try {
    		
    		Connection con = DBConnect.getConnection();
    		Statement stmt = con.createStatement();
    		String sql = "update customer set name='"+name+"',email='"+email+"',phone='"+phone+"',username='"+username+"',password='"+password+"'"
    				+ "where id='"+id+"'";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }

 public static List<Customer> getCustomerDetails(String Id) {
 	
 	int convertedID = Integer.parseInt(Id);
 	
 	ArrayList<Customer> cus = new ArrayList<>();
 	
 	try {
 		
 		Connection con = DBConnect.getConnection();
 		Statement stmt = con.createStatement();
 		String sql = "select * from customer where id='"+convertedID+"'";
 		ResultSet rs = stmt.executeQuery(sql);
 		
 		while(rs.next()) {
 			int id = rs.getInt(1);
 			String name = rs.getString(2);
 			String email = rs.getString(3);
 			String phone = rs.getString(4);
 			String username = rs.getString(5);
 			String password = rs.getString(6);
 			
 			Customer c = new Customer(id,name,email,phone,username,password);
 			cus.add(c);
 		}
 		
 	}
 	catch(Exception e) {
 		e.printStackTrace();
 	}	
 	return cus;	
 }

 public static boolean deleteCustomer(String id) {
 	
 	int convId = Integer.parseInt(id);
 	
 	boolean isSuccess = false;
	try {
 		
 		Connection con = DBConnect.getConnection();
 		Statement stmt = con.createStatement();
 		String sql = "delete from customer where id='"+convId+"'";
 		int r = stmt.executeUpdate(sql);
 		
 		if (r > 0) {
 			isSuccess = true;
 		}
 		else {
 			isSuccess = false;
 		}
 		
 	}
 	catch (Exception e) {
 		e.printStackTrace();
 	}
 	
 	return isSuccess;
 }
 
    }
