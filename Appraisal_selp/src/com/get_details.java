package com;
import javax.servlet.annotation.WebServlet;
import java.sql.*;

import com.mongodb.*;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;

import com.mongodb.client.model.Filters;
import com.mongodb.client.FindIterable;
import java.util.Iterator;
import static com.mongodb.client.model.Filters.*;
import static com.mongodb.client.model.Projections.*;
import com.mongodb.client.model.Sorts;
import com.sun.xml.internal.fastinfoset.util.StringArray;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServlet;

import org.json.JSONArray;
import org.json.JSONObject;
import org.json.simple.*;

import org.bson.Document;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.LinkedHashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.google.gson.*;

@WebServlet("/get_details")

public class get_details extends HttpServlet { 
	private static final long serialVersionUID = 1L;
	
	//the statements to connect to the default mongo server instance running at localhost with default port..
	
	MongoClient mongoClient = MongoClients.create();
	MongoDatabase database = mongoClient.getDatabase("selfappraisal");//mention the name of the database which you have created in place of the name "demo"
	MongoCollection<Document> collection_books = database.getCollection("books");
	MongoCollection<Document> collection_patents = database.getCollection("patents");
	
	String  report_str = "";
	int count = 0;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at get request ");
		//doPost(request, response);
	}
	
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		//fetching the username and password from the user input with names "username" and "password" which is present in the login.jsp page
		
		
		String year = request.getParameter("year");
		System.out.println(year);
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			/*Connection con=DriverManager.getConnection(  
			"jdbc:mysql://192.169.197.128:3306/rits_db","rits","Welcome@12#");*/
			Connection con=DriverManager.getConnection(  
					"jdbc:mysql://localhost:3306/rits_db","root","root");  
			//here rits_db is database name, rits is username and password  
			Statement stmt=con.createStatement();
			ResultSet rs = null;
			//ResultSet rs = stmt.executeQuery("");
			
			
				 rs=stmt.executeQuery("select * from book_chapters where year='"+year+"'");
				// System.out.println("inside "+course_type);
			
			
			
			
			JSONObject jsonObject = new JSONObject();
			JSONArray array = new JSONArray();
			while(rs.next()) {
				
			JSONObject record = new JSONObject();
			record.put("Faculty_Id", rs.getString("Faculty_Id"));
			record.put("Chapter_Name", rs.getString("Chapter_Name"));
			record.put("Book_Name", rs.getString("Book_Name"));
			record.put("Publisher", rs.getString("Publisher"));
			record.put("Year", rs.getString("Year"));
			
		   array.put(record);
		   
		  
			
		}					
			System.out.println(array);	
			String str = array.toString();
			response.getWriter().append(str);			
			con.close();  
		
			
			
		
		}
		
		
		
			catch(Exception e){ System.out.println(e);}  
		
		
	}
	/*protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String year = request.getParameter("year");
		System.out.println(year);
		//Document search=new Document();
		FindIterable<Document> iterDoc_books = collection_books.find(in("year", year));
		Iterator it_books=iterDoc_books.iterator();
		Document rs_books=null;
		//JSONObject jsonObject = new JSONObject();
		JSONArray array_books = new JSONArray();
		while(it_books.hasNext()){
			rs_books=(Document) it_books.next();
			//result = result.toString();
			//System.out.println("Result:"+ rs.getString("bookchap"));
			JSONObject record_books = new JSONObject();
			record_books.put("bookchap", rs_books.getString("bookchap"));
			record_books.put("title", rs_books.getString("title"));
			record_books.put("pu_name", rs_books.getString("pu_name"));
			record_books.put("year", rs_books.getString("year"));
			
		   array_books.put(record_books);
		   System.out.println(array_books);	
		}
		String str_books = array_books.toString();
		response.getWriter().append(str_books);
		//doPost(request, response);
		
		/*FindIterable<Document> iterDoc_patents = collection_patents.find(in("year", year));
		Iterator it_patents=iterDoc_patents.iterator();
		Document rs_patents=null;
		//JSONObject jsonObject = new JSONObject();
		JSONArray array_patents = new JSONArray();
		while(it_patents.hasNext()){
			rs_patents=(Document) it_patents.next();
			//result = result.toString();
			//System.out.println("Result:"+ rs.getString("bookchap"));
			JSONObject record_patents = new JSONObject();
			record_patents.put("num", rs_patents.getString("num"));
			record_patents.put("year", rs_patents.getString("year"));
			
		   array_books.put(record_patents);
		   System.out.println(array_patents);	
		}
		String str_patents = array_patents.toString();
		response.getWriter().append(str_patents);
		//doPost(request, response);
	}*/

}
