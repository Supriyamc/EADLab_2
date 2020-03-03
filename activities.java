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
 
 @WebServlet("/jsp/activities")
 
public class activities extends HttpServlet { 
	private static final long serialVersionUID = 1L;
	
	//the statements to connect to the default mongo server instance running at localhost with default port..
	
	MongoClient mongoClient = MongoClients.create();
	MongoDatabase database = mongoClient.getDatabase("Renumeration"); //mention the name of the database which you have created in place of the name "demo"
	MongoCollection<Document> collection = database.getCollection("question_paper_setting"); //mention the collection where you are storing the user credential details in place of "users"
	MongoCollection<Document> collection2 = database.getCollection("scheme_solution");
    public activities() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at get request ");
		//doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String user_name = request.getParameter("user_name");
		
		String subject_code1 = request.getParameter("subject_code1");		
		String exam_type1 = request.getParameter("exam_type1");		
		String subject_code2 = request.getParameter("subject_code2");
		String exam_type2 = request.getParameter("exam_type2");
		String subject_code3 = request.getParameter("subject_code3");
		String exam_type3 = request.getParameter("exam_type3");
		String subject_code4 = request.getParameter("subject_code4");
		String exam_type4 = request.getParameter("exam_type4");
		String subject_code5 = request.getParameter("subject_code5");
		String exam_type5 = request.getParameter("exam_type5");
		String subject_code6 = request.getParameter("subject_code6");
		String exam_type6 = request.getParameter("exam_type6");
		
		
		if(exam_type1.equals("Semester End Exam")) {
			subject_code1 = "SE_" + subject_code1 ;
		}
		if(exam_type1.equals("Make Up Exam")) {
			subject_code1 = "MU_" + subject_code1 ;
		}
		if(exam_type1.equals("Supplementary Exam")) {
			subject_code1 = "SP_" + subject_code1 ;
		}
		
		if(exam_type2.equals("Semester End Exam")) {
			subject_code2 = "SE_" + subject_code2 ;
		}
		if(exam_type2.equals("Make Up Exam")) {
			subject_code2 = "MU_" + subject_code2 ;
		}
		if(exam_type2.equals("Supplementary Exam")) {
			subject_code2 = "SP_" + subject_code2 ;
		}
		
		if(exam_type3.equals("Semester End Exam")) {
			subject_code3 = "SE_" + subject_code3 ;
		}
		if(exam_type3.equals("Make Up Exam")) {
			subject_code3 = "MU_" + subject_code3 ;
		}
		if(exam_type3.equals("Supplementary Exam")) {
			subject_code3 = "SP_" + subject_code3 ;
		}
		
		if(exam_type4.equals("Semester End Exam")) {
			subject_code4 = "SE_" + subject_code4 ;
		}
		if(exam_type4.equals("Make Up Exam")) {
			subject_code4 = "MU_" + subject_code4 ;
		}
		if(exam_type4.equals("Supplementary Exam")) {
			subject_code4 = "SP_" + subject_code4 ;
		}
		
		if(exam_type5.equals("Semester End Exam")) {
			subject_code5 = "SE_" + subject_code5 ;
		}
		if(exam_type5.equals("Make Up Exam")) {
			subject_code5 = "MU_" + subject_code5 ;
		}
		if(exam_type5.equals("Supplementary Exam")) {
			subject_code5 = "SP_" + subject_code5 ;
		}
		
		if(exam_type6.equals("Semester End Exam")) {
			subject_code6 = "SE_" + subject_code6 ;
		}
		if(exam_type6.equals("Make Up Exam")) {
			subject_code6 = "MU_" + subject_code6 ;
		}
		if(exam_type6.equals("Supplementary Exam")) {
			subject_code6 = "SP_" + subject_code6 ;
		}
		
		
		Document questions = new Document();
		questions.put("user_name", user_name);
		questions.put("subject_code1", subject_code1);
		questions.put("subject_code2", subject_code2);
		questions.put("subject_code3", subject_code3);
		questions.put("subject_code4", subject_code4);
		questions.put("subject_code5", subject_code5);
		questions.put("subject_code6", subject_code6);		
		
		collection.insertOne(questions);
		
		//Scheme and solution data from html 
		
		String SS_subject_code1 = request.getParameter("SS_subject_code1");		
		String SS_exam_type1 = request.getParameter("SS_exam_type1");		
		String SS_subject_code2 = request.getParameter("SS_subject_code2");
		String SS_exam_type2 = request.getParameter("SS_exam_type2");
		String SS_subject_code3 = request.getParameter("SS_subject_code3");
		String SS_exam_type3 = request.getParameter("SS_exam_type3");
		String SS_subject_code4 = request.getParameter("SS_subject_code4");
		String SS_exam_type4 = request.getParameter("SS_exam_type4");
		String SS_subject_code5 = request.getParameter("SS_subject_code5");
		String SS_exam_type5 = request.getParameter("SS_exam_type5");
		String SS_subject_code6 = request.getParameter("SS_subject_code6");
		String SS_exam_type6 = request.getParameter("SS_exam_type6");
		
		
		if(SS_exam_type1.equals("Semester End Exam")) {
			SS_subject_code1 = "SE_" + SS_subject_code1 ;
		}
		if(SS_exam_type1.equals("Make Up Exam")) {
			SS_subject_code1 = "MU_" + SS_subject_code1 ;
		}
		if(SS_exam_type1.equals("Supplementary Exam")) {
			SS_subject_code1 = "SP_" + SS_subject_code1 ;
		}
		
		if(SS_exam_type2.equals("Semester End Exam")) {
			SS_subject_code2 = "SE_" + SS_subject_code2 ;
		}
		if(SS_exam_type2.equals("Make Up Exam")) {
			SS_subject_code2 = "MU_" + SS_subject_code2 ;
		}
		if(SS_exam_type2.equals("Supplementary Exam")) {
			SS_subject_code2 = "SP_" + SS_subject_code2 ;
		}
		
		if(SS_exam_type3.equals("Semester End Exam")) {
			SS_subject_code3 = "SE_" + SS_subject_code3 ;
		}
		if(SS_exam_type3.equals("Make Up Exam")) {
			SS_subject_code3 = "MU_" + SS_subject_code3 ;
		}
		if(SS_exam_type3.equals("Supplementary Exam")) {
			SS_subject_code3 = "SP_" + SS_subject_code3 ;
		}
		
		if(SS_exam_type4.equals("Semester End Exam")) {
			SS_subject_code4 = "SE_" + SS_subject_code4 ;
		}
		if(SS_exam_type4.equals("Make Up Exam")) {
			SS_subject_code4 = "MU_" + SS_subject_code4 ;
		}
		if(SS_exam_type4.equals("Supplementary Exam")) {
			SS_subject_code4 = "SP_" + SS_subject_code4 ;
		}
		
		if(SS_exam_type5.equals("Semester End Exam")) {
			SS_subject_code5 = "SE_" + SS_subject_code5 ;
		}
		if(SS_exam_type5.equals("Make Up Exam")) {
			SS_subject_code5 = "MU_" + SS_subject_code5 ;
		}
		if(SS_exam_type5.equals("Supplementary Exam")) {
			SS_subject_code5 = "SP_" + SS_subject_code5 ;
		}
		
		if(SS_exam_type6.equals("Semester End Exam")) {
			SS_subject_code6 = "SE_" + SS_subject_code6 ;
		}
		if(SS_exam_type6.equals("Make Up Exam")) {
			SS_subject_code6 = "MU_" + SS_subject_code6 ;
		}
		if(SS_exam_type6.equals("Supplementary Exam")) {
			SS_subject_code6 = "SP_" + SS_subject_code6 ;
		}
		
		
		Document scheme_sl = new Document();
		scheme_sl.put("user_name", user_name);
		scheme_sl.put("subject_code1", SS_subject_code1);
		scheme_sl.put("subject_code2", SS_subject_code2);
		scheme_sl.put("subject_code3", SS_subject_code3);
		scheme_sl.put("subject_code4", SS_subject_code4);
		scheme_sl.put("subject_code5", SS_subject_code5);
		scheme_sl.put("subject_code6", SS_subject_code6);		
		
		collection2.insertOne(scheme_sl);
		
		
        response.sendRedirect("activities.jsp");
        System.out.println("Question paper setting saved successfully");
        
		
	}
	
	

	

}
