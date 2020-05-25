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


 
 @WebServlet("/save_leaves")
 
public class save_leaves extends HttpServlet { 
	private static final long serialVersionUID = 1L;
	
	//the statements to connect to the default mongo server instance running at localhost with default port..
	
	
    public save_leaves() {
        super();
    }

    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at get request ");
		//doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		//fetching the username and password from the user input with names "username" and "password" which is present in the login.jsp page
		
		
		
		System.out.println("java running");
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/rits_db","root","eadlab");  
			//here rits_db is database name, rits is username and password  
			//PreparedStatement st = con 	                .prepareStatement("insert into QpSetting values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?)"); 
			PreparedStatement st = con 	   
					.prepareStatement("select * from leave"); 
			st.executeUpdate();			  
            // Close all the connections 
            st.close();              
			con.close();  
			}catch(Exception e){ System.out.println(e);} 
		
		response.sendRedirect("CL.jsp");
		
		
	}
	

	

}
