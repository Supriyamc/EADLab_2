package com;

import java.sql.*;  

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;

@WebServlet("/Appraisal")
public class Appraisal extends HttpServlet{

	/*the following code gives the JAVA file connection to 
		the MongoDatabase by creating new client.*/
	public static  Integer as_Teach;
	public static  Integer as_Res;
	public static  Integer as_Ser;
	public static  Integer asso_Teach;
	public static  Integer asso_Res;
	public static  Integer asso_Ser;
	public static  Integer pro_Teach;
	public static  Integer pro_Res;
	public static  Integer pro_Ser;
	public static  Integer prohead_Teach;
	public static  Integer prohead_Res;
	public static  Integer prohead_Ser;
	

	public class java {

	}

		public Appraisal() {
			super();
		}
		
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			//String desig= request.getParameter("designation");
			as_Teach =Integer.parseInt( request.getParameter("as_Teach"));
			as_Res = Integer.parseInt(request.getParameter("as_Res"));
		    as_Ser = Integer.parseInt(request.getParameter("as_Ser"));
			
			 asso_Teach = Integer.parseInt(request.getParameter("asso_Teach"));
			 asso_Res = Integer.parseInt(request.getParameter("asso_Res"));
			 asso_Ser = Integer.parseInt(request.getParameter("asso_Ser"));
			
			 pro_Teach = Integer.parseInt(request.getParameter("pro_Teach"));
			 pro_Res = Integer.parseInt(request.getParameter("pro_Res"));
			 pro_Ser = Integer.parseInt(request.getParameter("pro_Ser"));
			
			prohead_Teach =Integer.parseInt(request.getParameter("prohead_Teach"));
			 prohead_Res = Integer.parseInt(request.getParameter("prohead_Res"));
			 prohead_Ser = Integer.parseInt(request.getParameter("prohead_Ser"));
			
			
			System.out.println("java running");
			//System.out.println(desig);
			System.out.println(as_Teach);
			System.out.println(as_Res);
			System.out.println(as_Ser);
			
			System.out.println(asso_Teach);
			System.out.println(asso_Res);
			System.out.println(asso_Ser);
			
			System.out.println(pro_Teach);
			System.out.println(pro_Res);
			System.out.println(pro_Ser);
			
			System.out.println(prohead_Teach);
			System.out.println(prohead_Res);
			System.out.println(prohead_Ser);
			/*try{  
				Class.forName("com.mysql.jdbc.Driver");  
				Connection con=DriverManager.getConnection(  
				"jdbc:mysql://192.169.197.128:3306/rits_db","rits","its@Msrit2019");  
				//here rits_db is database name, rits is username and password  
				//PreparedStatement st = con	                   .prepareStatement("insert into QpSetting values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?)"); 
				Statement stmt=con.createStatement();  
				ResultSet rs=stmt.executeQuery("select * from Books");			  
	            // Close all the connections 
				while (rs.next()) {
					rs.getString(1);
					System.out.println("tester"+rs.getString("Faculty_Id"));
				}
	            stmt.close();              
				con.close();  
				}catch(Exception e){ System.out.println(e);}  
			*/
			
		}
		
}
	
	  