	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		pageEncoding="ISO-8859-1"%>
	<!DOCTYPE html>
	<html>
	<head>

	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title >Ramaiah - Self-Appraisal System</title>
	<jsp:include page="styling.jsp"  ></jsp:include>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

		<script>
				function printDiv() {
					calculateDiv();
					let printId = "printDiv"
						let removeId = "skipPrintDiv" 
						
						let removeEle = document.getElementById(removeId);
						let parent = removeEle.parentNode;
						parent.removeChild(removeEle);
						window.print()
						parent.appendChild(removeEle);
				}
				
						
		</script>
	 
	</head>
	<body> 
		<div class="container-fluid">
			<div class="container-fluid col-sm-2">&nbsp;</div>
				<div class="container-fluid col-sm-8">
					<form method="post" action="SubmitAppraisal" id="formAppraisal">
					<div id="printDiv">
					
					<div id="logo-image" class="pull-left" >
					<a href="index.html"> <img src=" http://d2e9h3gjmozu47.cloudfront.net/brand.png" style="max-height:100px;">
					</a>
					</div>
					
					<div class="jumbotron" style="background-color:indigo">
						<h2 class="text-center" style="color:indigo;">Ramaiah Institute of Technology</h2>
						<p class="text-center"style="color:indigo">(Autonomous Institute, affiliated to
							VTU)</p>
					
					
					</div>
					<h2 class="text-center">Self-Appraisal Form</h2>
					<!-- <input type="text" id="startYear" name="startYear" /><span
						class="add-on"><i class="icon-calendar"></i></span> -->

					<p>
						Annual Appraisal Form for the Year <input type="text"
							name="startYear" id="startYear" maxlength="4" /> - <input
							type="text" name="endYear" id="endYear" maxlength="4" />
					</p>
					<!-- <p>
						Annual Appraisal Form for the Year <input type="month"
							name="startYear" id="startYear" /> - <input type="month"
							name="endYear" id="endYear" />
					</p>-->



					<table class="table table-bordered">
						<caption>General Information</caption>
						<tr>
							<td>Full Name:</td>
							<td><input type="text" name="fullName"></td>
						</tr>
						<tr>
							<td>Department:</td>
							<td><input type="text" name="department"></td>
						</tr>
						<tr>
							<td>Designation:</td>
							<td><select id="designation" name="designation">
								<option value="Assistant Professor">Assistant Professor</option>
								<option value="Associate Professor">Associate Professor</option>
								<option value="Professor">Professor</option>
								<option value="Head">Professor and Head</option>
								</select>
							</td>
						</tr>
					</table>
					<table class="table table-bordered">
						<caption>Details of Activities</caption>
						<tbody>
							<tr>
								<td><strong>Sl. No.</strong></td>
								<td><strong>Scoring Category</strong></td>
								<td><strong>Number</strong></td>
							</tr> 
							<tr>
								<td colspan="3"><strong>&nbsp;Teaching<br>(Asst.
										Prof - 60, Assoc.Prof - 50, Prof - 40)
								</strong></td>
							</tr>
							<tr>
								<td>1</td>
								<td>FCI Score (Average of all courses handled)</td>
								<td><input type="number" id="fciScore" name="fciScore"
									required="required" min="0" value="0" /> 
								
								<br><b>Summary sheet in following format signed by HoD.</b>
								<br><b>Sub Code. 					FCI</b>
								<br><b>Average</b>
								</td>
							</tr> 
							
							<tr>
								<td colspan="3"><strong>Research<br>(Asst.
										Prof - 10, Assoc.Prof - 20, Prof - 30)
								</strong></td>
							</tr>
							<tr>
								<td>2</td>
								<td>No. of non-paid refered journal papers in SJR*<br>(The
									faculty should be one among first 3 authors)
								</td>
								<td><input type="number" id="nirfJournals"
									name="nirfJournals" min="0" value="0" />
								<input type="button" value="Submit" id="nirf">
								<script>
									$(document).ready(function() {
									$("#nirf").click(function() {
										$("#nirfTable").empty();
										var nirfValue=''; var i=''; var add1=''; 
										var nirfValue=document.getElementById("nirfJournals").value;
										var add1="<tr>";
										add1+="<td><b>Paper Title</b></td>";
										add1+="<td><b>Journal Name</b></td>";
										add1+="<td><b>Publication Month and Year</b></td>";
										add1+="<td><b>Category</b></td>"
										add1+="<td><b>1st Pg of publication and its relevant 1st page from SJR website</b></td>";
										add1+="</tr>";
										
										$("#nirfTable").append(add1);
										for(var i=1;i<=nirfValue;i++)
										{
											$("#nirfTable").empty();
											add1+="<tr>"
											add1+="<td><input type='text' placeholder=Title"+i+" id=nirfTitle></td>";
											add1+="<td><input type='text' placeholder=Journal"+i+" id=nirfJournal></td>";
											add1+="<td><input type='date' placeholder=Publication"+i+"_MM/YYYY id=nirfDate></td>";
											add1+="<td><select id=category name=category>"
											add1+="<option value='Q1'>Q1</option>"
											add1+="<option value='Q2'>Q2</option>"
											add1+="<option value='Q3'>Q3</option>"
											add1+="<option value='Q4'>Q4</option>"
											add1+="</select>"
											add1+="</td>"
										//add1+="<td><input type='button' value='Browse' onclick='document.getElementById('nirfPage').click()'/></td>"
											add1+="</tr>";
											$("#nirfTable").append(add1); 
										}	
									});
								}); 
										
								
								</script> 
								<table id="nirfTable">
								
								
								</table>
								</td>	
							</tr>
							<tr>
							
							<td>3</td>
							<td>No. of indexed conference papers in SJR<br>(The
								faculty should be one among first 3 authors)
							</td>
							<td><input type="number" id="indexedPapers"
								name="indexedPapers" min="0" value="0" />
								<input type="button" value="Submit" id="indexp">
								<script>
									$(document).ready(function() {
									$("#indexp").click(function() {
										$("#indexpTable").empty();
										var indexpValue=''; var i=''; var add1=''; 
										var indexpValue=document.getElementById("indexedPapers").value;
										var add2="<tr>";
										add2+="<td><b>Paper Title</b></td>";
										add2+="<td><b>Conference Name</b></td>";
										add2+="<td><b>Publication Month and Year</b></td>";
										add2+="<td><b>1st Pg of publication and its relevant 1st page from SJR website</b></td>";
										add2+="</tr>";
										$("#indexpTable").append(add2);
										for(var i=1;i<=indexpValue;i++)
										{
											$("#indexpTable").empty();
											add2+="<tr>"
											add2+="<td><input type='text' placeholder=Title"+i+"></td>";
											add2+="<td><input type='text' placeholder=Conference"+i+"></td>";
											add2+="<td><input type='date' placeholder=Publication"+i+"_MM/YYYY></td>";
											add2+="<td><input type='text' placeholder=Publictation"+i+"_1st_pg></td>";
										//add1+="<td><input type='button' value='Browse' onclick='document.getElementById('nirfPage').click()'/></td>"
											add2+="</tr>"
											$("#indexpTable").append(add2); }
										});
									}); 
								</script>
								<table id="indexpTable">
								
								</table>				
							</td> 
							</tr>  
							<tr>
								<td>4</td> 
								<td>No. of non-paid non-refereed journals and non-indexed
									conferences<br>(The faculty should be one among first 3
									authors)  
								</td>
								<td><input type="number" id="journalPublication"
									name="journalPublication" min="0" value="0" />
									<input type="button" value="Submit" id="jpublicatn">
								<script>
								$(document).ready(function() {
									$("#jpublicatn").click(function() {
										$("#jpublicatnTable").empty();
										var jpublicatnValue=''; var i=''; 
										var jpublicatnValue=document.getElementById("journalPublication").value;
										var add3="<tr>";
										add3+="<td><b>Paper Title</b></td>";
										add3+="<td><b>Journal/Conference Name</b></td>";
										add3+="<td><b>Publication Month and Year</b></td>";
										add3+="<td><b>1st Pg of publication and its relevant 1st page from SJR website</b></td>";
										add3+="</tr>";
											$("#jpbulicatnTable").append(add3);
										for(var i=1;i<=jpublicatnValue;i++){
											$("#jpublicatnTable").empty();
										add3+="<tr>"
										add3+="<td><input type='text' placeholder=Title"+i+"></td>";
										add3+="<td><input type='text' placeholder=Journal/Conference"+i+"></td>";
										add3+="<td><input type='date' placeholder=Publication"+i+"_MM/YYYY></td>";
										add3+="<td><input type='text' placeholder=Publictation"+i+"_1st_pg></td>";
										//add1+="<td><input type='button' value='Browse' onclick='document.getElementById('nirfPage').click()'/></td>"
										add3+="</tr>";
										
										$("#jpublicatnTable").append(add3); }
								}		
								);
							}); 
								</script>
								<table id="jpublicatnTable">
								
								</table>				
								</td>
								
							</tr>
							<tr>
								<td>5</td>
								<td>Books/Chapters<br>(The faculty should be one among
									first 3 authors)
								</td>
								<td>
								<table>
								<tr><td style="width: 50%;"><label for="books">Books: </label><input type="number" id="books" name="books" min="0" value="0" />
								<input type="button" value="Submit" id="bookdet">
								</td>
								</tr>
								
								</table>
								
								<script>
								$(document).ready(function() {
									$("#bookdet").click(function() {
										//alert("done");   
										$("#bookTable").empty();
										var bookValue=''; var i=''; 
										var bookValue=document.getElementById("books").value;
										var add4="<tr>";
										add4+="<td><b>Book Chapters</b></td>";
										add4+="<td><b>Book Title</b></td>";
										add4+="<td><b>Publisher Name</b></td>";
										add4+="<td><b>Publication Month and Year</b></td>";
										add4+="<td><b>Only tilte page of the book</b></td>";
										add4+="</tr>";
											$("#bookTable").append(add4);
										for(var i=1;i<=bookValue;i++){
											$("#bookTable").empty();
										add4+="<tr>"
										add4+="<td><input type='text' placeholder=Book_Chapters"+i+"></td>";
										add4+="<td><input type='text' placeholder=Title"+i+"></td>";
										add4+="<td><input type='text' placeholder=Publisher_Name"+i+"></td>";
										add4+="<td><input type='date' placeholder=Publication"+i+"_MM/YYYY></td>";
										//add4+="<td><input type='text' placeholder=Title_pg_of_book"+i+"></td>";
										//add1+="<td><input type='button' value='Browse' onclick='document.getElementById('nirfPage').click()'/></td>"
										add4+="</tr>";
										
										$("#bookTable").append(add4); }
								}		
								);
							}); 
								</script>
								<table id="bookTable">
								
								</table>				
								</td>
							
									<!-- <label for="booksDisplay">Books: </label><input
									type="text" id="booksDisplay" name="booksDisplay" min="0" readonly="readonly" /><br>
									<label for="booksChaptersDisplay">Book Chapters: </label><input
									type="text" id="booksChaptersDisplay"
									name="booksChaptersDisplay" min="0" readonly="readonly" />  <input
									type="text" id="bookScoreDisplay" name="bookScoreDisplay"
									min="0" readonly="readonly" /> -->
								
							</tr>
							<tr>
								<td>6</td>
								<td>Disclosures Filed</td>
								<td><input type="number" id="disclosuresFiled"
									name="disclosuresFiled" min="0" value="0" />
									<input type="button" value="Submit" id="disClosure" />
								<script>
								$(document).ready(function() {
									$("#disClosure").click(function() {
										$("#disClosure").empty();
										var disClosureValue=''; var i=''; 
										var disClosureValue=document.getElementById("disclosuresFiled").value;
										var add5="<tr>";
										add5+="<td><b>FilingNumber</b></td>";
										add5+="<td><b>Only the extract from patent Journal</b></td>";
										add5+="</tr>";
											$("#disClosureTable").append(add5);
										for(var i=1;i<=disClosureValue;i++){
											$("#disClosureTable").empty();
										add5+="<tr>"
										add5+="<td><input type='number' placeholder=FilingNumber"+i+"></td>";
										add5+="<td><input type='text' placeholder=extract_Jrnal_fileNum"+i+"></td>";
										add5+="</tr>";
										
										$("#disClosureTable").append(add5); }
								}		
								);
							}); 
								</script>
								<table id="disClosureTable">
								
								</table>				
								
								</td>
								
							</tr>
							<tr>
								<td>7</td>
								<td>Patents Granted*</td>
								<td><input type="number" id="patentsGranted"
									name="patentsGranted" min="0" value="0" />
								
								<input type="button" value="Submit" id="patentGranted" />
								<script>
								$(document).ready(function() {
									$("#patentGranted").click(function() {
										$("#patentGrantedTable").empty();
										var patentGrantedValue=''; var i=''; 
										var patentGrantedValue=document.getElementById("patentsGranted").value;
										var add7="<tr>";
										add7+="<td><b>Patent Number</b></td>";
										add7+="<td><b>Year of Grant</b></td>";
										add7+="<td><b>Only the search Result from patent search</b></td>";
										add7+="</tr>";
											$("#patentGrantTable").append(add7);
										for(var i=1;i<=patentGrantedValue;i++){
											$("#patentGrantTable").empty();
										add7+="<tr>"
										add7+="<td><input type='number' placeholder=Patent_Number"+i+"></td>";
										add7+="<td><input type='date' placeholder=Year_of_Grant"+i+"_MM/YYYY></td>";
										//add7+="<td><input type='text' placeholder=Search_Result"+i+"></td>";
										//add7+="<td><input type='button' value='Browse' onclick='document.getElementById('nirfPage').click()'/></td>"
										add7+="</tr>";
										
										$("#patentGrantTable").append(add7); }
								}		
								);
							}); 
								</script>
								<table id="patentGrantTable">
								
								</table>				
								
								</td>
								
							</tr>
							<tr>
								<td>8</td>
								<td>Research Guidance Under Graduate Program</td>
								<td><b>Total Number Of students Guided:</b><input type="number" id="researchGuidanceUg"
									name="researchGuidanceUg" min="0" value="0" />
								<input type="button" value="Submit" id="researchGuideUg" />
								<script>
								$(document).ready(function() {
									$("#researchGuideUg").click(function() {
										$("#researchGuideUgTable").empty();
										var researchGuideUgValue=''; var i=''; 
										var researchGuideUgValue=document.getElementById("researchGuidanceUg").value;
										var add8="<tr>";
										add8+="<td><b>List ofstudents_Guided</b></td>";
										add8+="<td><b>Project_Title</b></td>";
										add8+="</tr>";
											$("#researchGuideUgTable").append(add8);
										for(var i=1;i<=researchGuideUgValue;i++){
											$("#researchGuideUgTable").empty();
										add8+="<tr>"
										add8+="<td><input type='text' placeholder=StudentsGuidedList"+i+"></td>";
										add8+="<td><input type='text' placeholder=Project_Title></td>";
										add8+="</tr>";
										$("#researchGuideUgTable").append(add8); }
								}		
								);
							}); 
								</script>
								<table id="researchGuideUgTable">
								
								</table>				
								
								</td>
								
							</tr>
							<tr>
								<td>9</td>
								<td>Research Guidance Master's Program</td>
								<td><input type="number" id="researchGuidanceMaster"
									name="researchGuidanceMaster" min="0" value="0" />
								<input type="button" value="Submit" id="researchGuideMaster" />
								<script>
								$(document).ready(function() {
									$("#researchGuideMaster").click(function() {
										$("#researchGuideMTable").empty();
										var researchGuideMValue=''; var i=''; 
										var researchGuideMValue=document.getElementById("researchGuidanceMaster").value;
										var add9="<tr>";
										add9+="<td><b>List ofstudents_Guided</b></td>";
										add9+="<td><b>Project_Title</b></td>";
										add9+="</tr>";
											$("#researchGuideMTable").append(add9);
										for(var i=1;i<=researchGuideMValue;i++){
											$("#researchGuideMTable").empty();
										add9+="<tr>"
										add9+="<td><input type='text' placeholder=StudentsGuidedList"+i+"></td>";
										add9+="<td><input type='text' placeholder=Project_Title></td>";
										add9+="</tr>";
										$("#researchGuideMTable").append(add9); }
								}		
								);
							}); 
								</script>
								<table id="researchGuideMTable">
								
								</table>				
								
								</td>
								
							</tr>
							<tr>
								<td>10</td>
								<td>Research Guidance Ph.D.</td>
								<td><input type="number" id="researchGuidancePhd"
									name="researchGuidancePhd" min="0" value="0" />
								<input type="button" value="Submit" id="researchGuidePhd" />
								<script>
								$(document).ready(function() {
									$("#researchGuidePhd").click(function() {
										$("#researchGuidePhdTable").empty();
										var researchGuidePhdValue='';  
										var researchGuidePhdValue=document.getElementById("researchGuidancePhd").value;
										var add10="<tr>";
										add10+="<td><b>List ofstudents_Guided</b></td>";
										add10+="<td><b>University Name</b></td>";
										add10+="<td><b>Registration Year</b></td>";
										add10+="<td><b>ResearchTopic</b></td>";
										add10+="</tr>";
											$("#researchGuidePhdTable").append(add10);
										for(var i=1;i<=researchGuidePhdValue;i++){
											$("#researchGuidePhdTable").empty();
										add10+="<tr>"
										add10+="<td><input type='text' placeholder=StudentsGuidedList"+i+"></td>";
										add10+="<td><input type='text' placeholder=UniversityName></td>";
										add10+="<td><input type='date' placeholder=DD-MM-YYYY></td>";
										add10+="<td><input type='text' placeholder=ResearchTopic></td>";
										add10+="</tr>";	
										$("#researchGuidePhdTable").append(add10); }
								}		
								);
							}); 
								</script> 
								<table id="researchGuidePhdTable">
								
								</table>				
								</td>
								
							</tr>
							<tr>
								<td>11</td>
								<td>Funded Projects*</td>
								<!-- <td><input type="number" id="fundedProjects"
									name="fundedProjects" min="0" /></td> -->
								<td>
								<table>
								
							<tr><td style="width: 50%;"><label for="fundedProjects1">&gt;= 10 Lakhs: </label> </td> <td style="width: 50%;"> <input type="number" id="fundedProjects1" name="fundedProjects1" min="0" value="0" /> </td> </tr> 
							<tr><td style="width: 50%;"><label for="fundedProjects2">&gt;=5 Lakhs and &lt; 10 Lakhs: </label> </td> <td style="width: 50%;"> <input type="number" id="fundedProjects2" name="fundedProjects2" min="0" value="0" /> </td> </tr>
							<tr><td style="width: 50%;"><label for="fundedProjects3">&gt;=1 Lakhs and &lt; 5 Lakhs: </label> </td> <td style="width: 50%;"> <input type="number" id="fundedProjects3" name="fundedProjects3" min="0" value="0" /> </td> </tr> 
							<tr><td style="width: 50%;"><label for="fundedProjects4">&lt;1 Lakhs: </label> </td> <td style="width: 50%;"> <input type="number" id="fundedProjects4" name="fundedProjects4" min="0" value="0" /> </td> </tr>
							<tr><td><label>Only the first page of the sanction letter</label></td></tr>
								</table>
								</td>
							
									<!-- <input type="text" id="fundedProjects1Display"
									name="fundedProjects1Display" min="0" readonly="readonly" /><br> <br> <input
									type="text" id="fundedProjects2Display"
									name="fundedProjects2Display" min="0" readonly="readonly" /><br> <br> <input
									type="text" id="fundedProjects3Display"
									name="fundedProjects3Display" min="0" readonly="readonly" /><br> <br> <input
									type="text" id="fundedProjects4Display"
									name="fundedProjects4Display" min="0" readonly="readonly"/><br> <br> -->
									
							
							</tr>

							<tr>
								<td>12</td>
								<td>Consulting Projects*</td>
								<!-- <td><input type="number" id="consultingProjects"
									name="consultingProjects" min="0" /></td> -->
								<td>
								<table>
							<tr> <td style="width: 50%;">	<label for="consultingProjects1">&gt;= 10 Lakhs: </label> </td> <td style="width: 50%;"> <input type="number" id="consultingProjects1" name="consultingProjects1" min="0" value="0" /> </td> </tr>
							<tr> <td style="width: 50%;">	<label for="consultingProjects2">&gt;= 5 Lakhs and &lt; 10 Lakhs: </label> </td> <td style="width: 50%;"> <input type="number" id="consultingProjects2" name="consultingProjects2" min="0" value="0" /> </td> </tr>
							<tr> <td style="width: 50%;"> 	<label for="consultingProjects3">&gt;=1 Lakhs and &lt; 5 Lakhs: </label> </td> <td style="width: 50%;">  <input type="number" id="consultingProjects3" name="consultingProjects3" min="0" value="0" /> </td> </tr>
							<tr> <td style="width: 50%;">	<label for="consultingProjects4">&lt;1 Lakhs: </label> </td> <td style="width: 50%;"> <input type="number" id="consultingProjects4" name="consultingProjects4" min="0" value="0" /> </td> </tr>
							<tr> <td>   <label>Only the first page of the sanction letter</label></td>	
								</table>	
								</td>
								
									<!-- <input type="text" id="consultingProjects1Display"
									name="consultingProjects1Display" min="0" readonly="readonly" /><br> <br>
									<input type="text" id="consultingProjects2Display"
									name="consultingProjects2Display" min="0" readonly="readonly" /><br> <br>
									<input type="text" id="consultingProjects3Display"
									name="consultingProjects3Display" min="0" readonly="readonly" /><br> <br>
									<input type="text" id="consultingProjects4Display"
									name="consultingProjects4Display" min="0" readonly="readonly" /><br> <br> -->
									
								
							</tr>
							<tr>
								<td colspan="3"><strong>Service and Professional
										Development<br>(Asst. Prof - 30, Assoc.Prof - 30, Prof -
										30)
								</strong></td>
							</tr>
							<tr>
								<td>13</td>
								<td>No. of Conference Chair, Session Chair, Reviewer of Q1
									or Q2 Journal</td>
								<td><input type="number" id="chairReviewer"
									name="chairReviewer" min="0" value="0" />
									<input type="button" value="Submit" id="chairReview">
									<script>
								$(document).ready(function() {
									$("#chairReview").click(function() {
										$("#chairReviewTable").empty();
										var researchchairReviewValue='';  
										var researchchairReviewValue=document.getElementById("chairReviewer").value;
										var add13="<tr>";
										add13+="<td><b>Journal/Conference Name</b></td>";
										add13+="<td><b>Role</b></td>";
										add13+="<td><b>Year</b></td>";
										add13+="<td><b>Only the first page of invite letter / email.</b></td>";
										add13+="</tr>";
											$("#chairReviewTable").append(add13);
										for(var i=1;i<=researchchairReviewValue;i++){
											$("#chairReviewTable").empty();
										add13+="<tr>"
										add13+="<td><input type='text' placeholder=Journal/ConfName"+i+"></td>";
										add13+="<td><input type='text' placeholder=Role></td>";
										add13+="<td><input type='date' placeholder=YYYY></td>";
										add13+="</tr>";	
										$("#chairReviewTable").append(add13); }
								}		
								);
							}); 
								</script> 
								<table id="chairReviewTable">
								
								</table>				
				
								</td>
								
							</tr>
							<tr>
								<td>14</td>
								<td>No. of FDP/ Seminar/ Workshop organized as coordinator</td>
								<!-- <td><input type="number" id="fswCoordinator"
									name="fswCoordinator" min="0" /></td> -->
								<td>
								<table>
							<tr> <td style="width: 50%;"> <label for="fiveDayWorkShop">5 Days: </label> </td> <td style="width: 50%;"> <input type="number" id="fiveDayWorkShop" name="fiveDayWorkShop" min="0" value="0" /> </td> <td style="width:50%;"> <label>Event_Name</label></td> <td style="width: 50%;"> <input type="text" id="fiveDayWorkShop1" name="fiveDayWorkshop1" min="0" value="0" /> </td> <td style="width:50%;"> <label>Event_Date</label></td> <td style="width: 50%;"> <input type="text" id="fiveDayWorkShop2" name="EventDate" min="0" value="0" /> </td> </tr> 
							<tr> <td style="width: 50%;"> <label for="threeDayWorkShop">3 Days: </label> </td> <td style="width: 50%;"> <input type="number" id="threeDayWorkShop" name="threeDayWorkShop" min="0" value="0" /></td> <td style="width: 50%;"><label>Event_Name</label></td> <td style="width: 50%;"><input type="text" id="threeDayWorkShop1" name="threeDayWorkShop1" min="0" value="0" /></td><td style="width:50%;"> <label>Event_Date</label></td> <td style="width: 50%;"> <input type="text" id="threeDayWorkShop2" name="EventDate" min="0" value="0" /> </td></tr>
							<tr> <b>Only the first page of brochure of the event</b></tr>
								</table>
								</td>
								
									<!-- <input type="text" id="fiveDayWorkShopDisplay"
									name="fiveDayWorkShopDisplay" min="0" readonly="readonly"/><br> <br> <input
									type="text" id="threeDayWorkShopDisplay"
									name="threeDayWorkShopDisplay" min="0" readonly="readonly" /><br> <br> -->
									
								
							</tr>
							<tr>
								<td>15</td>
								<td>No. of invited technical talks outside the institute</td>
								<td><input type="number" id="invitedTalksOutside"
									name="invitedTalksOutside" min="0" value="0" />
								<input type="button" value="Submit" id="invitedTO">
									<script>
								$(document).ready(function() {
									$("#invitedTO").click(function() {
										$("#invitedTOTable").empty();
										var invitedTOValue='';  
										var invitedTOValue=document.getElementById("invitedTalksOutside").value;
										var add15="<tr>";
										add15+="<td><b>TitleofTalk</b></td>";
										add15+="<td><b>Venue</b></td>";
										add15+="<td><b>DateOfEvent</b></td>";
										add15+="<td><b>Only the first page of invite letter</b></td>";
										add15+="</tr>";
											$("#invitedTOTable").append(add15);
										for(var i=1;i<=invitedTOValue;i++){
											$("#invitedTOTable").empty();
										add15+="<tr>"
										add15+="<td><input type='text' placeholder=TitleofTalk"+i+"></td>";
										add15+="<td><input type='text' placeholder=Venue"+i+"></td>";
										add15+="<td><input type='date' placeholder=DD/MM/YYYY></td>";
										add15+="</tr>";	
										$("#invitedTOTable").append(add15); }
								}		
								);
							}); 
								</script> 
								<table id="invitedTOTable">
								
								</table>				
				
								</td>
								
							</tr>
							<tr>
								<td>16</td>
								<td>No. of events participation outside the institute<br>(FDP/Seminar/Workshop/Conference)
								</td>
								<td><input type="number" id="eventsOutside"
									name="eventsOutside" min="0" value="0" />
								<input type="button" value="Submit" id="eventOutside">
									<script>
								$(document).ready(function() {
									$("#eventOutside").click(function() {
										$("#eventOutsideTable").empty();
										var eventOutsideValue='';  
										var eventOutsideValue=document.getElementById("eventsOutside").value;
										var add16="<tr>";
										add16+="<td><b>EventName</b></td>";
										add16+="<td><b>Venue</b></td>";
										add16+="<td><b>DateOfEvent</b></td>";
										add16+="<td><b>Participation Certificate</b></td>";
										add16+="</tr>";
											$("#eventOutsideTable").append(add16);
										for(var i=1;i<=eventOutsideValue;i++){
											$("#eventOutsideTable").empty();
										add16+="<tr>"
										add16+="<td><input type='text' placeholder=EventName"+i+"></td>";
										add16+="<td><input type='text' placeholder=Venue"+i+"></td>";
										add16+="<td><input type='date' placeholder=DD/MM/YYYY></td>";
										add16+="</tr>";	
										$("#eventOutsideTable").append(add16); }
								}		
								);
							});  
								</script> 
								<table id="eventOutsideTable">
								
								</table>				
				
								</td>
								
							</tr>
							<tr>
								<td>17</td>
								<td>No. of events participation inside the institute<br>(FDP/Seminar/Workshop/Conference)
								</td>
								<td><input type="number" id="invitedTalksInside"
									name="invitedTalksInside" min="0" value="0" />
								<input type="button" value="Submit" id="invitedTI">
									<script>
								$(document).ready(function() {
									$("#invitedTI").click(function() {
										$("#invitedTITable").empty();
										var invitedTIValue='';  
										var invitedTIValue=document.getElementById("invitedTalksInside").value;
										var add17="<tr>";
										add17+="<td><b>EventName</b></td>";
										add17+="<td><b>DateOfEvent</b></td>";
										add17+="<td><b>Participation Certificate</b></td>";
										add17+="</tr>";
											$("#invitedTITable").append(add17);
										for(var i=1;i<=invitedTIValue;i++){
											$("#invitedTITable").empty();
										add17+="<tr>"
										add17+="<td><input type='text' placeholder=EventName></td>";
										add17+="<td><input type='date' placeholder=DD/MM/YYYY></td>";
										add17+="</tr>";	
										$("#invitedTITable").append(add17); }
								}		
								);
							}); 
								</script> 
								<table id="invitedTITable">
								
								</table>				
								</td>
								
							</tr>

							<tr>
								<td>18</td>
								<td>Industry Relations<br>(MoU, Co-hosted event,
									Technical Talk Series)
								</td>
								<td><input type="number" id="industryRelations"
									name="industryRelations" min="0" value="0" />
								<input type="button" value="Submit" id="industryRelation">
									<script>
								$(document).ready(function() {
									$("#industryRelation").click(function() {
										$("#industryRelationTable").empty();
										var industryRelationValue='';  
										var industryRelationValue=document.getElementById("industryRelations").value;
										var add18="<tr>";
										add18+="<td><b>EventName</b></td>";
										add18+="<td><b>CompanyName</b></td>";
										add18+="<td><b>DateOfEvent</b></td>";
										add18+="<td><b>Participation Certificate</b></td>";
										add18+="</tr>";
											$("#industryRelationTable").append(add18);
										for(var i=1;i<=industryRelationValue;i++){
											$("#industryRelationTable").empty();
										add18+="<tr>"
										add18+="<td><input type='text' placeholder=EventName></td>";
										add18+="<td><input type='text' placeholder=CompanyName></td>";
										add18+="<td><input type='date' placeholder=DD/MM/YYYY></td>";
										add18+="</tr>";	
										$("#industryRelationTable").append(add18); }
								}		
								);
							}); 
								</script> 
								<table id="industryRelationTable">
								
								</table>			
								</td>
								
							</tr>
							<tr>
								<td>19</td>
								<td>Institutional/Departmental Services such as NBA/NIRF</td>
								<td>
								<table>
							<tr> <td style="width: 50%;">  <label for="instDeptServicesCoordinator">Coordinator</label> </td> <td style="width: 50%;">  <input type="number" id="instDeptServicesCoordinator" name="instDeptServicesCoordinator" min="0" value="0" /> </td> </tr> 
							<tr> <td style="width: 50%;">  <label for="instDeptServicesOthers">Others</label> </td> <td style="width: 50%;">  <input type="number" id="instDeptServicesOthers" name="instDeptServicesOthers" min="0" value="0" /> </td> </tr>
							<tr> <td style="width: 50%;">  <label for="detailsOfResponsibilities">Details_of_responsibilities</label> </td> <td style="width: 50%;">  <input type="text" id="detailsOfResponsibilities" name="detailsOfResponsibilities" min="0" value="0" /> </td> </tr>	
							<tr> <td><label>Letter from HoD designating the same</label> </td></tr>	
								</table>
								</td>
								
									<!-- <input type="text"
									id="instDeptServicesCoordinatorDisplay"
									name="instDeptServicesCoordinatorDisplay" min="0" readonly="readonly" /><br> <br>
									<input type="text" id="instDeptServicesOthersDisplay"
									name="instDeptServicesOthersDisplay" min="0" readonly="readonly" /><br> <br> -->
									
								
							</tr>
							<tr>
								<td>20</td>
								<td>Other Services to the institution or society
									contribution</td>
								<td><input type="number" id="othServices" name="othServices"
									min="0" value="0" />
								<input type="button" value="Submit" id="othService">
									<script>
								$(document).ready(function() {
									$("#othService").click(function() {
										$("#othServiceTable").empty();
										var othServiceValue='';  
										var othServiceValue=document.getElementById("othServices").value;
										var add20="<tr>";
										add20+="<td><b>Activity Details</b></td>";
										add20+="<td><b>Letter from HOD certifying the same</b></td>";
										add20+="</tr>";
											$("#othServiceTable").append(add20);
										for(var i=1;i<=othServiceValue;i++){
											$("#othServiceTable").empty();
										add20+="<tr>"
										add20+="<td><input type='text' placeholder=ActivityDetails"+i+"></td>";
										add20+="</tr>";	
											$("#othServiceTable").append(add20); }
								}		
								);
							}); 
								</script> 
								<table id="othServiceTable">
								
								</table>			
								</td>
								
							</tr>
							<tr>
								<td>21</td>
								<td>Awards and Honours</td>
								<td><input type="number" id="awardsHonours"
									name="awardsHonours" min="0" value="0" />
								<input type="button" value="Submit" id="awardsHonour">
									<script>
								$(document).ready(function() {
									$("#awardsHonour").click(function() {
										$("#awardsHonourTable").empty();
										var awardsHonourValue='';  
										var awardsHonourValue=document.getElementById("awardsHonours").value;
										var add21="<tr>";
										add21+="<td><b>Award Name</b></td>";
										add21+="<td><b>Organisation Name</b></td>";
										add21+="<td><b>Date of Event</b></td>";
										add21+="<td><b>Award Certificate</b></td>";
										add21+="</tr>";
											$("#awardsHonourTable").append(add21);
										for(var i=1;i<=awardsHonourValue;i++){
											$("#awardsHonourTable").empty();
										add21+="<tr>"
										add21+="<td><input type='text' placeholder=AwardName"+i+"></td>";
										add21+="<td><input type='text' placeholder=OrganisationName"+i+"></td>";
										add21+="<td><input type='date' placeholder=DD/MM/YYYY></td>";
										add21+="</tr>";	
											$("#awardsHonourTable").append(add21); }
								}		
								);
							}); 
								</script> 
								<table id="awardsHonourTable">
								
								</table>			
								</td>
								
							</tr>
							<!-- <tr>
								<td>20</td>
								<td>FDP attended outside of RIT</td>
								<td><input type="number" id="fdpOutside" name="fdpOutside" /></td>
							</tr>
							<tr>
								<td>21</td>
								<td>Conferences/Workshops attended without presentation</td>
								<td><input type="number" id="confWorkAttended"
									name="confWorkAttended" /></td>
							</tr> -->
							<tr>
								<td>22</td>
								<td>Professionalism / Team spirit</td>
								<td><input type="number" id="profTeam" name="profTeam"
									min="0" value="0" /></td>
							</tr>
							<tr>
								<td>23</td>
								<td>Any other major contributions: (Max 500 characters)</td>
								<td><textarea rows="10" cols="50" name="anyContribution"
										id="anyContribution" value="0"></textarea></td>
							</tr>
							<tr>
								<td colspan="2">Total Score:</td>
								<td><input type="text" id="totalScore" name="totalScore"
									readonly="readonly" /></td>
							</tr>
							<tr>
								<td colspan="2">* Bonus Score:</td>
								<td><input type="text" id="bonusScore" name="bonusScore"
									readonly="readonly" /></td>
							</tr>
							<tr>
									<td colspan="2">Final Score:</td>
								<td><input type="text" id="finalScore" name="finalScore"
									readonly="readonly" /></td>
							</tr>
							
						</tbody>
					
					</table>
					</div>
					<div id="skipPrintDiv">
					<table class="table table-bordered">
							<tr>
								<td><button type="reset" style="background-color:WhiteSmoke">Reset</button></td>
								<td><div onClick="calculateDiv()"class="btn btn-territory" style="background-color:WhiteSmoke" id="calculate">Calculate Scores</div></td>
								<td><div id="printBtn" onClick="printDiv()"  class="btn btn-primary" >Print
									Appraisal</div></td>							
							</tr>
					</table>  
					</div>
				</form>
			</div> 
			
			
			<div class="container-fluid col-sm-2">&nbsp;</div>
		</div> 
	</body>
	<script>
	function calculateDiv()
	{		
			//event.preventDefault();						// When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
			$.get('AjaxFile', $('form').serialize(), function(responseJson) {                 // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response JSON...
			//var $totalScore = $("#totalScore");
			$('#totalScore').val(responseJson.totalScore);
			$('#bonusScore').val(responseJson.bonusScore);
			$('#finalScore').val(responseJson.finalScore); 
			//var $bonusScore = $("#bonusScore");					
			//var $finalScore = $("#finalScore");
			$.each(responseJson, function(key, value) {               // Iterate over the JSON object.
			if (key == "totalScore") {
				$totalScore.val(value);
			}
			if (key == "bonusScore") {
				$bonusScore.val(value);
			} 
			if (key == "finalScore") {
				$finalScore.val(value);
			}
		// Create HTML <option> element, set its value with currently iterated key and its text content with currently iterated item and finally append it to the <select>.
		
	});
			
}); }
	//calculateDiv();
	
	</script>
	</html></html>