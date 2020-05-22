package com;
import java.sql.*;
import javax.servlet.annotation.WebServlet;

import com.mongodb.*;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;

import com.mongodb.client.model.Filters;
import static com.mongodb.client.model.Filters.*;
import static com.mongodb.client.model.Projections.*;
import com.mongodb.client.model.Sorts;

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

import org.bson.Document;
import org.json.JSONArray;
import org.json.JSONObject;
 
 @WebServlet("/configuration")
 
public class configuration extends HttpServlet { 
	 String str ="";
	private static final long serialVersionUID = 1L;
	
	//the statements to connect to the default mongo server instance running at localhost with default port..
	
	/*MongoClient mongoClient = MongoClients.create();
	MongoDatabase database = mongoClient.getDatabase("selfappraisal");//mention the name of the database which you have created in place of the name "demo"
	MongoCollection<Document> collection = database.getCollection("scores"); //mention the collection where you are storing the user credential details in place of "users"
	
	*/
    public configuration() {
        super();
    }

    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at get request ");
		//doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = "config";	
		//fetching the username and password from the user input with names "username" and "password" which is present in the login.jsp page
		int as_Teach = Integer.parseInt(request.getParameter("as_Teach")); 
		int as_Res = Integer.parseInt(request.getParameter("as_Res"));
		int as_Ser = Integer.parseInt(request.getParameter("as_Ser"));
		int asso_Teach = Integer.parseInt(request.getParameter("asso_Teach"));
		int asso_Res = Integer.parseInt(request.getParameter("asso_Res"));
		int asso_Ser = Integer.parseInt(request.getParameter("asso_Ser"));
		int pro_Teach = Integer.parseInt(request.getParameter("pro_Teach"));
		int pro_Res = Integer.parseInt(request.getParameter("pro_Res"));
		int pro_Ser = Integer.parseInt(request.getParameter("pro_Ser"));
		int prohead_Teach = Integer.parseInt(request.getParameter("prohead_Teach"));
		int prohead_Res = Integer.parseInt(request.getParameter("prohead_Res"));
		int prohead_Ser = Integer.parseInt(request.getParameter("prohead_Ser"));
		int fci1 = Integer.parseInt(request.getParameter("fci1"));
		float fci2 = Float.parseFloat(request.getParameter("fci2"));
		float fci3 = Float.parseFloat(request.getParameter("fci3"));
		float fci4 = Float.parseFloat(request.getParameter("fci4"));
		float fci5 = Float.parseFloat(request.getParameter("fci5"));
		int nirf1 = Integer.parseInt(request.getParameter("nirf1"));
		int index1 = Integer.parseInt(request.getParameter("index1"));
		int index2 = Integer.parseInt(request.getParameter("index2"));
		int index3 = Integer.parseInt(request.getParameter("index3"));
		float jou = Float.parseFloat(request.getParameter("jou"));
		float b1 = Float.parseFloat(request.getParameter("b1"));
		float b2 = Float.parseFloat(request.getParameter("b2"));
		float dis = Float.parseFloat(request.getParameter("dis"));
		float pat = Float.parseFloat(request.getParameter("pat"));
		float rUG = Float.parseFloat(request.getParameter("rUG"));
		float rPG = Float.parseFloat(request.getParameter("rPG"));
		float rPHD = Float.parseFloat(request.getParameter("rPHD"));
		int fp1 = Integer.parseInt(request.getParameter("fp1"));
		float fp2 = Float.parseFloat(request.getParameter("fp2"));
		float fp3 = Float.parseFloat(request.getParameter("fp3"));
		float fp4 = Float.parseFloat(request.getParameter("fp4"));
		int fp5 = Integer.parseInt(request.getParameter("fp5"));
		int cp1 = Integer.parseInt(request.getParameter("cp1"));
		float cp2 = Float.parseFloat(request.getParameter("cp2"));
		float cp3 = Float.parseFloat(request.getParameter("cp3"));
		float cp4 = Float.parseFloat(request.getParameter("cp4"));
		int cp5 = Integer.parseInt(request.getParameter("cp5"));
		float chair = Float.parseFloat(request.getParameter("chair"));
		float cfdp1 = Float.parseFloat(request.getParameter("cfdp1"));
		float cfdp2 = Float.parseFloat(request.getParameter("cfdp2"));
		float talk = Float.parseFloat(request.getParameter("talk"));
		float eveo = Float.parseFloat(request.getParameter("eveo"));
		float invi = Float.parseFloat(request.getParameter("invi"));
		float ind = Float.parseFloat(request.getParameter("ind"));
		float nba1 = Float.parseFloat(request.getParameter("nba1"));
		float nba2 = Float.parseFloat(request.getParameter("nba2"));
		float os1 = Float.parseFloat(request.getParameter("os1"));
		float award = Float.parseFloat(request.getParameter("award"));
		
		String year = request.getParameter("year");
		System.out.println(year);
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			/*Connection con=DriverManager.getConnection(  
			"jdbc:mysql://192.169.197.128:3306/rits_db","rits","Welcome@12#");*/
			Connection con=DriverManager.getConnection(  
					"jdbc:mysql://localhost:3306/rits_db","root","root");
			
			Statement stmt=con.createStatement();
			ResultSet rs = null;
			//ResultSet rs = stmt.executeQuery("");
			
			
				 rs=stmt.executeQuery("select * from scores");
				// System.out.println("inside "+course_type);
			
			
			
			
			JSONObject jsonObject = new JSONObject();
			JSONArray array = new JSONArray();
			while(rs.next()) {
				
				
				str = rs.getString("name");
				System.out.println("str =====---------"+str);
			
			}
			if(str.equals("config")) {
				String sqlUpdate = "update scores SET name = ? , as_Teach = ? , as_Res = ?, as_Ser= ? ,asso_Teach = ?,"
						+ "asso_Res = ? , asso_Ser = ? , pro_Teach = ?, pro_Res = ? ,pro_Ser = ?,"
						+ "prohead_Teach = ? , prohead_Res = ? , prohead_Ser = ?, fci1 = ? ,fci2 = ?,"
						+ "fci3 = ? , fci4 = ? , fci5 = ?, nirf1 = ? ,index1 = ?,"
						+ "b2 = ? , dis = ? , pat = ?, rUG = ? ,rPG = ?,"
						+ "index2 = ? , index3 = ? , jou = ?,  b1= ? ,"
						+ "rPHD = ? , fp1 = ? , fp2 = ?, fp3 = ? ,fp4 = ?,"
						+ "fp5 = ? , cp1 = ? , cp2 = ?, cp3 = ? ,cp4 = ?, cp5 = ? , chair = ? , cfdp1 = ?, cfdp2 = ? ,talk = ?,"
						+ "eveo = ? , invi = ? , ind = ?, nba1 = ? ,nba2 = ?, os1 = ?, award = ? ";
				
				
			
				
				PreparedStatement st = con 
	                    .prepareStatement(sqlUpdate);
				//st.setString(1, name);
				st.setString(1, name);
				st.setInt(2, as_Teach);			
				st.setInt(3, as_Res);
				st.setInt(4, as_Ser);
				st.setInt(5, asso_Teach);
				st.setInt(6, asso_Res);
				st.setInt(7, asso_Ser);
				st.setInt(8, pro_Teach);
				st.setInt(9, pro_Res);
				st.setInt(10, pro_Ser);
				st.setInt(11, prohead_Teach);
				st.setInt(12, prohead_Res);
				st.setInt(13, prohead_Ser);
				st.setInt(14, fci1);			
				st.setFloat(15, fci2);
				
				st.setFloat(16, fci3);
				st.setFloat(17, fci4);
				st.setFloat(18, fci5);
				st.setInt(19, nirf1);
				st.setInt(20, index1);
				st.setInt(21, index2);
				st.setInt(22, index3);
				st.setFloat(23, jou);
				st.setFloat(24, b1);
				st.setFloat(25, b2);
				st.setFloat(26, dis);			
				st.setFloat(27, pat);
				st.setFloat(28, rUG);
				st.setFloat(29, rPG);
				st.setFloat(30, rPHD);
				st.setInt(31, fp1);
				st.setFloat(32, fp2);
				st.setFloat(33, fp3);
				st.setFloat(34, fp4);
				st.setInt(35, fp5);
				st.setInt(36, cp1);
				st.setFloat(37, cp2);
				st.setFloat(38, cp3);
				st.setFloat(39, cp4);
				st.setInt(40, cp5);
				st.setFloat(41, chair);
				st.setFloat(42, cfdp1);
				st.setFloat(43, cfdp2);
				st.setFloat(44, talk);
				st.setFloat(45, eveo);
				st.setFloat(46, invi);
				st.setFloat(47, ind);
				st.setFloat(48, nba1);
				st.setFloat(49, nba2);
				st.setFloat(50, os1);
				st.setFloat(51, award);
				
				st.executeUpdate();			  
	            // Close all the connections 
	            st.close();     
			}
			else {
				PreparedStatement st = con 
                .prepareStatement("insert into scores values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?,"
                		+ " ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,"
                		+ " ?,?, ?, ?, ?, ?, ?, ?, ?, ?,"
                		+ "?, ?, ?, ?, ?, ?, ?, ?, ?, ?,"
                		+ "?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?)");
				
				st.setString(1, name);
				st.setInt(2, as_Teach);			
				st.setInt(3, as_Res);
				st.setInt(4, as_Ser);
				st.setInt(5, asso_Teach);
				st.setInt(6, asso_Res);
				st.setInt(7, asso_Ser);
				st.setInt(8, pro_Teach);
				st.setInt(9, pro_Res);
				st.setInt(10, pro_Ser);
				st.setInt(11, prohead_Teach);
				st.setInt(12, prohead_Res);
				st.setInt(13, prohead_Ser);
				st.setInt(14, fci1);			
				st.setFloat(15, fci2);
				st.setFloat(16, fci3);
				st.setFloat(17, fci4);
				st.setFloat(18, fci5);
				st.setInt(19, nirf1);
				st.setInt(20, index1);
				st.setInt(21, index2);
				st.setInt(22, index3);
				st.setFloat(23, jou);
				st.setFloat(24, b1);
				st.setFloat(25, b2);
				st.setFloat(26, dis);			
				st.setFloat(27, pat);
				st.setFloat(28, rUG);
				st.setFloat(29, rPG);
				st.setFloat(30, rPHD);
				st.setInt(31, fp1);
				st.setFloat(32, fp2);
				st.setFloat(33, fp3);
				st.setFloat(34, fp4);
				st.setInt(35, fp5);
				st.setInt(36, cp1);
				st.setFloat(37, cp2);
				st.setFloat(38, cp3);
				st.setFloat(39, cp4);
				st.setInt(40, cp5);
				st.setFloat(41, chair);
				st.setFloat(42, cfdp1);
				st.setFloat(43, cfdp2);
				st.setFloat(44, talk);
				st.setFloat(45, eveo);
				st.setFloat(46, invi);
				st.setFloat(47, ind);
				st.setFloat(48, nba1);
				st.setFloat(49, nba2);
				st.setFloat(50, os1);
				st.setFloat(51, award);
				
				st.executeUpdate();			  
	            // Close all the connections 
	            st.close();     
			}
			
			
			
			
	                   		
			         
			con.close(); 
			
			}
		catch(Exception e){ System.out.println(e);}
		/*
		collection.updateOne(eq("name", name), new Document("$set", new Document("as_Teach", as_Teach)));
		collection.updateOne(eq("name", name), new Document("$set", new Document("as_Res", as_Res)));
		collection.updateOne(eq("name", name), new Document("$set", new Document("as_Ser", as_Ser)));
		collection.updateOne(eq("name", name), new Document("$set", new Document("asso_Teach", asso_Teach)));
		collection.updateOne(eq("name", name), new Document("$set", new Document("asso_Res", asso_Res)));
		collection.updateOne(eq("name", name), new Document("$set", new Document("asso_Ser", asso_Ser)));
		collection.updateOne(eq("name", name), new Document("$set", new Document("pro_Teach", pro_Teach)));
		collection.updateOne(eq("name", name), new Document("$set", new Document("pro_Res", pro_Res)));
		collection.updateOne(eq("name", name), new Document("$set", new Document("pro_Ser", pro_Ser)));		
		collection.updateOne(eq("name", name), new Document("$set", new Document("prohead_Teach", prohead_Teach)));
		collection.updateOne(eq("name", name), new Document("$set", new Document("prohead_Res", prohead_Res)));
		collection.updateOne(eq("name", name), new Document("$set", new Document("prohead_Ser", prohead_Ser)));		
		collection.updateOne(eq("name", name), new Document("$set", new Document("fci1", fci1)));
		collection.updateOne(eq("name", name), new Document("$set", new Document("fci2", fci2)));
		collection.updateOne(eq("name", name), new Document("$set", new Document("fci3", fci3)));
		collection.updateOne(eq("name", name), new Document("$set", new Document("fci4", fci4)));
		collection.updateOne(eq("name", name), new Document("$set", new Document("fci5", fci5)));
		collection.updateOne(eq("name", name), new Document("$set", new Document("nirf1", nirf1)));
		collection.updateOne(eq("name", name), new Document("$set", new Document("index1", index1)));
		collection.updateOne(eq("name", name), new Document("$set", new Document("index2", index2)));
		collection.updateOne(eq("name", name), new Document("$set", new Document("index3", index3)));
		collection.updateOne(eq("name", name), new Document("$set", new Document("jou", jou)));
		collection.updateOne(eq("name", name), new Document("$set", new Document("b1", b1)));
		collection.updateOne(eq("name", name), new Document("$set", new Document("b2", b2)));
		collection.updateOne(eq("name", name), new Document("$set", new Document("dis", dis)));
		collection.updateOne(eq("name", name), new Document("$set", new Document("pat", pat)));
		collection.updateOne(eq("name", name), new Document("$set", new Document("rUG", rUG)));
		collection.updateOne(eq("name", name), new Document("$set", new Document("rPG", rPG)));
		collection.updateOne(eq("name", name), new Document("$set", new Document("rPHD", rPHD)));
		collection.updateOne(eq("name", name), new Document("$set", new Document("fp1", fp1)));
		collection.updateOne(eq("name", name), new Document("$set", new Document("fp2", fp2)));
		collection.updateOne(eq("name", name), new Document("$set", new Document("fp3", fp3)));
		collection.updateOne(eq("name", name), new Document("$set", new Document("fp4", fp4)));
		collection.updateOne(eq("name", name), new Document("$set", new Document("cp1", cp1)));
		collection.updateOne(eq("name", name), new Document("$set", new Document("cp2", cp2)));
		collection.updateOne(eq("name", name), new Document("$set", new Document("cp3", cp3)));
		collection.updateOne(eq("name", name), new Document("$set", new Document("cp4", cp4)));
		collection.updateOne(eq("name", name), new Document("$set", new Document("chair", chair)));
		collection.updateOne(eq("name", name), new Document("$set", new Document("cfdp1", cfdp1)));
		collection.updateOne(eq("name", name), new Document("$set", new Document("cfdp2", cfdp2)));
		collection.updateOne(eq("name", name), new Document("$set", new Document("talk", talk)));
		collection.updateOne(eq("name", name), new Document("$set", new Document("eveo", eveo)));		
		collection.updateOne(eq("name", name), new Document("$set", new Document("invi", invi)));
		collection.updateOne(eq("name", name), new Document("$set", new Document("ind", ind)));
		collection.updateOne(eq("name", name), new Document("$set", new Document("nba1", nba1)));
		collection.updateOne(eq("name", name), new Document("$set", new Document("nba2", nba2)));
		collection.updateOne(eq("name", name), new Document("$set", new Document("os1", os1)));
		collection.updateOne(eq("name", name), new Document("$set", new Document("award", award)));*/
		
		System.out.println(" changed successfully");
		//request.getSession().setAttribute("user", u_name);
		response.sendRedirect("tester.jsp");

	}
	

	

}
