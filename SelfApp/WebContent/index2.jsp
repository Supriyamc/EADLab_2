<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title >Ramaiah - Self-Appraisal System</title>
<jsp:include page="styling.jsp"></jsp:include>

<script type="text/javascript">

var tableContents = { 
		"r1" : {
			"c1" : 'FCI Score(Average Of all courses handled)',
			"c2" : 'Average FCI Score',
			"c3" : '1a. Summary sheet in the following format signed by hod.Sub Code FCI  Average'
		},
		"r2" : {
			"c1" : 'No.of non-paid refered journal papers in SJR*(The faculty should be one among first 3 authors)',
			"c2" : 'Paper Title,journal Name, publication month and year',
			"c3" : '2a. Only the first sheet of publication and the first page of relevant page from SJR website.'
		},
		"r3" : {
			"c1" : 'No. of indexed conference papers in SJR(the faculty should be one among first 3 authors)',
			"c2" : 'Paper Title,conference Name,publication month and Year',
			"c3" : '3a. Only  the first sheet of publication and the first page of relevant page from SJR website.'
		},
		"r4" : {
			"c1" : 'No. Of non-paid non-refereed journals and non-indexed conferences(The faculty should be one among first 3 authors)',
			"c2" : 'Paper Title,Journal/conference Name,Publication month and Year',
			"c3" : '4a.Only the first sheet of publication'
		},
		"r5" : {
			"c1" : 'Books/Chapters(the faculty should be one among first 3 authors)',
			"c2" : 'Book Title,Journal/conference Name,publication month and year',
			"c3" : '5a.Only the title page of the book'
				
		},
		"r6" : {
			"c1" : 'Disclosures Field',
			"c2" : 'Filling Number/File Number with date',
			"c3" : '6a. Only the extract from patent journal'
		},
		"r7" : {
			"c1" : 'Patents Granted*',
			"c2" : 'Patent Number,Year of Grant',
			"c3" : '7a.Only the search result from patent search.'
		},
		"r8" : {
			"c1" : 'Research Guide UG',
			"c2" : 'Total number of students guided',
			"c3" : '8a.list of students guided with project title'
		},
		"r9" : {
			"c1" : 'Research Guidance PG',
			"c2" : 'Total number of students guided',
			"c3" : '9a.list of students guided with project title'
		},
		"r10" : {
			"c1" : 'Research Guidance PhD',
			"c2" : 'Total number of students guided',
			"c3" : '10a.List of students guided with University Name,Registration Year and Topic of research.'
		},
		"r11" : {
			"c1" : 'Funded rojects*',
			"c2" : 'Project title,Funding Agency,Amount,year',
			"c3" : '11a.Only the first page of the sanction letter.'
		},
		"r12" : {
			"c1" : 'Consulting Projects*',
			"c2" : 'Project title,Funding Agency,Amount,year',
			"c3" : '12a.Only the first page of the sanction letter.'
		},
		"r13" : {
			"c1" : 'No.of Conference Chair,Session Chair,Review of Q1 or Q2 Journal',
			"c2" : 'Journal Name/Conference Name,Role,Year',
			"c3" : '13a. Only the first page of invite letter/email.'
		},
		"r14" : {
			"c1" : 'No. of FDP/ Seminar/ Workshop organized as co-ordinator',
			"c2" : 'Name of event,Date of Event',
			"c3" : '14a.Only the first page of invite letter/email.'
		},
		"r15" : {
			"c1" : 'No.of invited technical talks outside the institute',
			"c2" : 'Title of talk, Venue, Date of event',
			"c3" : '15a. Only the first page of invite letter.'
		},
		"r16" : {
			"c1" : 'No.of events participation outside the institute (FDP/Seminar/Workshop/Conference)',
			"c2" : 'Name of Event, Venue, Date of Event',
			"c3" : '16a. Participation certificate.'
		},
		"r17" : {
			"c1" : 'No.of events participation inside the institute (FDP/Seminar/Workshop/Conference)',
			"c2" : 'Name of Event, Date of Event',
			"c3" : '17a. Participation certificate.'
		},
		"r18" : {
			"c1" : 'Industry Relations(MOU,Co-hosted event,Technical Talk Series)',
			"c2" : 'Name of Event,Company Name, Date of Event',
			"c3" : '18a.Only the first page of broucher of the event.'
		},
		"r19" : {
			"c1" : 'Institutional/Department services such as NBA/NIRF',
			"c2" : 'Details of responsibilities',
			"c3" : '19a.Letter from HoD designating the same.'
		},
		"r20" : {
			"c1" : 'Other Services to institution or society contributions',
			"c2" : 'Details of the activities',
			"c3" : '20a.Letter from HoD certifying the same.'
		},
		"r21" : {
			"c1" : 'Awards and Honors',
			"c2" : 'Award Name,Organisation Name, Date of Event',
			"c3" : '21a.Award Certificate'
		},
		
		"r22" : {
			"c1" : 'Professional/Team spirit',
			"c2" : 'Details os activities',
			"c3" : '22a.Certificate from competent authorities'
		},
		"r23" : {
			"c1" : 'Any other major contributions',
			"c2" : 'Details of activities',
			"c3" : '23a.Certificate from competent authorities'
		}
		
}

function duplicateRow(id){
	var row = document.getElementById(id);
	var table = row.parentNode;
	var count = document.getElementById(id).querySelector('input').value;
	for(var i=0;i<count;i++){
		var newRow = table.insertRow(row.rowIndex+1);
		var c1 = newRow.insertCell(0);
		var c2 = newRow.insertCell(1);
		var c3 = newRow.insertCell(2);
		
		c1.innerHTML = tableContents[id].c1;
		c2.innerHTML = tableContents[id].c2;
		c3.innerHTML = tableContents[id].c3;
		
	}

}

</script>

</head>
<body>
	<div class="container-fluid">
		<div class="container-fluid col-sm-2">&nbsp;</div>
		<div class="container-fluid col-sm-8">
			<form method="post" action="SubmitAppraisal" id="formAppraisal">
				<div class="jumbotron">
					<h2 class="text-center">Ramaiah Institute of Technology</h2>
					<p class="text-center">(Autonomous Institute, affiliated to
						VTU)</p>
				</div>
				<h2 class="text-center">Welcome to Self-Appraisal System</h2>
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
						<td><select id="designation" name="designation"><option
									value="Assistant Professor">Assistant Professor</option>
								<option value="Associate Professor">Associate Professor</option>
								<option value="Professor">Professor</option>
								<option value="Head">Professor and Head</option>
						</select></td>
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
						<tr id="r1">
							<td>1</td>
							<td>FCI Score (Average of all courses handled)</td>
							<td><input type="number" id="fciScore" name="fciScore"
								required="required" min="0" value="0" /> 
								<p onclick="duplicateRow('r1')">Add Rows</p></td>
							
						</tr>
						<tr >
							<td colspan="3"><strong>Research<br>(Asst.
									Prof - 10, Assoc.Prof - 20, Prof - 30)
							</strong></td>
						</tr>
						<tr id="r2">
							<td>2</td>
							<td>No. of non-paid refereed journal papers in SJR*<br>(The
								faculty should be one among first 3 authors)
							</td>
							<td><input type="number" id="nirfJournals"
								name="nirfJournals" min="0" value="0" />
								<p onclick="duplicateRow('r2')">Add Rows</p>
								</td>
							
							
						</tr>
						<tr id="r3">
							<td>3</td>
							<td>No. of indexed conference papers in SJR<br>(The
								faculty should be one among first 3 authors)
							</td>
							<td><input type="number" id="indexedPapers"
								name="indexedPapers" min="0" value="0" />
								<p onclick="duplicateRow('r3')">Add Rows</p>
								</td>
							
						</tr>
						<tr id="r4">
							<td>4</td>
							<td>No. of non-paid non-refereed journals and non-indexed
								conferences<br>(The faculty should be one among first 3
								authors)
							</td>
							<td><input type="number" id="journalPublication"
								name="journalPublication" min="0" value="0" />
								<p onclick="duplicateRow('r4')">Add Rows</p>
								</td>
							
						</tr>
						<tr id="r5">
							<td>5</td>
							<td>Books/Chapters<br>(The faculty should be one among
								first 3 authors)
							</td>
							<td>
							<table>
							<tr><td style="width: 50%;"><label for="books">Books: </label></td><td style="width: 50%;"><input type="number"
								id="books" name="books" min="0" value="0" />
								<p onclick="duplicateRow('r5')">Add Rows</p>
								</td></tr>
							<tr><td style="width: 50%;"><label
								for="booksChapters">Book Chapters: </label></td><td style="width: 50%;"><input type="number"
								id="booksChapters" name="booksChapters" min="0" value="0" />
								<p onclick="duplicateRow('r5')">Add Rows</p>
								</td></tr>
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
						<tr id="r6">
							<td>6</td>
							<td>Disclosures Filed</td>
							<td><input type="number" id="disclosuresFiled"
								name="disclosuresFiled" min="0" value="0" />
								<p onclick="duplicateRow('r6')">Add Rows</p>
								</td>
							
						</tr>
						<tr id="r7">
							<td>7</td>
							<td>Patents Granted*</td>
							<td><input type="number" id="patentsGranted"
								name="patentsGranted" min="0" value="0" />
								<p onclick="duplicateRow('r7')">Add Rows</p>
								</td>
							
						</tr>
						<tr id="r8">
							<td>8</td>
							<td>Research Guidance Under Graduate Program</td>
							<td><input type="number" id="researchGuidanceUg"
								name="researchGuidanceUg" min="0" value="0" />
								<p onclick="duplicateRow('r8')">Add Rows</p>
								</td>
							
						</tr>
						<tr id="r9">
							<td>9</td>
							<td>Research Guidance Master's Program</td>
							<td><input type="number" id="researchGuidanceMaster"
								name="researchGuidanceMaster" min="0" value="0" />
								<p onclick="duplicateRow('r9')">Add Rows</p>
								</td>
							
						</tr>
						<tr id="r10">
							<td>10</td>
							<td>Research Guidance Ph.D.</td>
							<td><input type="number" id="researchGuidancePhd"
								name="researchGuidancePhd" min="0" value="0" />
								<p onclick="duplicateRow('r10')">Add Rows</p>
								</td>
							
						</tr>
						<tr id="r11">
							<td>11</td>
							<td>Funded Projects*</td>
							<!-- <td><input type="number" id="fundedProjects"
								name="fundedProjects" min="0" /></td> -->
							<td>
							<table>
							
						<tr><td style="width: 50%;"><label for="fundedProjects1">&gt;= 10 Lakhs: </label> </td> <td style="width: 50%;"> <input type="number" id="fundedProjects1" name="fundedProjects1" min="0" value="0" />
						<p onclick="duplicateRow('r11')">Add Rows</p>
						 </td> </tr> 
						<tr><td style="width: 50%;"><label for="fundedProjects2">&gt;=5 Lakhs and &lt; 10 Lakhs: </label> </td> <td style="width: 50%;"> <input type="number" id="fundedProjects2" name="fundedProjects2" min="0" value="0" />
						<p onclick="duplicateRow('r11')">Add Rows</p>
						 </td> </tr>
						<tr><td style="width: 50%;"><label for="fundedProjects3">&gt;=1 Lakhs and &lt; 5 Lakhs: </label> </td> <td style="width: 50%;"> <input type="number" id="fundedProjects3" name="fundedProjects3" min="0" value="0" />
						<p onclick="duplicateRow('r11')">Add Rows</p>
						 </td> </tr> 
						<tr><td style="width: 50%;"><label for="fundedProjects4">&lt;1 Lakhs: </label> </td> <td style="width: 50%;"> <input type="number" id="fundedProjects4" name="fundedProjects4" min="0" value="0" /> 
						<p onclick="duplicateRow('r11')">Add Rows</p>
						</td> </tr>
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

						<tr id="r12">
							<td>12</td>
							<td>Consulting Projects*</td>
							<!-- <td><input type="number" id="consultingProjects"
								name="consultingProjects" min="0" /></td> -->
							<td>
							<table>
						<tr> <td style="width: 50%;">	<label for="consultingProjects1">&gt;= 10 Lakhs: </label> </td> <td style="width: 50%;"> <input type="number" id="consultingProjects1" name="consultingProjects1" min="0" value="0" /> 
						<p onclick="duplicateRow('r12')">Add Rows</p>
						</td> </tr>
						<tr> <td style="width: 50%;">	<label for="consultingProjects2">&gt;= 5 Lakhs and &lt; 10 Lakhs: </label> </td> <td style="width: 50%;"> <input type="number" id="consultingProjects2" name="consultingProjects2" min="0" value="0" /> 
						<p onclick="duplicateRow('r12')">Add Rows</p>
						
						</td> </tr>
						<tr> <td style="width: 50%;"> 	<label for="consultingProjects3">&gt;=1 Lakhs and &lt; 5 Lakhs: </label> </td> <td style="width: 50%;">  <input type="number" id="consultingProjects3" name="consultingProjects3" min="0" value="0" /> 
						<p onclick="duplicateRow('r12')">Add Rows</p>
						</td> </tr>
						<tr> <td style="width: 50%;">	<label for="consultingProjects4">&lt;1 Lakhs: </label> </td> <td style="width: 50%;"> <input type="number" id="consultingProjects4" name="consultingProjects4" min="0" value="0" />
						<p onclick="duplicateRow('r12')">Add Rows</p>
						 </td> </tr>
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
						<tr id="r13">
							<td>13</td>
							<td>No. of Conference Chair, Session Chair, Reviewer of Q1
								or Q2 Journal</td>
							<td><input type="number" id="chairReviewer"
								name="chairReviewer" min="0" value="0" />
								<p onclick="duplicateRow('r13')">Add Rows</p>
								</td>
							
						</tr>
						<tr id="r14">
							<td>14</td>
							<td>No. of FDP/ Seminar/ Workshop organized as coordinator</td>
							<!-- <td><input type="number" id="fswCoordinator"
								name="fswCoordinator" min="0" /></td> -->
							<td>
							<table>
						<tr> <td style="width: 50%;"> <label for="fiveDayWorkShop">5 Days: </label> </td> <td style="width: 50%;"> <input type="number" id="fiveDayWorkShop" name="fiveDayWorkShop" min="0" value="0" /> 
						<p onclick="duplicateRow('r14')">Add Rows</p>
						</td> </tr> 
						<tr> <td style="width: 50%;"> <label for="threeDayWorkShop">3 Days: </label> </td> <td style="width: 50%;"> <input type="number" id="threeDayWorkShop" name="threeDayWorkShop" min="0" value="0" /> 
						<p onclick="duplicateRow('r14')">Add Rows</p>
						</td> </tr>
							</table>
							</td>
							
								<!-- <input type="text" id="fiveDayWorkShopDisplay"
								name="fiveDayWorkShopDisplay" min="0" readonly="readonly"/><br> <br> <input
								type="text" id="threeDayWorkShopDisplay"
								name="threeDayWorkShopDisplay" min="0" readonly="readonly" /><br> <br> -->
								
							
						</tr>
						<tr id="r15">
							<td>15</td>
							<td>No. of invited technical talks outside the institute</td>
							<td><input type="number" id="invitedTalksOutside"
								name="invitedTalksOutside" min="0" value="0" />
								<p onclick="duplicateRow('r15')">Add Rows</p>
								</td>
							
						</tr>
						<tr id="r16">
							<td>16</td>
							<td>No. of events participation outside the institute<br>(FDP/Seminar/Workshop/Conference)
							</td>
							<td><input type="number" id="eventsOutside"
								name="eventsOutside" min="0" value="0" />
								<p onclick="duplicateRow('r16')">Add Rows</p>
								</td>
							
						</tr>
						<tr id="r17">
							<td>17</td>
							<td>No. of events participation inside the institute<br>(FDP/Seminar/Workshop/Conference)
							</td>
							<td><input type="number" id="invitedTalksInside"
								name="invitedTalksInside" min="0" value="0" />
								<p onclick="duplicateRow('r17')">Add Rows</p>
								</td>
							
						</tr>

						<tr id="r18">
							<td>18</td>
							<td>Industry Relations<br>(MoU, Co-hosted event,
								Technical Talk Series)
							</td>
							<td><input type="number" id="industryRelations"
								name="industryRelations" min="0" value="0" />
								<p onclick="duplicateRow('r18')">Add Rows</p>
								</td>
							
						</tr>
						<tr id="r19">
							<td>19</td>
							<td>Institutional/Departmental Services such as NBA/NIRF</td>
							<td>
							<table>
						<tr> <td style="width: 50%;">  <label for="instDeptServicesCoordinator">Coordinator</label> </td> <td style="width: 50%;">  <input type="number" id="instDeptServicesCoordinator" name="instDeptServicesCoordinator" min="0" value="0" />
						<p onclick="duplicateRow('r19')">Add Rows</p>
						 </td> </tr> 
						<tr> <td style="width: 50%;">  <label for="instDeptServicesOthers">Others</label> </td> <td style="width: 50%;">  <input type="number" id="instDeptServicesOthers" name="instDeptServicesOthers" min="0" value="0" />
						<p onclick="duplicateRow('r19')">Add Rows</p>
						 </td> </tr>
							</table>
							</td>
							
								<!-- <input type="text"
								id="instDeptServicesCoordinatorDisplay"
								name="instDeptServicesCoordinatorDisplay" min="0" readonly="readonly" /><br> <br>
								<input type="text" id="instDeptServicesOthersDisplay"
								name="instDeptServicesOthersDisplay" min="0" readonly="readonly" /><br> <br> -->
								
							
						</tr>
						<tr id="r20">
							<td>20</td>
							<td>Other Services to the institution or society
								contribution</td>
							<td><input type="number" id="othServices" name="othServices"
								min="0" value="0" />
								<p onclick="duplicateRow('r20')">Add Rows</p>
								</td>
							
						</tr>
						<tr id="r21">
							<td>21</td>
							<td>Awards and Honours</td>
							<td><input type="number" id="awardsHonours"
								name="awardsHonours" min="0" value="0" />
								<p onclick="duplicateRow('r21')">Add Rows</p>
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
						<tr id="r22">
							<td>22</td>
							<td>Professionalism / Team spirit</td>
							<td><input type="number" id="profTeam" name="profTeam"
								min="0" value="0" />
								<p onclick="duplicateRow('r22')">Add Rows</p>
								</td>
							
						</tr>
						<tr id="r23">
							<td>23</td>
							<td>Any other major contributions: (Max 500 characters)</td>
							<td><textarea rows="10" cols="50" name="anyContribution"
									id="anyContribution" value="0"></textarea>
									<p onclick="duplicateRow('r23')">Add Rows</p>
									</td>
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
						<tr>
							<td><button type="reset" >Reset</button></td>
							<td><button class="btn btn-secondary" id="calculate">Calculate</button></td>
							<td><button type="submit" class="btn btn-primary">Print
									Appraisal</button></td>
						</tr>
					</tbody>
				</table>
			</form>
		</div>
		<div class="container-fluid col-sm-2">&nbsp;</div>
	</div>
</body>
<script>
$(document).ready(function() {
//$(document).on("submit", "#formAppraisal", function(event) {
  //  var $form = $(this);
    
  //  $.post($form.attr("action"), $form.serialize(), function(response) {
       
  //  });

  //  event.preventDefault(); 
//});

$("#calculate").click(function(event) { 
	event.preventDefault();						// When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
    $.get('AjaxFile', $('form').serialize(), function(responseJson) {                 // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response JSON...
        var $totalScore = $("#totalScore");
        var $bonusScore = $("#bonusScore");					
        var $finalScore = $("#finalScore");
       // var res = JSON.parse(responseJson);
       // $totalScore.text(res.totalScore);
       // $bonusScore.text(res.bonusScore);
       // $finalScore.text(res.finalScore);
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
    });
});
});
</script>
</html></html>