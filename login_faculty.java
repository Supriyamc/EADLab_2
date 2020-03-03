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
 
 @WebServlet("/jsp/login_faculty")
 
public class login_faculty extends HttpServlet { 
	private static final long serialVersionUID = 1L;
	
	//the statements to connect to the default mongo server instance running at localhost with default port..
	
	MongoClient mongoClient = MongoClients.create();
	MongoDatabase database = mongoClient.getDatabase("Renumeration"); //mention the name of the database which you have created in place of the name "demo"
	MongoCollection<Document> collection = database.getCollection("faculties"); //mention the collection where you are storing the user credential details in place of "users"
	
    public login_faculty() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at get request ");
		//doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		//fetching the username and password from the user input with names "username" and "password" which is present in the login.jsp page
		
		
		String u_name = request.getParameter("username");
		String pwd = request.getParameter("password");
		
		if (collection.find(and(eq("email", u_name), eq("password", pwd))).iterator().hasNext()) {  //in place of username and password, use the attributes which you have used to store the user details...
			//what is essentially happening is collection variable which is of type mongocollection is used to query the mongo database
			//the method used here is to retrieve the list i.e. why the keyword 'find'
			//the and() operator behaves the way you would expect it to behave...i.e like a logical and operator
			//inside the and() operator , i have made use of eq() operator, short for equal opearator which again behaves the way you would expect it to behave
			//i have specifying what is to be equated by specifying the query filters which is username and the variable u_name which essentially means that the value for attribute username is compared with the value stored in the u_name variable which when is equal will return true or else will return false
			//when all the operators return true, the find() method will return the data 
			//the requirement here is to know whether the user exists in the database or not; for that i just need to know whether the query which i have supplied to mongodatabase returns any data or not;
			//in case the mongo returns some data i will have a collection variable with that data; but the collection variable's find operator's return type is of iterator, that is why i have appended an iterator() method to loop through the iterator objects;
			//once i am in the iterator loop, i just need to know whether that object has any next onject since the iterator method essentially works by having a pointer pointing to the next object, and for the very first onject it will be pointing next pointer to the first object(since it has not started looping/iterating yet)
			//once the hasnext() method returns true that means that there is atleast one object, i am good to go the further flow; if it returns false that means that there is no object found, my else part will have the code to execute the otherwise condition i.e. authentication fail condition
 		
			//once authentication is successful, the flow logic will come here
			//i am redirecting to a page called admin_page.jsp after adding to a session variable called user
			
			request.getSession().setAttribute("user", "admin");
			response.sendRedirect("activities.jsp");
		}
		else
		{
			//redirect back to the login page 
			
			response.sendRedirect("login_faculty.jsp");
		}
	}
	

	

}
