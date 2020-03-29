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
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.simple.*;




 
 @WebServlet("/jsp/get_report")
 
public class get_report extends HttpServlet { 
	private static final long serialVersionUID = 1L;
	
	//the statements to connect to the default mongo server instance running at localhost with default port..
	
	
    public get_report() {
        super();
    }

    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at get request ");
		//doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		//fetching the username and password from the user input with names "username" and "password" which is present in the login.jsp page
		
		
		String course_type = request.getParameter("course_type");
		System.out.println(course_type);
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection(  
			"jdbc:mysql://192.169.197.128:3306/rits_db","rits","Welcome@12#");  
			//here rits_db is database name, rits is username and password  
			Statement stmt=con.createStatement();  
			ResultSet rs=stmt.executeQuery("select * from QpSetting where course_type='"+course_type+"'");
			
			JSONObject jsonObject = new JSONObject();
			JSONArray array = new JSONArray();
			while(rs.next()) {
				
			JSONObject record = new JSONObject();
			record.put("exam_type", rs.getString("exam_type"));
			record.put("subject_code1", rs.getString("subject_code1"));
		    record.put("subject_code2", rs.getString("subject_code2"));
		   array.put(record);
		   
		  System.out.println(array);
			
		}
			


				//rs.getString(1);
				
				
			String str = array.toString();
			response.getWriter().append(str);		
			
			
			
			con.close();  
			}catch(Exception e){ System.out.println(e);}  
		
		
	}
	

	

}
