package com.github.elizabetht.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import com.github.elizabetht.util.DbUtil;

public class StudentRepository {
	private Connection dbConnection;
	
	public StudentRepository() {
		dbConnection = DbUtil.getConnection();
	}
	

	
	public void save(String userName, String password, String firstName, String lastName, String dateOfBirth, String emailAddress) {
		try {
			PreparedStatement prepStatement = dbConnection.prepareStatement("insert into student(userName, password, firstName, lastName, dateOfBirth, emailAddress,role) values (?, ?, ?, ?, ?, ?,?)");
			prepStatement.setString(1, userName);
			prepStatement.setString(2, password);
			prepStatement.setString(3, firstName);
			prepStatement.setString(4, lastName);
			prepStatement.setDate(5, new java.sql.Date(new SimpleDateFormat("MM/dd/yyyy")
			.parse(dateOfBirth.substring(0, 10)).getTime()));
			prepStatement.setString(6, emailAddress);
			prepStatement.setString(7, "faculty");
			
			prepStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ParseException e) {			
			e.printStackTrace();
		}
	}
	
	
	public boolean findByUserName(String userName) {
		try {
			PreparedStatement prepStatement = dbConnection.prepareStatement("select count(*) from student where userName = ?");
			prepStatement.setString(1, userName);	
						
			ResultSet result = prepStatement.executeQuery();
			if (result != null) {	
				while (result.next()) {
					if (result.getInt(1) == 1) {
						return true;
					}				
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public String findByLogin(String userName, String password) {
		String none = "";
		try {
			PreparedStatement prepStatement = dbConnection.prepareStatement("select password , role from student where userName = ?");
			prepStatement.setString(1, userName);
			
			String admin = "admin";
			String faculty = "faculty";
			String role_faculty="faculty";
			String role_admin="admin";
			ResultSet result = prepStatement.executeQuery();
			if (result != null) {
				while (result.next()) {
					System.out.println(result.getString(1));
					System.out.println(result.getString(2));
					System.out.println(result);
					
					if (result.getString(1).equals(password) && result.getString(2).equals(role_faculty)) {
						
						return faculty;
						 
					}
					
					else	if (result.getString(1).equals(password) && result.getString(2).equals(role_admin)) {
						
						return admin;
						 
					}
				}				
				
			}			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return none;
		//return false;
	}

}