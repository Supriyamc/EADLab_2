<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Application page</title>
<style>
* {
	box-sizing: border-box;
}

body {
	margin: 0;
}

.header {
	padding: 50px;
	text-align: center;
	background: #201e3e;
	color: white;
	font-size: 30px;
	font-family: arial;

}

input[type=text], textarea {
	width: 100%;
	padding: 8px;
	border: 1px solid #ccc;
	border-radius: 4px;
	resize: vertical;
	font-family: Arial;
	font-size: 18px;
}

label {
	padding: 12px 12px 12px 12px;
	display: inline-block;
	font-family: Arial;
	font-size: 18px;
	color: #000e4e;
}

input[type=submit] {
	
	
 	border: none;
  
  	padding: 15px 32px;
  	text-align: center;
  	text-decoration: none;
  	display: inline-block;
  	font-size: 16px;
  	margin: 4px 2px;
  	cursor: pointer;
  	-webkit-transition-duration: 0.4s; /* Safari */
  	transition-duration: 0.4s;
	background-color: #4CAF50;
	color: white;
	border: none;
	border-radius: 4px;
	float: right;
}

input[type=submit]:hover {
	background-color: #45a049;
	box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}

.container {
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 20px;
}

.col-10	{
	float:left;
	width: 10%;
	padding: 14px 0px 0px 0px;
	margin-top: 6px;
	text-align: center;
}
.col-15 {
	float: left;
	width: 15%;
	margin-top: 6px;
}

.col-25 {
	float: left;
	width: 25%;
	margin-top: 6px;
}

.col-35 {
	float: left;
	width: 35%;
	margin-top: 6px;
}

.col-40 {
	float:left;
	width: 40%;
	margin-top: 6px;
}

.col-45 {
	float:left;
	width: 45%;
	margin-top: 6px;
}

.col-40-radio	{
	float:left;
	width: 40%;
	margin-top: 6px;
	padding: 14px 0px 0px 10px;
}

.col-50	{
	float: left;
	width: 50%;
	margin-top: 6px;
	}

.col-75 {
	float: left;
	width: 75%;
	margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
	content: "";
	display: table;
	clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
	.col-25, .col-75, .col-10, .col-40-radio, input[type=submit], .col-15, .col-40 {
		width: 100%;
		margin-top: 0;
	}
}

select {
	margin: 12px 0px 0px 0px;
	padding: 14px;
	font-family: Arial;
	font-size: 18px;
	color: #000e4e;
}

#brand {
	float: left;
}

.mand {
color: red;
}

.help-tip{
    float: right;
    top: 18px;
    right: 18px;
    text-align: center;
    background-color: #BCDBEA;
    border-radius: 50%;
    width: 24px;
    height: 24px;
    font-size: 14px;
    line-height: 26px;
    cursor: default;
}

.help-tip:before{
    content:'?';
    font-weight: bold;
    color:#fff;
}

.help-tip:hover p{
    display:block;
    transform-origin: 100% 0%;

    -webkit-animation: fadeIn 0.3s ease-in-out;
    animation: fadeIn 0.3s ease-in-out;

}

.help-tip p{    /* The tooltip */
    display: none;
    text-align: left;
    background-color: #1E2021;
    padding: 20px;
    width: 300px;
    position: absolute;
    border-radius: 3px;
    box-shadow: 1px 1px 1px rgba(0, 0, 0, 0.2);
    right: -4px;
    color: #FFF;
    font-size: 13px;
    line-height: 1.4;
}

.help-tip p:before{ /* The pointer of the tooltip */
    position: absolute;
    content: '';
    width:0;
    height: 0;
    border:6px solid transparent;
    border-bottom-color:#1E2021;
    right:10px;
    top:-12px;
}

.help-tip p:after{ /* Prevents the tooltip from being hidden */
    width:100%;
    height:40px;
    content:'';
    position: absolute;
    top:-40px;
    left:0;
}

/* CSS animation */

@-webkit-keyframes fadeIn {
    0% { 
        opacity:0; 
        transform: scale(0.6);
    }

    100% {
        opacity:100%;
        transform: scale(1);
    }
}

@keyframes fadeIn {
    0% { opacity:0; }
    100% { opacity:100%; }
}

</style>

</head>
<body>

	
	<c:if test="${requestScope.success ne null }">
		<strong style="color:green;"><c:out value="${requestScope.success }"></c:out></strong>
	</c:if>
	
	<c:url value="/addApplication" var="addURL"></c:url>
	
	<div class="header">
		<img id="brand" src="<%=request.getContextPath()%>/images/brand.png" width="290px" height="100px">
		<h2 id="head">APPLICATION FOR JOURNAL INCENTIVES</h2>
	</div>
	<h2 style="text-align:center;font-family:arial;color:MediumSeaGreen;">Application Form</h2>
	<marquee behavior="alternate" style="color:dodgerBlue; font-family: verdana;'">Note: If there is only one author, then student and external member cannot be first author </marquee>
	<%-- Application add logic --%>
	<c:if test="${requestScope.error ne null}">
		<strong style="color:red;"><c:out value="${requestScope.error }"></c:out></strong>
	</c:if>  
	

	<div class="container">
		<%-- Add new application --%>
		<c:if test="${requestScope.application eq null }">
			<form action="<c:out value="${addURL}"></c:out>" method="post">
			
				<div class="row">
					<div class="col-15">
						<label for="papertitle">Paper Title<span class="mand">*</span></label>
					</div>
					<div class="col-75">
						<input type="text" id="pt" name="ptitle"
							placeholder="Enter paper title here..." required> 
					</div>
					<div class="help-tip"><p>May i help you?</p></div>
					
				</div>
				
				<div class="row">
					<div class="col-15">
						<label for="journalname">Journal Name<span class="mand">*</span></label>
					</div>
					<div class="col-75">
						<input type="text" id="jn" name="jrname"
							placeholder="Enter journal name here..." required>
					</div>
				</div>
				
				<div class="row">
					<div class="col-15">
						<label for="DOI">DOI<span class="mand">*</span></label>
					</div>
					
					<div class="col-45">
						<input type="text" id="doi" name="doi" placeholder="Enter DOI..." required>
					</div>
					
					<div class="col-15">
						<label for="jcategory">Journal Category<span class="mand">*</span></label>
					</div>
					
					<div class="col-25">
						      <select id="jcat" name="jcat" required>
						      	<option value=''>Select Journal Category</option>
						        <option value="Q1">Q1</option>
						        <option value="Q2">Q2</option>
						        <option value="Q3">Q3</option>
						        <option value="Q4">Q4</option>
						      </select>
				    </div>
				</div>
				
				<div class="row">
					<div class="col-15">
						<label for="fauthor">First Author<span class="mand">*</span></label>
					</div>
					<div class="col-45">
						<input type="text" id="fauthor" name="firstauthor" placeholder="Enter First Author name..." required>
					</div>
					<div class="col-40-radio"><span class="mand">*</span>
						<input type="radio" value="Faculty" name="fauthor" required>Faculty
						<input id="stu" type="radio" value="Student" name="fauthor" disabled>Student
						<input id="ext" type="radio" value="External" name="fauthor" disabled>External
						
					</div>
				</div>
				
				<div class="row">
					<div class="col-15">
						<label for="sauthor">Second Author</label>
					</div>
					
					<div class="col-10">
						<input onclick="authorcondition();" type="radio" id="yesss" name="seauthor" value="yes">Yes
						<input onclick="authorcondition();" type="radio" id="nooo" name="seauthor" value="NIL" checked="checked">No
					</div>
					
					
					<script>
					function authorcondition() {
						var second = document.getElementById("nooo").checked;
						var second1 = document.getElementById("yesss").checked;
						var third = document.getElementById("thyes").checked;
						var third1 = document.getElementById("thno").checked;
						var other = document.getElementById("yes").checked;
						var other1 = document.getElementById("no").checked;
						
						if(second == true)	{
							document.getElementById("stu").disabled = true;
							document.getElementById("ext").disabled = true;
							document.getElementById("sauthor").disabled = true;
							document.getElementById("sauthorFaculty").disabled = true;
							document.getElementById("sauthorStudent").disabled = true;
							document.getElementById("sauthorExternal").disabled = true;
							document.getElementById("sauthorFaculty").checked = false;
							document.getElementById("sauthorStudent").checked = false;
							document.getElementById("sauthorExternal").checked = false;
							document.getElementById("thyes").disabled = true;
							document.getElementById("yes").disabled = true;
							document.getElementById("tauthorFaculty").checked = false;
							document.getElementById("tauthorStudent").checked = false;
							document.getElementById("tauthorExternal").checked = false;
							document.getElementById("sauthorFaculty").checked = false;
							document.getElementById("sauthorStudent").checked = false;
							document.getElementById("sauthorExternal").checked = false;
							document.getElementById("no").checked = true;
							document.getElementById("thno").checked = true;
							document.getElementById("yes").disabled = true;
							document.getElementById("stu").disabled = true;
							document.getElementById("ext").disabled = true;
							document.getElementById("stu").checked = false;
							document.getElementById("ext").checked = false;
							document.getElementById("sauthor").value = '';
							document.getElementById("tttauthor").value = '';
							document.getElementById("oauthor").value = '';
						}
						if(second1 == true) {
							document.getElementById("stu").disabled = false;
							document.getElementById("ext").disabled = false;
							document.getElementById("sauthor").disabled = false;
							document.getElementById("sauthorFaculty").disabled = false;
							document.getElementById("sauthorStudent").disabled = false;
							document.getElementById("sauthorExternal").disabled = false;
							document.getElementById("thyes").disabled = false;
							
							
						}
						if(third == true){
							document.getElementById("tttauthor").disabled = false;
							document.getElementById("tauthorFaculty").disabled = false;
							document.getElementById("tauthorStudent").disabled = false;
							document.getElementById("tauthorExternal").disabled = false;
							document.getElementById("yes").disabled = false;
						}
						if(third1 == true){
							document.getElementById("tttauthor").disabled = true;
							document.getElementById("tauthorFaculty").disabled = true;
							document.getElementById("tauthorStudent").disabled = true;
							document.getElementById("tauthorExternal").disabled = true;
							document.getElementById("tauthorFaculty").checked = false;
							document.getElementById("tauthorStudent").checked = false;
							document.getElementById("tauthorExternal").checked = false;
							document.getElementById("yes").disabled = true;
						}
						if(other == true){
							document.getElementById("oauthor").disabled = false;
						}
						if(other1 == true){
							document.getElementById("oauthor").disabled = true;
						}
							
					}
					</script>
					
					<div class="col-35">
						<input type="text" id="sauthor" name="secondauthor" placeholder="Enter Second Author name..." disabled>
					</div>
					<div class="col-40-radio">
						<input id="sauthorFaculty" type="radio" value="Faculty" name="sauthor" disabled>Faculty
						<input id="sauthorStudent" type="radio" value="Student" name="sauthor" disabled>Student
						<input id="sauthorExternal" type="radio" value="External" name="sauthor" disabled>External
						
					</div>
				</div>
				
				<div class="row">
					<div class="col-15">
						<label for="tauthor">Third Author</label>
					</div>
					
					<div class="col-10">
						<input onclick="authorcondition();" type="radio" id="thyes" name="thauthor" value="yes" disabled>Yes
						<input onclick="authorcondition();" type="radio" id="thno" name="thauthor" value="NIL" checked="checked">No
					</div>
					
					
					<div class="col-35">
						<input type="text" id="tttauthor" name="thirdauthor" placeholder="Enter Third Author name..." disabled>
					</div>
					<div class="col-40-radio">
						<input id="tauthorFaculty" type="radio" value="Faculty" name="tauthor" disabled>Faculty
						<input id="tauthorStudent" type="radio" value="Student" name="tauthor" disabled>Student
						<input id="tauthorExternal" type="radio" value="External" name="tauthor" disabled>External
						
					</div>
					
				</div>

				<div class="row">
					<div class="col-15">
						<label for="otherauthor">Other Author from RIT</label>
					</div>
					<div class="col-10">
						<input onclick="authorcondition();" type="radio" id="yes" name="othauthor" value="yes" disabled>Yes
						<input onclick="authorcondition();" type="radio" id="no" name="othauthor" value="NIL" checked="checked">No
					</div>
					<div class="col-50">
						<input type="text" id="oauthor" name="otherauthor" placeholder="Enter the name of author..." disabled>
					</div>
				</div>
				
				<div class="row">
					<input type="submit" value="Submit">
					
					
				</div>
			</form>
		</c:if>
	</div>



</body>
</html>

