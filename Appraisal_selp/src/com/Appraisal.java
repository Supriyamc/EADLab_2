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
	
	
	
		public Appraisal() {
			super();
		}
		
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			//String desig= request.getParameter("designation");
			String as_Teach = request.getParameter("as_Teach");
			String as_Res = request.getParameter("as_Res");
			String as_Ser = request.getParameter("as_Ser");
			
			String asso_Teach = request.getParameter("asso_Teach");
			String asso_Res = request.getParameter("asso_Res");
			String asso_Ser = request.getParameter("asso_Ser");
			
			String pro_Teach = request.getParameter("pro_Teach");
			String pro_Res = request.getParameter("pro_Res");
			String pro_Ser = request.getParameter("pro_Ser");
			
			String prohead_Teach = request.getParameter("prohead_Teach");
			String prohead_Res = request.getParameter("prohead_Res");
			String prohead_Ser = request.getParameter("prohead_Ser");
			int asso_Teach1 = Integer.parseInt(request.getParameter("asso_Teach"));
			
			double	score7 = 10 * 0.5 * asso_Teach1;
		
			System.out.println(score7);
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
	
	  
