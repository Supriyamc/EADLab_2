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
 
 @WebServlet("/jsp/report")
 
public class report extends HttpServlet { 
	private static final long serialVersionUID = 1L;
	
	//the statements to connect to the default mongo server instance running at localhost with default port..
	
	MongoClient mongoClient = MongoClients.create();
	MongoDatabase database = mongoClient.getDatabase("Renumeration"); //mention the name of the database which you have created in place of the name "demo"
	MongoCollection<Document> collection = database.getCollection("question_paper_setting"); //mention the collection where you are storing the user credential details in place of "users"
	
	
	
    public report() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at get request ");
		//doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		//fetching the username and password from the user input with names "username" and "password" which is present in the login.jsp page
		
	
		//String user_name = request.getParameter("user_name");
		
		String user_name = request.getParameter("user_name");
		System.out.println("Username  Q= " +user_name);
		Document myDoc = collection.find(in("user_name", user_name)).first();
		//Document myDoc = collection.find().first();
		//Document myDoc = collection.find(regex("subject_code1", "SE_")).first().projection(fields(include("subject_code1"), excludeId()));
		//Document myDoc =  collection.find(regex("subject_code1", "SE_")).first();
		//Document myDoc = collection.find(regex("subject_code1", "SE_")).first().projection(new Document("subject_code1" , 1));
		
		String report_str= myDoc.toString(); 
		
		System.out.println("Question paper setting" +report_str);
			
			response.getWriter().append(report_str);
		
			//request.getSession().setAttribute("user", report_str);
			//response.sendRedirect("report.jsp");
			
		
		
	
        
		
	}
	
	

	

}
