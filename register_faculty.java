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
 
 @WebServlet("/jsp/register_faculty")
 
public class register_faculty extends HttpServlet { 
	private static final long serialVersionUID = 1L;
	
	//the statements to connect to the default mongo server instance running at localhost with default port..
	
	MongoClient mongoClient = MongoClients.create();
	MongoDatabase database = mongoClient.getDatabase("Renumeration"); //mention the name of the database which you have created in place of the name "demo"
	MongoCollection<Document> collection = database.getCollection("admin_faculty"); //mention the collection where you are storing the user credential details in place of "users"
	
    public register_faculty() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at get request ");
		//doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		//fetching the username and password from the user input with names "username" and "password" which is present in the login.jsp page
		
		
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String department = request.getParameter("department");
		String password = request.getParameter("password");
		
		
		Document faclt = new Document();
		faclt.put("type", "faculty");
		
		faclt.put("firstname", firstname);
		faclt.put("lastname", lastname);
		faclt.put("email", email);
		faclt.put("phone", phone);
		faclt.put("department", department);
		faclt.put("password", password);
		
        collection.insertOne(faclt);
        response.sendRedirect("register_faculty.jsp");
		
	}
	
	

	

}
