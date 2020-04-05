<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>

body {
  font-family: "Lato", sans-serif;
}

.sidenav {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color:#111;
  overflow-x: hidden;
  transition: 0.5s;
  padding-top: 60px;
}

/* Style the sidenav links and the dropdown button */
.sidenav a, .dropdown-btn {
  padding: 6px 8px 6px 16px;
  text-decoration: none;
  font-size: 20px;
  color: #818181;
  display: block;
  border: none;
  background: none;
  width: 100%;
  text-align: left;
  cursor: pointer;
  outline: none;
}

/* On mouse-over */
.sidenav a:hover, .dropdown-btn:hover {
  color: #f1f1f1;
}
sidenav .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
  margin-left: 50px;
}
 

/* Main content */
.main {
  margin-left: 200px; /* Same as the width of the sidenav */
  font-size: 20px; /* Increased text to enable scrolling */
  padding: 0px 10px;
}

/* Add an active class to the active dropdown button */
.active {
  background-color: green;
  color: white;
}

/* Dropdown container (hidden by default). Optional: add a lighter background color and some left padding to change the design of the dropdown content */
.dropdown-container {
  display: none;
  background-color: #262626;
  padding-left: 8px;
}

/* Optional: Style the caret down icon */
.fa-caret-down {
  float: right;
  padding-right: 8px;
}

/* Some media queries for responsiveness */
@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
</style>
</head>

<div class="container-fluid">
	<div class="row" style="background-color:#201e3e">		
			<img src="http://d2e9h3gjmozu47.cloudfront.net/brand.png" height= "60px" style="padding-top:1px"/>
		
		</div>
	</div>
	

<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
   <button class="dropdown-btn ">SELF SERVICES
    <i class="fa fa-caret-down"></i>
  </button>
  <div class="dropdown-container">
    <a href="JSP/faculty.jsp">ADD FACUALTY</a>
    <a href="JSP/deletefaculty.jsp">DELETE FACUALTY</a>
    
  </div>
 <button class="dropdown-btn ">CONFIGURATION SETTINGS
    <i class="fa fa-caret-down"></i>
  </button>
  <div class="dropdown-container">
  <a href="JSP/leave.jsp">LEAVE MANAGEMENT SYSTEM</a>
  
  <a href="JSP/journal.jsp">JOURNAL INCENTIVES</a>
  <a href="JSP/renumeration.jsp">RENUMERATION</a>
  <a href="JSP/appraisal.jsp">SELF-APPRAISAL SYSTEM</a>
    
 </div>
</div>

<div id="main">
  
  
  <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; </span>
</div>

<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
  document.getElementById("main").style.marginLeft = "250px";
  document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
  document.getElementById("main").style.marginLeft= "0";
  document.body.style.backgroundColor = "white";
}

var dropdown = document.getElementsByClassName("dropdown-btn");
var i;

for (i = 0; i < dropdown.length; i++) {
  dropdown[i].addEventListener("click", function() {
  this.classList.toggle("active");
  var dropdownContent = this.nextElementSibling;
  if (dropdownContent.style.display === "block") {
  dropdownContent.style.display = "none";
  } else {
  dropdownContent.style.display = "block";
  }
  });
}

</script>
   <h1 align="center" style=color:black>WELCOME TO ADMIN PORTAL</h1>
</body>
</html> 