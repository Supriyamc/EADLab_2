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


 
 @WebServlet("/ml_count")
 
public class ml_count extends HttpServlet { 
	private static final long serialVersionUID = 1L;
	
	//the statements to connect to the default mongo server instance running at localhost with default port..
	
	
    public ml_count() {
        super();
    }

    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at get request ");
		//doPost(request, response);
		try{ 
			String faculty_id = "rk";
			Class.forName("com.mysql.jdbc.Driver");  
			/*Connection con=DriverManager.getConnection(  
			"jdbc:mysql://192.169.197.128:3306/rits_db","rits","Welcome@12#");*/
			Connection con=DriverManager.getConnection(  
					"jdbc:mysql://localhost:3306/rits_db","root","eadlab"); 
			//here rits_db is database name, rits is username and password  
			Statement stmt=con.createStatement();
			ResultSet rs = null;
			
			
				 rs=stmt.executeQuery("select * from  maternity_leave where  faculty_id='"+faculty_id+"'");
							
			
			
			JSONObject jsonObject = new JSONObject();
			JSONArray array = new JSONArray();
			while(rs.next()) {
				
			JSONObject record = new JSONObject();
			record.put("ml", rs.getInt("ml"));
		    record.put("bal_ml", rs.getInt("bal_ml"));
		    record.put("avail_ml", rs.getInt("avail_ml"));
		    record.put("no_ml", rs.getInt("no_ml"));
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
		
		
		int ml = Integer.parseInt(request.getParameter("ml"));
		int avail_ml = Integer.parseInt(request.getParameter("avail_ml"));
		int bal_ml = Integer.parseInt(request.getParameter("bal_ml"));
		int no_ml = Integer.parseInt(request.getParameter("no_ml"));
		System.out.println("java running");
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/rits_db","root","eadlab");  
			//here rits_db is database name, rits is username and password  
			//PreparedStatement st = con 	                .prepareStatement("insert into QpSetting values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?)"); 
			
			if(bal_ml== 10) {
			PreparedStatement st = con 
	                   .prepareStatement("insert into  maternity_leave values(?, ?, ?, ?,?)"); 
			
			st.setString(1, "rk");
			st.setInt(2, ml);
			st.setInt(3, avail_ml); 
			st.setInt(4, bal_ml);
			st.setInt(5, no_ml);
			st.executeUpdate();			  
            // Close all the connections 
            st.close(); 
			}
			else {
				String sql = "UPDATE  maternity_leave SET faculty_id =?, ml =?, avail_ml =?,  bal_ml=?, no_ml =? where faculty_id = ?";
				System.out.println("update here");
				PreparedStatement ut = con.prepareStatement(sql);
				ut.setString(1, "rk");
				ut.setInt(2, ml);
				ut.setInt(3, avail_ml); 
				ut.setInt(4, bal_ml);
				ut.setInt(5, no_ml);
				ut.setString(6, "rk");
				ut.executeUpdate();			  
	            // Close all the connections 
	            ut.close(); 
			}
			
			
			             
			con.close();  
			}catch(Exception e){ System.out.println(e);} 
		
		response.sendRedirect("ML.jsp");
		
		
	}
	

	

}
