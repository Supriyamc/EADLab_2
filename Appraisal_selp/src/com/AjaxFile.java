package com;

import javax.servlet.annotation.WebServlet;

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
import java.sql.*;

@WebServlet({"/AjaxFile"})
public class AjaxFile extends HttpServlet {
	int as_Teach = 0,as_Res=0, as_Ser=0, asso_Teach=0, asso_Res=0,asso_Ser =0,pro_Teach =0,pro_Res =0,pro_Ser =0,
	prohead_Teach=0, prohead_Res=0, prohead_Ser=0, fci1=0, 
	nirf1 =0, index1=0, index2 =0, index3 =0, fp1=0,fp5=0,cp1=0,cp5=0;
	
	float fci2,fci3, fci4,fci5,jou,b1,b2,dis,pat,rUG,rPG,rPHD,fp2,fp3,
			fp4,cp2,cp3,cp4,chair,cfdp1,cfdp2,talk,eveo,invi,ind,nba1,nba2,os1,award;
	 /*MongoClient mongoClient = MongoClients.create();
		MongoDatabase database = mongoClient.getDatabase("selfappraisal"); //mention the name of the database which you have created in place of the name "demo"
		//MongoCollection<Document> collection = database.getCollection("scores"); //mention the collection where you are storing the user credential details in place of "users"
		MongoCollection<org.bson.Document> collection = database.getCollection("scores");*/
		
		private void get_config() {
			try{  
				
			Class.forName("com.mysql.jdbc.Driver");  
			/*Connection con=DriverManager.getConnection(  
			"jdbc:mysql://192.169.197.128:3306/rits_db","rits","Welcome@12#");*/
			Connection con=DriverManager.getConnection(  
					"jdbc:mysql://localhost:3306/rits_db","root","root");
			
			Statement stmt=con.createStatement();
			ResultSet result = null;
			//ResultSet rs = stmt.executeQuery("");
			
			
				 result=stmt.executeQuery("select * from scores");
			
				while(result.next()){
					
					//result = result.toString();
					System.out.println("Result:"+ result.getInt("as_Teach"));
					as_Teach = result.getInt("as_Teach");
					as_Res = result.getInt("as_Res");
					as_Ser = result.getInt("as_Ser");
					
					asso_Teach = result.getInt("asso_Teach");
					asso_Res = result.getInt("asso_Res");
					asso_Ser = result.getInt("asso_Ser");
					
					pro_Teach = result.getInt("pro_Teach");
					pro_Res = result.getInt("pro_Res");
					pro_Ser = result.getInt("pro_Ser");
					
					prohead_Teach = result.getInt("prohead_Teach");
					prohead_Res = result.getInt("prohead_Res");
					prohead_Ser = result.getInt("prohead_Ser");
					
					fci1 = result.getInt("fci1");
					fci2 = result.getFloat("fci2");
					fci3 = result.getFloat("fci3");
					fci4 = result.getFloat("fci4");
					fci5 = result.getFloat("fci5");
					nirf1 = result.getInt("nirf1");
					
					index1 = result.getInt("index1");
					index2 = result.getInt("index2");
					index3 = result.getInt("index3");
					
					jou = result.getFloat("jou");
					b1 = result.getFloat("b1");
					b2 = result.getFloat("b2");
					
					dis = result.getFloat("dis");
					pat = result.getFloat("pat");
					rUG = result.getFloat("rUG");
					
					rPG = result.getFloat("rPG");
					rPHD = result.getFloat("rPHD");
					fp1 = result.getInt("fp1");
					fp2 = result.getFloat("fp2");
					fp3 = result.getFloat("fp3");
					fp4 = result.getFloat("fp4");
					fp5 = result.getInt("fp5");
					cp5 = result.getInt("cp5");
					cp1 = result.getInt("cp1");
					cp2 = result.getFloat("cp2");
					cp3 = result.getFloat("cp3");
					cp4 = result.getFloat("cp4");
					chair = result.getFloat("chair");
					cfdp1 = result.getFloat("cfdp1");
					cfdp2 = result.getFloat("cfdp2");
					talk = result.getFloat("talk");
					eveo = result.getFloat("eveo");
					
					invi = result.getFloat("invi");
					ind = result.getFloat("ind");
					nba1 = result.getFloat("nba1");
					nba2 = result.getFloat("nba2");
					os1 = result.getFloat("os1");
					award = result.getFloat("award");
					
					}}

		catch(Exception e){ System.out.println(e);}
				
					
		}
		
			
		
	private static final long serialVersionUID = 1L;
	int fciScore, nirfJournals, indexedPapers, journalPublication, books, disclosuresFiled, 
	patentsGranted, researchGuidanceUg, researchGuidanceMaster, researchGuidancePhd, fundedProjects1, 
	fundedProjects2, fundedProjects3, fundedProjects4, fundedProjects5, consultingProjects1, consultingProjects2, 
	consultingProjects3, consultingProjects4, consultingProjects5, chairReviewer, fiveDayWorkShop, fiveDayWorkShop1, threeDayWorkShop, threeDayWorkShop1, invitedTalksOutside, eventsOutside, 
	invitedTalksInside, industryRelations, instDeptServicesCoordinator, instDeptServicesOthers, detailsOfResponsibilities, 
	othServices, awardsHonours, profTeam;
	String anyContribution, designation;
	
	int isAsst = 0, isAssoc = 0, isProf = 0, isHead = 0;
	int Max_Teaching_Score = 0, Max_Research_Score = 0, Max_Service_Score = 0;
	double Teaching_Score = 0, resScore = 0, serScore = 0;
	double totalScore = 0, bonusScore = 0, finalScore = 0;
	double Rscore = 0;
	
	double  score13 = 0,
			score14 = 0,
			score15 = 0,
			score16 = 0,
			score17 = 0,
			score18 = 0,
			score19 = 0,
			score20 = 0,
			score21 = 0,
			score22 = 0;
	
	double  score2 = 0,
			score3 = 0,
			score4 = 0,
			score5 = 0,
			score6 = 0,
			score7 = 0,
			score8 = 0,
			score9 = 0,
			score10 = 0,
			score11 = 0,
			score12 = 0;
	
	private static DecimalFormat df = new DecimalFormat("0.00");
	
	private void calculate() { 
		
		
		assignMarks(designation);
		Rscore = researchScore();
		Teaching_Score = teachingScore();
		totalScore = Double.parseDouble(df.format(Teaching_Score + Rscore + serviceScore()));
		//bonusScore = Double.parseDouble(df.format(bonusFrom100() + bonusFrom60() + bonusFrom50() + bonusFrom30() + bonusFrom20()));
		finalScore = Double.parseDouble(df.format(bonusScore + totalScore));
		//finalScore = Double.parseDouble(df.format(finalScore));
	}
	
	private void assignMarks(String desig) {
		
		//To fetch scores		
		if (desig.contains("Assistant")) { 
			get_config();
			Max_Teaching_Score = as_Teach;
			System.out.println("Max teaching score:"+Max_Teaching_Score);
			Max_Research_Score = as_Res; 
			System.out.println("Max res score:"+Max_Research_Score);
			Max_Service_Score = as_Ser;
		System.out.println("Max service score:"+Max_Service_Score);
			isAsst = 1;
			isAssoc = 0;
			isProf = 0;
			isHead = 0;
		}
		if (desig.contains("Associate")) {
			Max_Teaching_Score = asso_Teach;
			Max_Research_Score = asso_Res; 
			Max_Service_Score = asso_Ser;
			isAsst = 0;
			isAssoc = 1;
			isProf = 0;
			isHead = 0;
		}
		if (desig.contains("Professor") && (!desig.contains("Assistant") && !desig.contains("Associate"))) { 
			Max_Teaching_Score = pro_Teach;
			Max_Research_Score = pro_Res; 
			Max_Service_Score = pro_Ser;
			isAsst = 0;
			isAssoc = 0;
			isProf = 1;
			isHead = 0;
		}
		if (desig.contains("Head")) { 
			Max_Teaching_Score = prohead_Teach;
			Max_Research_Score = prohead_Res; 
			Max_Service_Score = prohead_Ser;
			isAsst = 0;
			isAssoc = 0;
			isProf = 0;
			isHead = 1;
		}
	}
	

	private double teachingScore() {
		get_config();
		if (fciScore >= 85) {
			return Max_Teaching_Score;
		}
		else if (fciScore >= 80 && fciScore < 85) {
			return Double.parseDouble(df.format(Max_Teaching_Score * fci1));
		}
		else if (fciScore >= 75 && fciScore < 80) {
			return Double.parseDouble(df.format(Max_Teaching_Score * fci2));
		}
		else if (fciScore >= 70 && fciScore < 75) {
			return Double.parseDouble(df.format(Max_Teaching_Score * fci3));
		}
		else if (fciScore < 70) {
			return Double.parseDouble(df.format(Max_Teaching_Score * fci4));
		}
		else {
			return 0;
		}
	}
	
	private double researchScore() {
		get_config();
		score2 = nirfJournals * Max_Research_Score;
		//flag2 = (score2 > 0) ? true : false;
		
		if(isAsst == 1 ) {
			score3 = indexedPapers * (Max_Research_Score /index1);
		}
		else if (isAssoc == 1) {
			score3 = indexedPapers * (Max_Research_Score /index2);
		}
		else if (isProf == 1 || isHead == 1) {
			score3 = indexedPapers * (Max_Research_Score / index3);
		}
		
		score4 = ( journalPublication > 0 ) ? (Max_Research_Score * jou) : 0 ;
		
		/*if (books > 0 || booksChapters > 0) {
			if (books == 0) {
				if (booksChapters >= 1 && booksChapters <= 5) {
					score5 = Max_Research_Score * 0.2 * booksChapters;
				} else if (booksChapters > 5) {
					score5 = Max_Research_Score;
				}
			} else if (booksChapters == 0) {
				if (books == 1 || books == 2) {
					score5 = Max_Research_Score * 0.5 * books;
				} else if (books > 2) {
					score5 = Max_Research_Score;
				}
			} else {
				double bookScore = (books <= 2) ? (0.5 * Max_Research_Score * books) : Max_Research_Score;
				double bookChapScore = (booksChapters <= 5) ? (0.2 * Max_Research_Score * booksChapters) : Max_Research_Score;
				score5 = ((bookScore + bookChapScore) <= Max_Research_Score) ? (bookScore + bookChapScore) : Max_Research_Score;
			}
		} else {
			score5 = 0;
		}*/
		
		if (books > 0) { score5 = 0; }
		
		if (disclosuresFiled > 0) {
			if (disclosuresFiled <= 10) {
				score6 = Max_Research_Score * dis * disclosuresFiled;
			} else if (disclosuresFiled > 10) {
				score6 = Max_Research_Score;
			}
		} else {
			score6 = 0;
		}
		
		if (patentsGranted > 0) {
				score7 = Max_Research_Score * pat * patentsGranted;
		} else {
			score7 = 0;
		}
		//flag7 = (score7 > 0) ? true : false;
		
		if (researchGuidanceUg > 0) {
				score8 = rUG * Max_Research_Score * researchGuidanceUg;
			if (score8 > Max_Research_Score) {
				score8 = Max_Research_Score;
			}
		} else {
			score8 = 0;
		}
		
		if (researchGuidanceMaster > 0) {
			score9 = rPG * Max_Research_Score * researchGuidanceMaster;
			if (score9 > Max_Research_Score) {
				score9 = Max_Research_Score;
			}
		} else {
			score9 = 0;
		}
		
		if (researchGuidancePhd > 0) {
				score10 = rPHD * Max_Research_Score * researchGuidancePhd;
			if (score10 > Max_Research_Score) {
				score10 = Max_Research_Score;
			}
		} else {
			score10 = 0;
		}
		
		if (fundedProjects1 > 0 || fundedProjects2 > 0 || fundedProjects3 > 0 || fundedProjects4 > 0) {

			double funded1Score = fundedProjects1 * Max_Research_Score * fp1;
			double funded2Score = fundedProjects2 * Max_Research_Score * fp2;
			double funded3Score = fundedProjects3 * Max_Research_Score * fp3;
			double funded4Score = fundedProjects4 * Max_Research_Score * fp4;
			double funded5Score = fundedProjects5 * Max_Research_Score * 1;
		//	flag11a = (funded1Score > 0) ? true : false;
			//flag11b = (funded2Score > 0) ? true : false;
		//	flag11c = (funded3Score > 0) ? true : false;
		//	flag11d = (funded4Score > 0) ? true : false; 
			score11= funded1Score + funded2Score + funded3Score + funded4Score + funded5Score;
		} else {
			 	score11 = 0;
			 }
		//flag11 = (score11 > 0) ? true : false;
		
		if (consultingProjects1 > 0 || consultingProjects2 > 0 || consultingProjects3 > 0 || consultingProjects4 > 0) {
			
			double consulting1Score = consultingProjects1 * Max_Research_Score * cp1;
			double consulting2Score = consultingProjects2 * Max_Research_Score * cp2;
			double consulting3Score = consultingProjects3 * Max_Research_Score * cp3;
			double consulting4Score = consultingProjects4 * Max_Research_Score * cp4;
			double consulting5Score = consultingProjects5 * Max_Research_Score * 1;
		//	flag12a = (consulting1Score > 0) ? true : false;
		//	flag12b = (consulting2Score > 0) ? true : false;
		//	flag12c = (consulting3Score > 0) ? true : false;
		//	flag12d = (consulting4Score > 0) ? true : false;
			score12 = consulting1Score + consulting2Score + consulting3Score + consulting4Score + consulting5Score;
		} else {
			score12 = 0;
		}
		//flag12 = (score12 > 0) ? true : false;
		
		resScore = score3+score4+score5+score6+score8+score9+score10;
		bonusScore = score2 + score7 + score11 + score12;
		bonusS(resScore, bonusScore);
		
		//if (resScore >= Max_Research_Score) { 
		//	bonusScore = bonusFinder (score2, score7, score11, score12, true);
		//}
		//else { 
		//	bonusScore = bonusFinder (score2, score7, score11, score12, false);
		//}
		//bonusScore = bonusFinder(score2, score7, score11, score12);
		//return ((bonusScore != 0) ? Max_Research_Score : Double.parseDouble(df.format(resScore + bonusScore)));
		return resScore;
	}
	
	private void bonusS (double researchScore, double _bonusScore) {
		if ((researchScore + _bonusScore) <= Max_Research_Score) { 
			resScore = researchScore + _bonusScore;
			bonusScore = 0;
		}
		if (researchScore >= Max_Research_Score) { 
			resScore = Max_Research_Score;
		}
		if ((researchScore + _bonusScore) > Max_Research_Score) { 
			resScore = researchScore + (Max_Research_Score - researchScore);
			bonusScore = bonusScore - (Max_Research_Score - researchScore);
		}
	}
	
	private double serviceScore() {
		get_config();
		if (chairReviewer > 0) {
			score13 = chair * Max_Service_Score;
		} else {
			score13 = 0;
		}
		
		if (fiveDayWorkShop > 0 || threeDayWorkShop > 0) {
			if (fiveDayWorkShop == 0) {
				score14 = cfdp1 * Max_Service_Score;
			} else if (threeDayWorkShop == 0) {
				score14 =cfdp2 * Max_Service_Score;
			} else {
				double fiveDayScore = (cfdp2 * Max_Service_Score);
				double threeDayScore = (cfdp1 * Max_Service_Score);
				score14 = fiveDayScore + threeDayScore + 0;
			}
		} else {
			score14 = 0;
		}
		if (fiveDayWorkShop1 > 0 || threeDayWorkShop1 > 0) {
			if (fiveDayWorkShop1 == 0) {
				score14+= cfdp1 * Max_Service_Score;
			} else if (threeDayWorkShop1 == 0) {
				score14+= cfdp2* Max_Service_Score;
			} else {
				double fiveDayScore1 = (cfdp2 * Max_Service_Score);
				double threeDayScore1 = (cfdp1 * Max_Service_Score);
				score14+= fiveDayScore1 + threeDayScore1 + 0;
			}
		} else {
			score14+= 0;
		}
		 
		if (invitedTalksOutside > 0) {
			score15 = (talk* Max_Service_Score);
		} else {
			score15 = 0;
		}
		if (eventsOutside > 0) {
			score16 = (eveo * Max_Service_Score);
		} else {
			score16 = 0;
		}

		if (invitedTalksInside > 0) {
			score17 = invi * Max_Service_Score;
		} else {
			score17 = 0;
		}

		if (industryRelations > 0) {
			score18 = ind * Max_Service_Score;
		} else {
			score18 = 0;
		}
		
		if (instDeptServicesCoordinator > 0 || instDeptServicesOthers > 0 || detailsOfResponsibilities > 0) {
			if (instDeptServicesOthers == 0) {
				score19 = nba1 * Max_Service_Score;
			} else if (instDeptServicesCoordinator == 0) {
				score19 = nba2 * Max_Service_Score;
			} else if (detailsOfResponsibilities == 0) {
				score19 = nba2 * Max_Service_Score;
			} else {
				double coordinatorScore = (nba2 * Max_Service_Score);
				double otherScore = (nba1 * Max_Service_Score);
				double responsibilitiesScore = (1 * Max_Service_Score);
				score19 = coordinatorScore + otherScore + responsibilitiesScore + 0;
			}
		} else {
			score19 = 0;
		}

		if (othServices > 0) {
			score20 = os1 * Max_Service_Score;
		} else {
			score20 = 0;
		}

		if (awardsHonours > 0) {
			score21 = ((award * awardsHonours * Max_Service_Score) >= Max_Service_Score) ? Max_Service_Score : (0.15 * awardsHonours * Max_Service_Score);
		} else {
			score21 = 0;
		}

		/*if (profTeam > 0) {
			score22 = 0.02 * Max_Service_Score;
		} else {
			score22 = 0;
		}*/
		
		return Double.parseDouble(df.format(score13+score14+score15+score16+score17+score18+score19+score20+score21));
	}
	
	public AjaxFile() {

	  }
	  
	  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		  
		 
			System.out.print("runinning");
		  String startYear = request.getParameter("startYear");
	    String endYear = request.getParameter("endYear");
	    String fullName = request.getParameter("fullName");
	    String department = request.getParameter("department");
	    designation = request.getParameter("designation");
	    Map<String, Double> scores = new LinkedHashMap<>();
	    
	     fciScore = Integer.parseInt(request.getParameter("fciScore"));
		 nirfJournals = Integer.parseInt(request.getParameter("nirfJournals"));
		 indexedPapers = Integer.parseInt(request.getParameter("indexedPapers"));
		 journalPublication = Integer.parseInt(request.getParameter("journalPublication"));
		 books = Integer.parseInt(request.getParameter("books"));
		 //booksChapters = Integer.parseInt(request.getParameter("booksChapters"));
		 disclosuresFiled = Integer.parseInt(request.getParameter("disclosuresFiled"));
		 patentsGranted = Integer.parseInt(request.getParameter("patentsGranted"));
		 researchGuidanceUg = Integer.parseInt(request.getParameter("researchGuidanceUg"));
		 researchGuidanceMaster = Integer.parseInt(request.getParameter("researchGuidanceMaster"));
		 researchGuidancePhd = Integer.parseInt(request.getParameter("researchGuidancePhd"));
		 fundedProjects1 = Integer.parseInt(request.getParameter("fundedProjects1"));
		 fundedProjects2 = Integer.parseInt(request.getParameter("fundedProjects2"));
		 fundedProjects3 = Integer.parseInt(request.getParameter("fundedProjects3"));
		 fundedProjects4 = Integer.parseInt(request.getParameter("fundedProjects4"));
		 //fundedProjects5 = Integer.parseInt(request.getParameter("fundedProjects5"));
		 consultingProjects1 = Integer.parseInt(request.getParameter("consultingProjects1"));
		 consultingProjects2 = Integer.parseInt(request.getParameter("consultingProjects2"));
		 consultingProjects3 = Integer.parseInt(request.getParameter("consultingProjects3"));
		 consultingProjects4 = Integer.parseInt(request.getParameter("consultingProjects4"));
		 //consultingProjects5 = Integer.parseInt(request.getParameter("consultingProjects5"));
		 chairReviewer = Integer.parseInt(request.getParameter("chairReviewer"));	
		 fiveDayWorkShop = Integer.parseInt(request.getParameter("fiveDayWorkShop"));
		 //fiveDayWorkShop1 = Integer.parseInt(request.getParameter("fiveDayWorkShop1"));
		 threeDayWorkShop = Integer.parseInt(request.getParameter("threeDayWorkShop"));
		 //threeDayWorkShop1 = Integer.parseInt(request.getParameter("threeDayWorkShop1"));
		 invitedTalksOutside = Integer.parseInt(request.getParameter("invitedTalksOutside"));
		 eventsOutside = Integer.parseInt(request.getParameter("eventsOutside"));
		 invitedTalksInside = Integer.parseInt(request.getParameter("invitedTalksInside"));
		 industryRelations = Integer.parseInt(request.getParameter("industryRelations"));
		 instDeptServicesCoordinator = Integer.parseInt(request.getParameter("instDeptServicesCoordinator"));
		 instDeptServicesOthers = Integer.parseInt(request.getParameter("instDeptServicesOthers"));
		 //detailsOfResponsibilities = Integer.parseInt(request.getParameter("detailsOfResponsibilities"));
		 othServices = Integer.parseInt(request.getParameter("othServices"));
		 awardsHonours = Integer.parseInt(request.getParameter("awardsHonours"));
		 //profTeam = Integer.parseInt(request.getParameter("profTeam"));
		 anyContribution = request.getParameter("anyContribution");
		 
		 response.setContentType("application/json");
		    try
		    {
		    	calculate();
		    	
		    	Teaching_Score = Double.parseDouble(df.format(Teaching_Score));
		    	score2 = Double.parseDouble(df.format(score2));
		    	score3 = Double.parseDouble(df.format(score3));
		    	score4 = Double.parseDouble(df.format(score4));
		    	score5 = Double.parseDouble(df.format(score5));
		    	score6 = Double.parseDouble(df.format(score6));
		    	score7 = Double.parseDouble(df.format(score7));
		    	score8 = Double.parseDouble(df.format(score8));
		    	score9 = Double.parseDouble(df.format(score9));
		    	score10 = Double.parseDouble(df.format(score10));
		    	score11 = Double.parseDouble(df.format(score11));
		    	score12 = Double.parseDouble(df.format(score12));
		    	score13 = Double.parseDouble(df.format(score13));
		    	score14 = Double.parseDouble(df.format(score14));
		    	score15 = Double.parseDouble(df.format(score15));
		    	score16 = Double.parseDouble(df.format(score16));
		    	score17 = Double.parseDouble(df.format(score17));
		    	score18 = Double.parseDouble(df.format(score18));
		    	score19 = Double.parseDouble(df.format(score19));
		    	score20 = Double.parseDouble(df.format(score20));
		    	score21 = Double.parseDouble(df.format(score21));
		    	//score22 = Double.parseDouble(df.format(score22));
		    	
		    	
		    	scores.put("totalScore", totalScore);
		    	scores.put("bonusScore", bonusScore);
		    	scores.put("finalScore", finalScore);
		    	
		    	
		    	scores.put("score1", Teaching_Score);
		    	scores.put("score2", score2);
		    	scores.put("score3", score3);
		    	scores.put("score4", score4);
		    	scores.put("score5", score5);
		    	scores.put("score6", score6);
		    	scores.put("score7", score7);
		    	scores.put("score8", score8);
		    	scores.put("score9", score9);
		    	scores.put("score10", score10);
		    	scores.put("score11", score11);
		    	scores.put("score12", score12);
		    	scores.put("score13", score13);
		    	scores.put("score14", score14);
		    	scores.put("score15", score15);
		    	scores.put("score16", score16);
		    	scores.put("score17", score17);
		    	scores.put("score18", score18);
		    	scores.put("score19", score19);
		    	scores.put("score20", score20);
		    	scores.put("score21", score21);
		    	//scores.put("score22", score22);
		    	System.out.println("running");
		    	String json = new Gson().toJson(scores);
		    	response.setCharacterEncoding("UTF-8");
		    	response.getWriter().write(json);
		    	
		    }
		    catch (Exception e)
		    {
		      e.printStackTrace();
		    }
	  }
}

