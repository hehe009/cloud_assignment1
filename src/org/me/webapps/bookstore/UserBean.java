package org.me.webapps.bookstore;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserBean {

	private String username;
    private String password;
    private String firstName;
    private String lastName;
    private String email;
    public boolean valid;
    private Connection connection;
    private PreparedStatement customrecord;
    private ResultSet result;
    
    public String getFirstName() {
        return firstName;
	}

     public void setFirstName(String newFirstName) {
        firstName = newFirstName;
	}

	
     public String getLastName() {
        return lastName;
			}

     public void setLastName(String newLastName) {
        lastName = newLastName;
			}
			

     public String getPassword() {
        return password;
	}

     public void setPassword(String newPassword) {
        password = newPassword;
	}
	
			
     public String getUsername() {
        return username;
			}

     public void setUserName(String newUsername) {
        username = newUsername;
			}

				
     public boolean isValid() {
    	 		try {
    	 			Class.forName("org.hsqldb.jdbcDriver");
    				connection = DriverManager.getConnection( "jdbc:hsqldb:hsql://localhost/bookdb", "sa", "" );
    				customrecord = connection
    						.prepareStatement("SELECT username,password, email FROM customers WHERE username = ? AND password = ?");
    				customrecord.setString(1, username);
    				customrecord.setString(2, password);
    				result = customrecord.executeQuery();				
    				if (result.next()) {
    					valid = true;
    					email = result.getString("email");
    				     }
    				result.close();
    				customrecord.close();
    				connection.close();
    	 		} catch (Throwable theException) {
    	 			try {
    	 				if (result != null) {
    	 					result.close();
    	 				}
    	 				if (customrecord != null) {
    	 					customrecord.close();
    	 				}
    					connection.close();
    					System.out.println("Connection closed");
    				}

    				// process SQLException on close operation
    				catch (SQLException sqlException) {
    					sqlException.printStackTrace();
    				}
    	 		}
        return valid;
	}

     public void setValid(boolean newValid) {
        valid = newValid;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}	
}
