package javax.websocket;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;  
class remuneration_jdbc{  
public static void main(String args[]){    
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = (Connection)

		//DriverManager.getConnection("jdbc:mysql://localhost:3308/remuneration","root", "ravi126#kiran");
	    DriverManager.getConnection("jdbc:mysql://192.169.197.128:3306/rits_db","rits", "Welcome@12#");
		System.out.println("connection created");

		if(conn!=null){

		Statement stmt = (Statement) conn.createStatement();
		ResultSet rs=stmt.executeQuery("select * from QpSetting");  
		while(rs.next())  
		System.out.println(rs.getString(1)+"  "+rs.getString(2)+"  "+rs.getString(3));  
		conn.close();  
		

		}
	}
	catch(Exception ex){
		ex.printStackTrace();
		}
}
}


