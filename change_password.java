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
 
 @WebServlet("/jsp/change_password")
 
public class change_password extends HttpServlet { 
	private static final long serialVersionUID = 1L;
	
	//the statements to connect to the default mongo server instance running at localhost with default port..
	
	MongoClient mongoClient = MongoClients.create();
	MongoDatabase database = mongoClient.getDatabase("Renumeration"); //mention the name of the database which you have created in place of the name "demo"
	MongoCollection<Document> collection = database.getCollection("admin_faculty"); //mention the collection where you are storing the user credential details in place of "users"
	
	
    public change_password() {
        super();
    }

    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at get request ");
		//doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		//fetching the username and password from the user input with names "username" and "password" which is present in the login.jsp page
		
		
		String u_name = request.getParameter("email");
		String password = request.getParameter("password");
		
		Document myDoc = collection.find(eq("email", u_name)).first();
		System.out.println(myDoc.toJson());
		collection.updateOne(eq("email", u_name), new Document("$set", new Document("password", password)));
		System.out.println("Password changed successfully");
		request.getSession().setAttribute("user", u_name);
		response.sendRedirect("change_password.jsp");

	}
	

	

}
