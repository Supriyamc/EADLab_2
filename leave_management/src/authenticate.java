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
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class authenticate
 */
@WebServlet("/authenticate")
public class authenticate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public authenticate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		String u_name = request.getParameter("username");
		String pwd = request.getParameter("password");
		 System.out.println(u_name);
		 System.out.println(pwd);
		 
		 
		 try{
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/rits_db","root","eadlab");
				System.out.println("connected");
				Statement stmt=conn.createStatement();
				ResultSet rs=stmt.executeQuery("select * from login where user_name='"+u_name+"'and password='"+pwd+"'");
				
				if(rs.next()) {
						
					response.sendRedirect("index.jsp");
					System.out.print(rs.getString(1)+"successful login");
					request.getSession().setAttribute("faculty_name", rs.getString("faculty_name"));
					request.getSession().setAttribute("faculty_id", rs.getString("faculty_id"));
					request.getSession().setAttribute("designation", rs.getString("designation"));
					request.getSession().setAttribute("email", rs.getString("email"));
					
					}
					else {
					
						response.sendRedirect("login.jsp");
						System.out.print("try one more time login");
					}
					conn.close();
			}catch(Exception e){
				
			}
		
		
		doGet(request, response);
	}

}
