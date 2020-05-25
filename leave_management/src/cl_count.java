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


 
 @WebServlet("/cl_count")
 
public class cl_count extends HttpServlet { 
	private static final long serialVersionUID = 1L;
	
	//the statements to connect to the default mongo server instance running at localhost with default port..
	
	
    public cl_count() {
        super();
    }

    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at get request ");
		//doPost(request, response);
		try{ 
			String faculty_id = request.getParameter("faculty_id");
			Class.forName("com.mysql.jdbc.Driver");  
			/*Connection con=DriverManager.getConnection(  
			"jdbc:mysql://192.169.197.128:3306/rits_db","rits","Welcome@12#");*/
			Connection con=DriverManager.getConnection(  
					"jdbc:mysql://localhost:3306/rits_db","root","eadlab"); 
			//here rits_db is database name, rits is username and password  
			Statement stmt=con.createStatement();
			ResultSet rs = null;
			
			
				 rs=stmt.executeQuery("select * from casual_leave where  faculty_id='"+faculty_id+"'");
							
			
			
			JSONObject jsonObject = new JSONObject();
			JSONArray array = new JSONArray();
			while(rs.next()) {
				
			JSONObject record = new JSONObject();
			record.put("faculty_id", rs.getString("faculty_id"));
			record.put("cl", rs.getInt("cl"));
		    record.put("bal_cl", rs.getInt("bal_cl"));
		    record.put("avail_cl", rs.getInt("avail_cl"));
		    record.put("no_cl", rs.getInt("no_cl"));
		   array.put(record);
		   
		  System.out.println(array);
			
		}					
				
			String str = array.toString();
			response.getWriter().append(str);
			//response.getWriter().append(str);
			con.close();  
		
			
			
		
		}
		
		
		
			catch(Exception e){ System.out.println(e);}  
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		//fetching the username and password from the user input with names "username" and "password" which is present in the login.jsp page
		
		
		int cl = Integer.parseInt(request.getParameter("cl"));
		int avail_cl = Integer.parseInt(request.getParameter("avail_cl"));
		int bal_cl = Integer.parseInt(request.getParameter("bal_cl"));
		int no_cl = Integer.parseInt(request.getParameter("no_cl"));
		String faculty_id = request.getParameter("faculty_id");
		System.out.println("java running"+bal_cl);
		
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/rits_db","root","eadlab");  
			//here rits_db is database name, rits is username and password  
			//PreparedStatement st = con 	                .prepareStatement("insert into QpSetting values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?)"); 
			
			if(bal_cl== 15) {
			PreparedStatement st = con 
	                   .prepareStatement("insert into casual_leave values(?, ?, ?, ?,?)"); 
			
			
			st.setString(1, faculty_id);
			st.setInt(2, cl);
			st.setInt(3, avail_cl); 
			st.setInt(4, bal_cl);
			st.setInt(5, no_cl);
			
			st.executeUpdate();			  
            // Close all the connections 
            st.close(); 
			}
			else {
				String sql = "UPDATE casual_leave SET faculty_id =?, cl =?, avail_cl =?,  bal_cl=?, no_cl =? where faculty_id = ?";
				System.out.println("update here");
				PreparedStatement ut = con.prepareStatement(sql);
				ut.setString(1, faculty_id);
				ut.setInt(2, cl);
				ut.setInt(3, avail_cl); 
				ut.setInt(4, bal_cl);
				ut.setInt(5, no_cl);
				ut.setString(6, faculty_id);
				ut.executeUpdate();			  
	            // Close all the connections 
	            ut.close(); 
			}
			
			
			             
			con.close();  
			}catch(Exception e){ System.out.println(e);} 
		
		response.sendRedirect("CL.jsp");
		
		
	}
	

	

}
