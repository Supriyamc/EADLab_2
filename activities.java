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


 
 @WebServlet("/jsp/activities")
 
public class activities extends HttpServlet { 
	private static final long serialVersionUID = 1L;
	
	//the statements to connect to the default mongo server instance running at localhost with default port..
	
	
    public activities() {
        super();
    }

    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at get request ");
		//doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		//fetching the username and password from the user input with names "username" and "password" which is present in the login.jsp page
		
		int count = 0;
		int sub_total = 0;
		int qp_amt = 100;
		String exam_type = request.getParameter("exam_type");
		String course_type = request.getParameter("course_type");
		String subject_code1 = request.getParameter("subject_code1");
		String subject_code2 = request.getParameter("subject_code2");
		String subject_code3 = request.getParameter("subject_code3");
		String subject_code4 = request.getParameter("subject_code4");
		String subject_code5 = request.getParameter("subject_code5");
		String subject_code6 = request.getParameter("subject_code6");
		if(!subject_code1.equals("")) {
			
			count = 1;
			sub_total = qp_amt * count;
			System.out.println("sub_total"+sub_total);
		}
		if(!subject_code1.equals("") && !subject_code2.equals("")) {
			count = 2;
			sub_total = qp_amt * count;
			System.out.println("sub_total"+sub_total);
		}
		if(!subject_code1.equals("") && !subject_code2.equals("") && !subject_code3.equals("")) {			
			count = 3;
			sub_total = qp_amt * count;
			System.out.println("sub_total"+sub_total);
		}
		if(!subject_code1.equals("") && !subject_code2.equals("") && !subject_code4.equals("")) {
			count = 4;
			sub_total = qp_amt * count;
			System.out.println("sub_total"+sub_total);
		}
		if(!subject_code1.equals("") && !subject_code2.equals("") && !subject_code5.equals("")) {
			count = 5;
			sub_total = qp_amt * count;
			System.out.println("sub_total"+sub_total);
		}
		if(!subject_code1.equals("") && !subject_code2.equals("") && !subject_code6.equals("")) {
			count = 6;
			sub_total = qp_amt * count;
			System.out.println("sub_total"+sub_total);
		}
		
		
		System.out.println("java running");
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection(  
			"jdbc:mysql://192.169.197.128:3306/rits_db","rits","Welcome@12#");  
			//here rits_db is database name, rits is username and password  
			PreparedStatement st = con 
	                   .prepareStatement("insert into QpSetting values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?)"); 
			st.setString(1, "3"); 
			st.setString(2, "Ravikumar"); 
			st.setString(3, subject_code1); 
			st.setString(4, "10000"); 
			st.setString(5, exam_type); 
			st.setString(6, subject_code2); 
			st.setString(7, subject_code3); 
			st.setString(8, subject_code4); 
			st.setString(9, subject_code5); 
			st.setString(10, subject_code6); 
			st.setString(11, course_type);
			st.setInt(12, sub_total); 
			st.executeUpdate();			  
            // Close all the connections 
            st.close();              
			con.close();  
			}catch(Exception e){ System.out.println(e);}  
		
		
	}
	

	

}
