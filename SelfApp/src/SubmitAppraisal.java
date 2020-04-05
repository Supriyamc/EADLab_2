import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet; 
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.math.RoundingMode;
import java.text.DecimalFormat;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase; 
import com.itextpdf.text.Rectangle;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

@WebServlet("/SubmitAppraisal")
public class SubmitAppraisal extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	int designation, fciScore, nirfJournals, indexedPapers, journalPublication, books, booksChapters, disclosuresFiled, 
	patentsGranted, researchGuidanceUg, researchGuidanceMaster, researchGuidancePhd, fundedProjects1, 
	fundedProjects2, fundedProjects3, fundedProjects4, consultingProjects1, consultingProjects2, 
	consultingProjects3, consultingProjects4, chairReviewer, fiveDayWorkShop, threeDayWorkShop, invitedTalksOutside, eventsOutside, 
	invitedTalksInside, industryRelations, instDeptServicesCoordinator, instDeptServicesOthers, 
	othServices, awardsHonours, profTeam;
	String anyContribution;
	
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
	
	private void assignMarks(int desig) {
		switch (desig) {
		case 1 : 	Max_Teaching_Score = 60;
					Max_Research_Score = 10; 
					Max_Service_Score = 30;
		break;
		
		case 2 : 	Max_Teaching_Score = 50;
					Max_Research_Score = 20; 
					Max_Service_Score = 30;
		break;
		
		case 3 : 	Max_Teaching_Score = 40;
					Max_Research_Score = 30; 
					Max_Service_Score = 30;
		break;
		
		case 4 : 	Max_Teaching_Score = 40;
					Max_Research_Score = 30; 
					Max_Service_Score = 30;
		break;
		}
	}
	
	private double teachingScore() {
		if (fciScore >= 85) {
			return Max_Teaching_Score;
		}
		else if (fciScore >= 80 && fciScore < 85) {
			return Double.parseDouble(df.format(Max_Teaching_Score * 0.9));
		}
		else if (fciScore >= 75 && fciScore < 80) {
			return Double.parseDouble(df.format(Max_Teaching_Score * 0.8));
		}
		else if (fciScore >= 70 && fciScore < 75) {
			return Double.parseDouble(df.format(Max_Teaching_Score * 0.7));
		}
		else if (fciScore < 70) {
			return Double.parseDouble(df.format(Max_Teaching_Score * 0.4));
		}
		else {
			return 0;
		}
	}
	
	private double researchScore() {
		
		
		score2 = nirfJournals * Max_Research_Score;
		//flag2 = (score2 > 0) ? true : false;
		
		if(designation == 1 ) {
			score3 = indexedPapers * (Max_Research_Score / 2);
		}
		else if (designation == 2) {
			score3 = indexedPapers * (Max_Research_Score / 4);
		}
		else if (designation == 3 || designation == 4) {
			score3 = indexedPapers * (Max_Research_Score / 5);
		}
		
		score4 = ( journalPublication > 0 ) ? (Max_Research_Score * 0.1) : 0 ;
		
		if (books > 0 || booksChapters > 0) {
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
		}
		
		if (disclosuresFiled > 0) {
			if (disclosuresFiled <= 10) {
				score6 = Max_Research_Score * 0.1 * disclosuresFiled;
			} else if (disclosuresFiled > 10) {
				score6 = Max_Research_Score;
			}
		} else {
			score6 = 0;
		}
		
		if (patentsGranted > 0) {
				score7 = Max_Research_Score * 0.5 * patentsGranted;
		} else {
			score7 = 0;
		}
		//flag7 = (score7 > 0) ? true : false;
		
		if (researchGuidanceUg > 0) {
				score8 = 0.01 * Max_Research_Score * researchGuidanceUg;
			if (score8 > Max_Research_Score) {
				score8 = Max_Research_Score;
			}
		} else {
			score8 = 0;
		}
		
		if (researchGuidanceMaster > 0) {
			score9 = 0.03 * Max_Research_Score * researchGuidanceMaster;
			if (score9 > Max_Research_Score) {
				score9 = Max_Research_Score;
			}
		} else {
			score9 = 0;
		}
		
		if (researchGuidancePhd > 0) {
				score10 = 0.07 * Max_Research_Score * researchGuidancePhd;
			if (score10 > Max_Research_Score) {
				score10 = Max_Research_Score;
			}
		} else {
			score10 = 0;
		}
		
		if (fundedProjects1 > 0 || fundedProjects2 > 0 || fundedProjects3 > 0 || fundedProjects4 > 0) {

			double funded1Score = fundedProjects1 * Max_Research_Score * 1;
			double funded2Score = fundedProjects2 * Max_Research_Score * 0.5;
			double funded3Score = fundedProjects3 * Max_Research_Score * 0.3;
			double funded4Score = fundedProjects4 * Max_Research_Score * 0.2;
		//	flag11a = (funded1Score > 0) ? true : false;
			//flag11b = (funded2Score > 0) ? true : false;
		//	flag11c = (funded3Score > 0) ? true : false;
		//	flag11d = (funded4Score > 0) ? true : false;
			score11= funded1Score + funded2Score + funded3Score + funded4Score;
		} else {
			 	score11 = 0;
			 }
		//flag11 = (score11 > 0) ? true : false;
		
		if (consultingProjects1 > 0 || consultingProjects2 > 0 || consultingProjects3 > 0 || consultingProjects4 > 0) {
			
			double consulting1Score = consultingProjects1 * Max_Research_Score * 1;
			double consulting2Score = consultingProjects2 * Max_Research_Score * 0.6;
			double consulting3Score = consultingProjects3 * Max_Research_Score * 0.5;
			double consulting4Score = consultingProjects4 * Max_Research_Score * 0.2;
		//	flag12a = (consulting1Score > 0) ? true : false;
		//	flag12b = (consulting2Score > 0) ? true : false;
		//	flag12c = (consulting3Score > 0) ? true : false;
		//	flag12d = (consulting4Score > 0) ? true : false;
			score12 = consulting1Score + consulting2Score + consulting3Score + consulting4Score;
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
		
		if (chairReviewer > 0) {
			score13 = 0.05 * Max_Service_Score;
		} else {
			score13 = 0;
		}
		
		if (fiveDayWorkShop > 0 || threeDayWorkShop > 0) {
			if (fiveDayWorkShop == 0) {
				score14 = 0.05 * Max_Service_Score;
			} else if (threeDayWorkShop == 0) {
				score14 = 0.1 * Max_Service_Score;
			} else {
				double fiveDayScore = (0.1 * Max_Service_Score);
				double threeDayScore = (0.05 * Max_Service_Score);
				score14 = fiveDayScore + threeDayScore + 0;
			}
		} else {
			score14 = 0;
		}
		
		if (invitedTalksOutside > 0) {
			score15 = (0.1 * Max_Service_Score);
		} else {
			score15 = 0;
		}
		if (eventsOutside > 0) {
			score16 = (0.1 * Max_Service_Score);
		} else {
			score16 = 0;
		}

		if (invitedTalksInside > 0) {
			score17 = 0.05 * Max_Service_Score;
		} else {
			score17 = 0;
		}

		if (industryRelations > 0) {
			score18 = 0.1 * Max_Service_Score;
		} else {
			score18 = 0;
		}
		
		if (instDeptServicesCoordinator > 0 || instDeptServicesOthers > 0) {
			if (instDeptServicesOthers == 0) {
				score19 = 0.2 * Max_Service_Score;
			} else if (instDeptServicesCoordinator == 0) {
				score19 = 0.05 * Max_Service_Score;
			} else {
				double coordinatorScore = (0.05 * Max_Service_Score);
				double otherScore = (0.2 * Max_Service_Score);
				score19 = coordinatorScore + otherScore + 0;
			}
		} else {
			score19 = 0;
		}

		if (othServices > 0) {
			score20 = 0.03 * Max_Service_Score;
		} else {
			score20 = 0;
		}

		if (awardsHonours > 0) {
			score21 = ((0.15 * awardsHonours * Max_Service_Score) >= Max_Service_Score) ? Max_Service_Score : (0.15 * awardsHonours * Max_Service_Score);
		} else {
			score21 = 0;
		}

		if (profTeam > 0) {
			score22 = 0.02 * Max_Service_Score;
		} else {
			score22 = 0;
		}
		
		return Double.parseDouble(df.format(score13+score14+score15+score16+score17+score18+score19+score20+score21+score22));
	}

	public SubmitAppraisal() {
		super();
	}

	private static Font pageHeading1 = new Font(Font.FontFamily.TIMES_ROMAN, 16, Font.BOLD);
	private static Font pageHeading2 = new Font(Font.FontFamily.TIMES_ROMAN, 14, Font.BOLD);
	private static Font runningText = new Font(Font.FontFamily.TIMES_ROMAN, 12);
	/*
	 * private static Font catFont = new Font(Font.FontFamily.TIMES_ROMAN, 14,
	 * Font.BOLD);
	 * 
	 * private static Font redFont = new Font(Font.FontFamily.TIMES_ROMAN, 12,
	 * Font.NORMAL, BaseColor.RED); private static Font subFont = new
	 * Font(Font.FontFamily.TIMES_ROMAN, 16, Font.BOLD);
	 */
	private static Font smallBold = new Font(Font.FontFamily.TIMES_ROMAN, 12, Font.BOLD);

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String startYear = request.getParameter("startYear");
		String endYear = request.getParameter("endYear");
		String fullName = request.getParameter("fullName");
		String department = request.getParameter("department");
		
		 designation = Integer.parseInt(request.getParameter("designation")); //1-Asst 2-Assoc 3-Prof 4-HOD
		
		 fciScore = Integer.parseInt(request.getParameter("fciScore"));
		 nirfJournals = Integer.parseInt(request.getParameter("nirfJournals"));
		 indexedPapers = Integer.parseInt(request.getParameter("indexedPapers"));
		 journalPublication = Integer.parseInt(request.getParameter("journalPublication"));
		 books = Integer.parseInt(request.getParameter("books"));
		 booksChapters = Integer.parseInt(request.getParameter("booksChapters"));
		 disclosuresFiled = Integer.parseInt(request.getParameter("disclosuresFiled"));
		 patentsGranted = Integer.parseInt(request.getParameter("patentsGranted"));
		 researchGuidanceUg = Integer.parseInt(request.getParameter("researchGuidanceUg"));
		 researchGuidanceMaster = Integer.parseInt(request.getParameter("researchGuidanceMaster"));
		 researchGuidancePhd = Integer.parseInt(request.getParameter("researchGuidancePhd"));
		 fundedProjects1 = Integer.parseInt(request.getParameter("fundedProjects1"));
		 fundedProjects2 = Integer.parseInt(request.getParameter("fundedProjects2"));
		 fundedProjects3 = Integer.parseInt(request.getParameter("fundedProjects3"));
		 fundedProjects4 = Integer.parseInt(request.getParameter("fundedProjects4"));
		 consultingProjects1 = Integer.parseInt(request.getParameter("consultingProjects1"));
		 consultingProjects2 = Integer.parseInt(request.getParameter("consultingProjects2"));
		 consultingProjects3 = Integer.parseInt(request.getParameter("consultingProjects3"));
		 consultingProjects4 = Integer.parseInt(request.getParameter("consultingProjects4"));
		 chairReviewer = Integer.parseInt(request.getParameter("chairReviewer"));
		 fiveDayWorkShop = Integer.parseInt(request.getParameter("fiveDayWorkShop"));
		 threeDayWorkShop = Integer.parseInt(request.getParameter("threeDayWorkShop"));
		 invitedTalksOutside = Integer.parseInt(request.getParameter("invitedTalksOutside"));
		 eventsOutside = Integer.parseInt(request.getParameter("eventsOutside"));
		 invitedTalksInside = Integer.parseInt(request.getParameter("invitedTalksInside"));
		 industryRelations = Integer.parseInt(request.getParameter("industryRelations"));
		 instDeptServicesCoordinator = Integer.parseInt(request.getParameter("instDeptServicesCoordinator"));
		 instDeptServicesOthers = Integer.parseInt(request.getParameter("instDeptServicesOthers"));
		 othServices = Integer.parseInt(request.getParameter("othServices"));
		 awardsHonours = Integer.parseInt(request.getParameter("awardsHonours"));
		 profTeam = Integer.parseInt(request.getParameter("profTeam"));
		 anyContribution = request.getParameter("anyContribution");

		/*Path pathToDesktop = FileSystems.getDefault().getPath(System.getProperty("user.home") + "/Desktop");
		File appraisalFile = new File(pathToDesktop.toString() + "\\" + fullName + ".pdf");*/
		
		//response.setContentType("application/pdf");
		 response.setContentType("text/html;charset=UTF-8");
	      // Allocate a output writer to write the response message into the network socket
	      PrintWriter out = response.getWriter();
		try {
//			Document document = new Document();
//			document.setPageSize(PageSize.A4);
//
//			//PdfWriter.getInstance(document, new FileOutputStream(appraisalFile));
//			PdfWriter.getInstance(document, response.getOutputStream());
//			document.open();
//			addTitlePage(document, startYear, endYear, fullName, department, designation);
//			addContent(request, response, document);
//			document.close();
			
			//response.sendRedirect("success.jsp");
				 calculate();
			   	 out.println("<!DOCTYPE html>");
		         out.println("<html><head>");
		         out.println("<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>");
		         out.println("<title>Results</title></head>");
		         out.println("<body>");
		        // out.println("<h1>Hello, world!</h1>");   says Hello
		         // Echo client's request information
		         out.println("<p>Serial 1: " + String.valueOf(Teaching_Score) + "</p>");
		         out.println("<p>Serial 2: " + String.valueOf(score2) + "</p>");
		         out.println("<p>Serial 3: " + String.valueOf(score3) + "</p>");
		         out.println("<p>Serial 4: " + String.valueOf(score4) + "</p>");
		         out.println("<p>Serial 5: " + String.valueOf(score5) + "</p>");
		         out.println("<p>Serial 6: " + String.valueOf(score6) + "</p>");
		         out.println("<p>Serial 7: " + String.valueOf(score7) + "</p>");
		         out.println("<p>Serial 8: " + String.valueOf(score8) + "</p>");
		         out.println("<p>Serial 9: " + String.valueOf(score9) + "</p>");
		         out.println("<p>Serial 10: " + String.valueOf(score10) + "</p>");
		         out.println("<p>Serial 11: " + String.valueOf(score11) + "</p>");
		         out.println("<p>Serial 12: " + String.valueOf(score12) + "</p>");
		         out.println("<p>Serial 13: " + String.valueOf(score13) + "</p>");
		         out.println("<p>Serial 14: " + String.valueOf(score14) + "</p>");
		         out.println("<p>Serial 15: " + String.valueOf(score15) + "</p>");
		         out.println("<p>Serial 16: " + String.valueOf(score16) + "</p>");
		         out.println("<p>Serial 17: " + String.valueOf(score17) + "</p>");
		         out.println("<p>Serial 18: " + String.valueOf(score18) + "</p>");
		         out.println("<p>Serial 19: " + String.valueOf(score19) + "</p>");
		         out.println("<p>Serial 20: " + String.valueOf(score20) + "</p>");
		         out.println("<p>Serial 21: " + String.valueOf(score21) + "</p>");
		         out.println("<p>Serial 22: " + String.valueOf(score22) + "</p>");
		         out.println("<---------------------------->");
		         out.println("<p>Total Score: " + String.valueOf(totalScore) + "</p>");
		         out.println("<p>Bonus Score: " + String.valueOf(bonusScore)  + "</p>");
		         out.println("<p>Final Score: " + String.valueOf(finalScore) + "</p>");
		         out.println("<---------------------------->");
		         out.println("<p>Section 1 score: " + String.valueOf(teachingScore()) + "</p>");
		         out.println("<p>Section 2 score: " + String.valueOf(Rscore)  + "</p>");
		         out.println("<p>Section 3 score: " + String.valueOf(serviceScore()) + "</p>");
		       //  out.println("<p>Bonus from 30: " + String.valueOf(bonus30Flag) + "</p>");
		       //  out.println("<p>Bonus from 20: " + String.valueOf(bonus20Flag) + "</p>");
		        // out.println("<p>Remote Address: " + request.getRemoteAddr() + "</p>");
		         // Generate a random number upon each request
		       //  out.println("<p>A Random Number: <strong>" + Math.random() + "</strong></p>");
		         out.println("</body>");
		         out.println("</html>");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally
		{
			/*RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/success.jsp");
            dispatcher.forward(request, response);*/ 
			 out.close();
		}
	}

	private static void addTitlePage(Document document, String startYear, String endYear, String fullName,
			String department, String designation) throws DocumentException {

		Rectangle rect= new Rectangle(36,108);
		rect.enableBorderSide(1);
		rect.enableBorderSide(2);
		rect.enableBorderSide(4);
		rect.enableBorderSide(8);
		rect.setBorder(2);
		rect.setBorderColor(BaseColor.BLACK);
		
		document.add(rect);
		
		Paragraph preface = new Paragraph();
		
		preface.add(new Paragraph("Ramaiah Institute of Technology, Bangalore - 560054", pageHeading1));
		preface.add(new Paragraph("(Autonomous Institute, affiliated to VTU)", pageHeading2));
		
		addEmptyLine(preface, 3);

		preface.add(new Paragraph("Annual Appraisal Form for the Year " + startYear + " - " + endYear, smallBold));
		addEmptyLine(preface, 8);

		preface.add(new Paragraph("Name: " + fullName, runningText));
		preface.add(new Paragraph("Designation: " + designation, runningText));
		preface.add(new Paragraph("Department: " + department, runningText));

		document.add(preface);

		document.newPage();
	}

	private static void addContent(HttpServletRequest request, HttpServletResponse response, Document document)
			throws DocumentException {

		float[] columnWidths = { 1, 8, 1 };

		PdfPTable table = new PdfPTable(3);
		table.setWidthPercentage(100);
		table.setWidths(columnWidths);

		PdfPCell c1 = new PdfPCell(new Phrase("Sl. No.", runningText));
		c1.setHorizontalAlignment(Element.ALIGN_CENTER);
		table.addCell(c1);

		c1 = new PdfPCell(new Phrase("Scoring Category", runningText));
		c1.setHorizontalAlignment(Element.ALIGN_CENTER);
		table.addCell(c1);

		c1 = new PdfPCell(new Phrase("Number", runningText));
		c1.setHorizontalAlignment(Element.ALIGN_CENTER);
		table.addCell(c1);
		table.setHeaderRows(1);

		PdfPCell teachHeading = new PdfPCell(new Phrase("Teaching", runningText));
		teachHeading.setColspan(3);
		table.addCell(teachHeading);

		table.addCell(new Phrase("1.", runningText));
		table.addCell(new Phrase("FCI Score (Average of all courses handled)", runningText));
		table.addCell(new Phrase(request.getParameter("fciScore"), runningText));

		PdfPCell researchHeading = new PdfPCell(new Phrase("Research", runningText));
		researchHeading.setColspan(3);
		table.addCell(researchHeading);

		table.addCell(new Phrase("2.", runningText));
		table.addCell(new Phrase("No. of NIRF/IRF refereed journal papers", runningText));
		table.addCell(new Phrase(request.getParameter("nirfJournals"), runningText));

		table.addCell(new Phrase("3.", runningText));
		table.addCell(new Phrase("No. of indexed conference papers", runningText));
		table.addCell(new Phrase(request.getParameter("indexedPapers"), runningText));

		table.addCell(new Phrase("4.", runningText));
		table.addCell(new Phrase("Publications in other Journals/Conferences", runningText));
		table.addCell(new Phrase(request.getParameter("journalPublication"), runningText));

		table.addCell(new Phrase("5.", runningText));
		table.addCell(new Phrase("Books/Chapters", runningText));
		table.addCell(new Phrase(request.getParameter("booksChapters"), runningText));

		table.addCell(new Phrase("6.", runningText));
		table.addCell(new Phrase("Disclosures Filed", runningText));
		table.addCell(new Phrase(request.getParameter("disclosuresFiled"), runningText));

		table.addCell(new Phrase("7.", runningText));
		table.addCell(new Phrase("Research Guidance/Master's", runningText));
		table.addCell(new Phrase(request.getParameter("researchGuidanceMaster"), runningText));

		table.addCell(new Phrase("8.", runningText));
		table.addCell(new Phrase("Research Guidance UG", runningText));
		table.addCell(new Phrase(request.getParameter("researchGuidanceUg"), runningText));

		table.addCell(new Phrase("9.", runningText));
		table.addCell(new Phrase("Research Guidance Ph.D.", runningText));
		table.addCell(new Phrase(request.getParameter("researchGuidancePhd"), runningText));

		table.addCell(new Phrase("10.", runningText));
		table.addCell(new Phrase("Funded Projects", runningText));
		table.addCell(new Phrase(request.getParameter("fundedProjects"), runningText));

		table.addCell(new Phrase("11.", runningText));
		table.addCell(new Phrase("Consulting Projects", runningText));
		table.addCell(new Phrase(request.getParameter("consultingProjects"), runningText));

		PdfPCell serviceHeading = new PdfPCell(new Phrase("Service and Professional Development", runningText));
		serviceHeading.setColspan(3);
		table.addCell(serviceHeading);

		table.addCell(new Phrase("12.", runningText));
		table.addCell(new Phrase("No. of Conference Chair, Session Chair, Reviewer of Q1 or Q2 Journal", runningText));
		table.addCell(new Phrase(request.getParameter("chairReviewer"), runningText));

		table.addCell(new Phrase("13.", runningText));
		table.addCell(new Phrase("No. of FDP/ Seminar/ Workshop organized as coordinator", runningText));
		table.addCell(new Phrase(request.getParameter("fswCoordinator"), runningText));

		table.addCell(new Phrase("14.", runningText));
		table.addCell(new Phrase("No. of invited technical talks outside the institute", runningText));
		table.addCell(new Phrase(request.getParameter("invitedTalks"), runningText));

		table.addCell(new Phrase("15.", runningText));
		table.addCell(new Phrase("No. of events participation outside the institute\n(FDP/Seminar/Workshop/Conference)", runningText));
		table.addCell(new Phrase(request.getParameter("eventsOutside"), runningText));

		table.addCell(new Phrase("16.", runningText));
		table.addCell(new Phrase("Industry Relations (MoU, Co-hosted event, Technical Talk Series)", runningText));
		table.addCell(new Phrase(request.getParameter("industryRelations"), runningText));

		table.addCell(new Phrase("17.", runningText));
		table.addCell(new Phrase("Institutional/Departmental Services such as NBA/NIRF", runningText));
		table.addCell(new Phrase(request.getParameter("instDeptServices"), runningText));

		table.addCell(new Phrase("18.", runningText));
		table.addCell(new Phrase("Other Services to the institution or society contribution", runningText));
		table.addCell(new Phrase(request.getParameter("othServices"), runningText));

		table.addCell(new Phrase("19.", runningText));
		table.addCell(new Phrase("Awards/ Honours/ New Degree earned", runningText));
		table.addCell(new Phrase(request.getParameter("awardsHonours"), runningText));

		/*table.addCell(new Phrase("20.", runningText));
		table.addCell(new Phrase("FDP attended outside of RIT", runningText));
		table.addCell(new Phrase(request.getParameter("fdpOutside"), runningText));

		table.addCell(new Phrase("21.", runningText));
		table.addCell(new Phrase("Conferences/Workshops attended without presentation", runningText));
		table.addCell(new Phrase(request.getParameter("confWorkAttended"), runningText));*/

		table.addCell(new Phrase("20.", runningText));
		table.addCell(new Phrase("Professionalism / Team spirit", runningText));
		table.addCell(new Phrase(request.getParameter("profTeam"), runningText));

		table.addCell(new Phrase("21.", runningText));
		
		PdfPCell anyContribution = new PdfPCell(new Phrase("Any other major contributions: (Max 500 characters):\n" + request.getParameter("anyContribution"), runningText));
		anyContribution.setColspan(2);
		table.addCell(anyContribution);
		
		table.addCell(new Phrase("", runningText));
		table.addCell(new Phrase("Total", runningText));
		table.addCell(new Phrase(request.getParameter("totalScore"), runningText));

		document.add(table);
		
		Paragraph emptyLine = new Paragraph(" ");
		document.add(emptyLine);
		
		Paragraph signatureParagraph = new Paragraph("Signature of the Faculty", runningText);
		
		//addEmptyLine(signatureParagraph, 3);
		
		//signatureParagraph = new Paragraph("Signature of Faculty", runningText);
		signatureParagraph.setAlignment(Paragraph.ALIGN_RIGHT);
		signatureParagraph.setSpacingBefore(100);
        document.add(signatureParagraph);
        
        document.newPage();
		
		PdfPTable hodRecoTable = new PdfPTable(2);
		hodRecoTable.setWidthPercentage(100);
		hodRecoTable.setSpacingBefore(20f);
		
		hodRecoTable.addCell(new Phrase("Comments from HoD:", runningText));
		hodRecoTable.addCell(new Phrase("Recommended/Not Recommended", runningText));
		
		PdfPCell hodComments = new PdfPCell(new Phrase("\n\n\n\n\n\n\n\n\n\n", runningText));
		hodComments.setColspan(2);
		hodRecoTable.addCell(hodComments);
		
		hodRecoTable.addCell(new Phrase("Date:", runningText));
		hodRecoTable.addCell(new Phrase("Signature", runningText));
		
		document.add(hodRecoTable);
		
		PdfPTable principalRecoTable = new PdfPTable(2);
		principalRecoTable.setWidthPercentage(100);
		principalRecoTable.setSpacingBefore(20f);
		
		principalRecoTable.addCell(new Phrase("Comments from Principal:", runningText));
		principalRecoTable.addCell(new Phrase("   ", runningText));
		
		PdfPCell principalComments = new PdfPCell(new Phrase("\n\n\n\n\n\n\n\n\n\n\n", runningText));
		principalComments.setColspan(2);
		principalRecoTable.addCell(principalComments);
		
		principalRecoTable.addCell(new Phrase("Date:", runningText));
		principalRecoTable.addCell(new Phrase("Signature", runningText));
		
		document.add(principalRecoTable);

	}

	private static void addEmptyLine(Paragraph paragraph, int number) {
		for (int i = 0; i < number; i++) {
			paragraph.add(new Paragraph(" "));
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
