<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Faculty Dashboard</title>
<link href="/StudentEnrollmentWithJDBC/assets/css/bootstrap-united.css" rel="stylesheet" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="/StudentEnrollmentWithJDBC/js/appraisal_control.js" /></script>

</head>
<body>
<style>
body {
	height: 100%;
	margin: 0;
	background: url(assets/img/faculty1.jpg);
	background-size: 1540px 800px;
	background-repeat: no-repeat;
	display: compact;
}
</style>
	<script src="/StudentEnrollmentWithJDBC/jquery-1.8.3.js">
		
	</script>

	<script src="/StudentEnrollmentWithJDBC/bootstrap/js/bootstrap.js">
		
	</script>
	<div class="navbar navbar-default">

		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-responsive-collapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
		</div>
		<a class="navbar-brand" href="#" id="sample">
		<div class="container-fluid">
	<div class="row" style="background-color:#201e3e">		
			<img src="http://d2e9h3gjmozu47.cloudfront.net/brand.png" height= "60px" style="padding-top:1px"/>
		
		</div>
	</div>
		</a>
		<div class="navbar-collapse collapse navbar-responsive-collapse">
			<form class="navbar-form navbar-right">
				<input type="text" class="form-control" placeholder="Search">
			</form>
			
		</div>
		<!-- /.nav-collapse -->
	</div>
<form id="myForm" method="post" class="bs-example form-horizontal"
							action="../Appraisal">
	<h1 align="center" style=color:black>CONFIGURATION FOR SELF APPRAISAL</h1>
	<br><br>
	<div class="row">
	<div class="col-sm-2" ><br><br>
		<p><b>DESIGNATION MAXIMUM TEACHING SCORE</b></p>
	</div>
	</div>
<div class="form-group">
<label for="As_Teach" class="col-lg-1 control-label">As_Teach</label>
<div class="col-lg-2"><input type="text" class="form-control" name="As_Teach"	id="As_Teach"  />	
</div>
</div>	
	<div class="form-group">
<label for="As_Res" class="col-lg-1 control-label">As_Res</label>
<div class="col-lg-2"><input type="text" class="form-control" name="As_Res"	id="As_Res"  />	
</div>
</div>
<div class="form-group">
<label for="As_ser" class="col-lg-1 control-label">As_Ser</label>
<div class="col-lg-2"><input type="text" class="form-control" name="As_ser"	id="As_ser"  />	
</div>
</div>
<div class="form-group">
<label for="Asso_Teach" class="col-lg-1 control-label">Asso_Teach</label>
<div class="col-lg-2"><input type="text" class="form-control" name="Asso_Teach"	id="Asso_Teach"  />	
</div>
</div>
<div class="form-group">
<label for="Asso_Res" class="col-lg-1 control-label">Asso_Res</label>
<div class="col-lg-2"><input type="Asso_Res" class="form-control" name="Asso_Res"	id="Asso_Res"  />	
</div>
</div>
<div class="form-group">
<label for="Asso_Ser" class="col-lg-1 control-label">Asso_Ser</label>
<div class="col-lg-2"><input type="text" class="form-control" name="Asso_Ser"	id="Asso_Ser"  />	
</div>
</div>
<div class="form-group">
<label for="Pro_Teach" class="col-lg-1 control-label">Pro_Teach</label>
<div class="col-lg-2"><input type="text" class="form-control" name="Pro_Teach"	id="Pro_Teach"  />	
</div>
</div>
<div class="form-group">
<label for="Pro_Res" class="col-lg-1 control-label">Pro_Res</label>
<div class="col-lg-2"><input type="text" class="form-control" name="Pro_Res"	id="Pro_Res"  />	
</div>
</div>
<div class="form-group">
<label for="Pro_Ser" class="col-lg-1 control-label">Pro_Ser</label>
<div class="col-lg-2"><input type="text" class="form-control" name="Pro_Ser"	id="Pro_Ser"  />	
</div>
</div>
<div class="form-group">
<label for="Prohead_Teach" class="col-lg-1 control-label">Prohead_Teach</label>
<div class="col-lg-2"><input type="text" class="form-control" name="Prohead_Teach"	id="Prohead_Teach"  />	
</div>
</div>
<div class="form-group">
<label for="Prohead_Res" class="col-lg-1 control-label">Prohead_Res</label>
<div class="col-lg-2"><input type="text" class="form-control" name="Prohead_Res"	id="Prohead_Res"  />	
</div>
</div>
<div class="form-group">
<label for="Prohead_Ser" class="col-lg-1 control-label">Prohead_Ser</label>
<div class="col-lg-2"><input type="text" class="form-control" name="Prohead_Ser"	id="Prohead_Ser"  />	
</div>
</div>
<div class="row">
	<div class="col-sm-2"><br><br>
		<p><b>TEACHING SCORE</b></p>
	</div>
	</div>
<div class="form-group">
<label for="fci1" class="col-lg-1 control-label">fci1</label>
<div class="col-lg-2"><input type="text" class="form-control" name="fci1"	id="fci1"  />	
</div>
</div>	
<div class="form-group">
<label for="fci2" class="col-lg-1 control-label">fci2</label>
<div class="col-lg-2"><input type="text" class="form-control" name="fci2"	id="fci2"  />	
</div>
</div>
<div class="form-group">
<label for="fci3" class="col-lg-1 control-label">fci3</label>
<div class="col-lg-2"><input type="text" class="form-control" name="fci3"	id="fci3"  />	
</div>
</div>
<div class="form-group">
<label for="fci4" class="col-lg-1 control-label">fci4</label>
<div class="col-lg-2"><input type="text" class="form-control" name="fci4"	id="fci4"  />	
</div>
</div>
<div class="form-group">
<label for="fci5" class="col-lg-1 control-label">fci5</label>
<div class="col-lg-2"><input type="text" class="form-control" name="fci5"	id="fci5"  />	
</div>
</div>
<div class="row">
	<div class="col-sm-2"><br><br>
		<p><b>RESEARCH SCORE</b></p>
	</div>
	</div>
<div class="form-group">
<label for="nirf1" class="col-lg-1 control-label">nirf1</label>
<div class="col-lg-2"><input type="text" class="form-control" name="nirf1"	id="nirf1"  />	
</div>
</div>	
<div class="form-group">
<label for="index1" class="col-lg-1 control-label">index1</label>
<div class="col-lg-2"><input type="text" class="form-control" name="index1"	id="index1"  />	
</div>
</div>
<div class="form-group">
<label for="index2" class="col-lg-1 control-label">index2</label>
<div class="col-lg-2"><input type="text" class="form-control" name="index2"	id="index2"  />	
</div>
</div>
<div class="form-group">
<label for="index3" class="col-lg-1 control-label">index3</label>
<div class="col-lg-2"><input type="text" class="form-control" name="index3"	id="index3"  />	
</div>
</div>
<div class="form-group">
<label for="jou" class="col-lg-1 control-label">jou</label>
<div class="col-lg-2"><input type="text" class="form-control" name="jou" id="jou"  />	
</div>
</div>
<div class="form-group">
<label for="b1" class="col-lg-1 control-label">b1</label>
<div class="col-lg-2"><input type="text" class="form-control" name="b1"	id="b1"  />	
</div>
</div>
<div class="form-group">
<label for="b2" class="col-lg-1 control-label">b2</label>
<div class="col-lg-2"><input type="text" class="form-control" name="b2"	id="b2"  />	
</div>
</div>
<div class="form-group">
<label for="dis" class="col-lg-1 control-label">dis</label>
<div class="col-lg-2"><input type="text" class="form-control" name="dis"	id="dis"  />	
</div>
</div>
<div class="form-group">
<label for="pat" class="col-lg-1 control-label">pat</label>
<div class="col-lg-2"><input type="text" class="form-control" name="pat" id="pat"  />	
</div>
</div>
<div class="form-group">
<label for="rUG" class="col-lg-1 control-label">rUG</label>
<div class="col-lg-2"><input type="text" class="form-control" name="rUG" id="rUG"  />	
</div>
</div>
<div class="form-group">
<label for="rPG" class="col-lg-1 control-label">rPG</label>
<div class="col-lg-2"><input type="text" class="form-control" name="rPG" id="rPG"  />	
</div>
</div>
<div class="form-group">
<label for="rPHD" class="col-lg-1 control-label">rPHD</label>
<div class="col-lg-2"><input type="text" class="form-control" name="rPHD" id="rPHD"  />	
</div>
</div>
<div class="form-group">
<label for="fp1" class="col-lg-1 control-label">fp1</label>
<div class="col-lg-2"><input type="text" class="form-control" name="fp1" id="fp1"  />	
</div>
</div>
<div class="form-group">
<label for="fp2" class="col-lg-1 control-label">fp2</label>
<div class="col-lg-2"><input type="text" class="form-control" name="fp2" id="fp2"  />	
</div>
</div>
<div class="form-group">
<label for="fp3" class="col-lg-1 control-label">fp3</label>
<div class="col-lg-2"><input type="text" class="form-control" name="fp3" id="fp3"  />	
</div>
</div>
<div class="form-group">
<label for="fp4" class="col-lg-1 control-label">fp4</label>
<div class="col-lg-2"><input type="text" class="form-control" name="fp4" id="fp4"  />	
</div>
</div>
<div class="form-group">
<label for="fp5" class="col-lg-1 control-label">fp5</label>
<div class="col-lg-2"><input type="text" class="form-control" name="fp5" id="fp5"  />	
</div>
</div>
<div class="form-group">
<label for="cp1" class="col-lg-1 control-label">cp1</label>
<div class="col-lg-2"><input type="text" class="form-control" name="cp1" id="cp1"  />	
</div>
</div>
<div class="form-group">
<label for="cp2" class="col-lg-1 control-label">cp2</label>
<div class="col-lg-2"><input type="text" class="form-control" name="cp2" id="cp2"  />	
</div>
</div>
<div class="form-group">
<label for="cp3" class="col-lg-1 control-label">cp3</label>
<div class="col-lg-2"><input type="text" class="form-control" name="cp3" id="cp3"  />	
</div>
</div>
<div class="form-group">
<label for="cp4" class="col-lg-1 control-label">cp4</label>
<div class="col-lg-2"><input type="text" class="form-control" name="cp4" id="cp4"  />	
</div>
</div>
<div class="form-group">
<label for="cp5" class="col-lg-1 control-label">cp5</label>
<div class="col-lg-2"><input type="text" class="form-control" name="cp5" id="cp5"  />	
</div>
</div>
<div class="row">
	<div class="col-sm-2"><br><br>
		<p><b>SERVICE SCORE</b></p>
	</div>
	</div>
<div class="form-group">
<label for="chair" class="col-lg-1 control-label">chair</label>
<div class="col-lg-2"><input type="text" class="form-control" name="chair"	id="chair"  />	
</div>
</div>	
<div class="form-group">
<label for="cfdp1" class="col-lg-1 control-label">cfdp1</label>
<div class="col-lg-2"><input type="text" class="form-control" name="cfdp1"	id="cfdp1"  />	
</div>
</div>	
<div class="form-group">
<label for="cfdp2" class="col-lg-1 control-label">cfdp2</label>
<div class="col-lg-2"><input type="text" class="form-control" name="cfdp2"	id="cfdp2"  />	
</div>
</div>	
<div class="form-group">
<label for="talk" class="col-lg-1 control-label">talk</label>
<div class="col-lg-2"><input type="text" class="form-control" name="talk"	id="talk"  />	
</div>
</div>	
<div class="form-group">
<label for="eveo" class="col-lg-1 control-label">eveo</label>
<div class="col-lg-2"><input type="text" class="form-control" name="eveo"	id="eveo"  />	
</div>
</div>
<div class="form-group">
<label for="invi" class="col-lg-1 control-label">invi</label>
<div class="col-lg-2"><input type="text" class="form-control" name="invi"	id="invi"  />	
</div>
</div>
<div class="form-group">
<label for="ind" class="col-lg-1 control-label">ind</label>
<div class="col-lg-2"><input type="text" class="form-control" name="ind"	id="ind"  />	
</div>
</div>
<div class="form-group">
<label for="nba1" class="col-lg-1 control-label">nba1</label>
<div class="col-lg-2"><input type="text" class="form-control" name="nba1"	id="nba1"  />	
</div>
</div>
<div class="form-group">
<label for="nba2" class="col-lg-1 control-label">nba2</label>
<div class="col-lg-2"><input type="text" class="form-control" name="nba2"	id="nba2"  />	
</div>
</div>
<div class="form-group">
<label for="OS1" class="col-lg-1 control-label">OS1</label>
<div class="col-lg-2"><input type="text" class="form-control" name="OS1"	id="OS1"  />	
</div>
</div>
<div class="form-group">
<label for="award" class="col-lg-1 control-label">award</label>
<div class="col-lg-2"><input type="text" class="form-control" name="award"	id="award"  />	
</div>
</div>
<div class="col-lg-9 col-lg-offset-3">
									<button id="submit" type="submit"  class="btn btn-primary" onclick="myFunction()" >Submit</button>	
									
		    			    			
									
                                   <!-- <button  class="btn btn-primary">Reset</button> -->
                                    
                                    <a class="btn btn-primary" href="AdminDashBoard.jsp">Cancel </a> 
									
				

								</div>
<script>
function myFunction() {
  document.getElementById("submit")
   alert("Record Submitted succesfully");
}
</script>	
</body>
</html>
		