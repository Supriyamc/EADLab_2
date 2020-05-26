package com;
import javax.servlet.annotation.WebServlet;
import java.sql.*;

import com.mongodb.*;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;

import com.mongodb.client.model.Filters;
import com.mongodb.client.FindIterable;
import java.util.Iterator;
import static com.mongodb.client.model.Filters.*;
import static com.mongodb.client.model.Projections.*;
import com.mongodb.client.model.Sorts;
import com.sun.xml.internal.fastinfoset.util.StringArray;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServlet;

import org.json.JSONArray;
import org.json.JSONObject;
import org.json.simple.*;

import org.bson.Document;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.LinkedHashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.google.gson.*;

@WebServlet("/nonpaidnon_details")

public class nonpaidnon_details extends HttpServlet { 
	private static final long serialVersionUID = 1L;
	
	//the statements to connect to the default mongo server instance running at localhost with default port..
	
	
	String  report_str = "";
	int count = 0;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at get request ");
		//doPost(request, response);
	}
	
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		//fetching the username and password from the user input with names "username" and "password" which is present in the login.jsp page
		
		
		String Publication_Date = request.getParameter("Publication_Date");
		//System.out.println("ppppp");
		//System.out.println(Publication_Date);
		String Faculty_Id = request.getParameter("faculty_id");
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			/*Connection con=DriverManager.getConnection(  
			"jdbc:mysql://192.169.197.128:3306/rits_db","rits","Welcome@12#");*/
			Connection con=DriverManager.getConnection(  
					"jdbc:mysql://localhost:3306/rits_db","root","root");  
			//here rits_db is database name, rits is username and password  
			Statement stmt=con.createStatement();
			ResultSet rs = null;
			//ResultSet rs = stmt.executeQuery("");
			
			rs=stmt.executeQuery("select * from non_paid_journal where Non_Refered_Or_Refered='NonRefered' and Publication_Date='"+Publication_Date+"' and Faculty_Id='"+Faculty_Id+"'");
				// System.out.println("inside "+course_type);
			
			JSONObject jsonObject = new JSONObject();
			JSONArray array = new JSONArray();
			while(rs.next()) {
				
			JSONObject record = new JSONObject();
			record.put("Faculty_Id", rs.getString("Faculty_Id"));
			record.put("Paper_Title", rs.getString("Paper_Title"));
			record.put("Journal_Name", rs.getString("Journal_Name"));
			
			record.put("Publication_Date", rs.getString("Publication_Date"));
		   array.put(record);
			
		}					
			System.out.println(array);	
			String str = array.toString();
			response.getWriter().append(str);			
			con.close();  
		
		}
		catch(Exception e){ System.out.println(e);}  	
	}
}
