<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Add Faculty</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
  p {
	font-family: Arial, Helvetica, sans-serif;
  }
  
  </style>
</head>
<body style="background-image: linear-gradient(white);">
<div class="container-fluid">
	<div class="row" style="background-color:#201e3e">
		<div class="row" style="background-color:#201e3e">		
			<img src="http://d2e9h3gjmozu47.cloudfront.net/brand.png" height= "60px" style="padding-top:1px"/>
		
		</div>
	</div>
	<h1 align="center" style=color:black>ADD FACUALTY</h1>
	<div class="row"><br><br>
	<div class="col-sm-3">
	</div>
	
	
	<div class="col-sm-6">
	<div class="row">
	<div class="col-sm-6">
	FACULTY ID
	</div>
	<div class="col-sm-6">
	<input type="text" class="form-control"  />
	</div>
	</div><br>
	<div class="row">
	<div class="col-sm-6">
	FACULTY NAME
	</div>
	<div class="col-sm-6">

	<input type="text" class="form-control"  />
	</div>
	</div><br>
	<div class="row">
	<div class="col-sm-6">
	DEPARTMENT
	</div>
	<div class="col-sm-6">
	
	<select id="cars" class="form-control">
<option value="admin">Civil Engineering</option>
<option value="faculty">Mechanical Engineering</option>	
 <option value="faculty">Electrical and Electronics Engineering</option>		
 <option value="faculty">Electronics and communication Engineering</option>		
 <option value="faculty">Computer Science and Engineering</option>		
 <option value="faculty">Chemical Engineering</option>		
 <option value="faculty">Industrial Engineering and Management</option>		
 <option value="faculty">Electronics and Instrumentation Engineering</option>		
 <option value="faculty">Information Science and Engineering</option>		
 <option value="faculty">Telecommunication Engineering</option>		
 <option value="faculty">Medical Electronics</option>		
 <option value="faculty">Biotechnology</option>		
 <option value="faculty">MBA</option>
 <option value="faculty">MCA</option>		 
 <option value="faculty">Mtech</option>		
 
					</select>
	</div>
	</div><br>
	<div class="row">
	<div class="col-sm-6">
	GENDER
	</div>
	<div class="col-sm-6">
	<select id="cars" class="form-control">
					  <option value="admin">Male</option>
					  <option value="faculty">Female</option>	
					  <option value="faculty">Others</option>	
					  </select>
					  
		
	</div>
	
	</div><br>
	<div class="row">
	<div class="col-sm-6">
	DATE OF BIRTH
	</div>
	<div class="col-sm-6">
	<input type="date" class="form-control"  />
	</div>
	</div><br>
	<div class="row">
	<div class="col-sm-6">
	DESIGNATION
	</div>
	<div class="col-sm-6">
	<select id="cars" class="form-control">
					  <option value="admin">Assistant Professor</option>
					  <option value="faculty">Associate Professor</option>	
					  
					  </select>
					  
	</div>
	</div><br>
	<div class="row">
	<div class="col-sm-6">
	CONTACT NUMBER
	</div>
	<div class="col-sm-6">
	<input type="text" class="form-control"  />
	
	</div>
	</div><br>
	<div class="row">
	<div class="col-sm-6">
	DATE OF JOINING
	</div>
	<div class="col-sm-6">
	<input type="date" class="form-control"  />
	
	</div>
	</div><br>
	<div class="row">
	<div class="col-sm-6">
	Email
	</div>
	<div class="col-sm-6">
	<input type="Text" class="form-control"  />
	
	</div>
	</div><br>
	<div class="row">
	<div class="col-sm-6">
	NATURE OF APPOINTMENT
	</div>
	<div class="col-sm-6">
	<select id="cars" class="form-control">
					  <option value="admin">Regular</option>
					  <option value="faculty">Part-Time</option>	
					  
					  </select>
					  
	</div>
	</div><br>
	<div class="row"><br>
				
				<div class="col-sm-5">
					<button type="button" class="btn btn-success btn-block">Submit</button>
					</div>
					
					<div class="col-sm-5">
					<a href="AdminDashBoard.jsp">
					<button type="button" class="btn btn-danger btn-block">cancel</button></a>
				</div>
	
	
	
	
	
	</div>
	<div class="col-sm-3">
	</div>
	</div>
	