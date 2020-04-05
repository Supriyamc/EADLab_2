package com.github.elizabetht.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import com.github.elizabetht.util.DbUtil;

public class LeaveManagement {
	private Connection dbConnection;
	
	public LeaveManagement() {
		dbConnection = DbUtil.getConnection();
	}	
	
	public void save(String CL, String EL, String RH, String ML, String CCL) {
		try {
			PreparedStatement prepStatement = dbConnection.prepareStatement("insert into leavemanagement(CL,EL,RH,ML,CCL) values (?, ?, ?, ?, ?)");
			prepStatement.setString(1, CL);
			prepStatement.setString(2, EL);
			prepStatement.setString(3, RH);
			prepStatement.setString(4, ML);
			prepStatement.setString(5, CCL);
			
			prepStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		
	}
}
	
	

