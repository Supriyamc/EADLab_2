<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Header</title>
<jsp:include page="/jsp/header1.jsp"></jsp:include>

</head>
<body style="background-image: linear-gradient(white);">
<div class="container-fluid"><br>
<div class="col-sm-3">
		
    		<div class="row" style="background-color:#DEE0E1"><br>
				<div class="col-sm-12">
					<button type="button" class="btn-primary btn-block">Faculty Profile</button>
				</div>
			</div>
			<div class="row" style="background-color:#EAECED"><br>
				<div class="col-sm-12">
					<button type="button" class="btn-primary btn-block">Professional Activities and Bodies</button>
				</div>
			</div>
			<div class="row" style="background-color:#DEE0E1"><br>
				<div class="col-sm-12">
					<button type="button" class="btn-primary btn-block">Qualification</button>
				</div>
			</div>
			<div class="row" style="background-color:#EAECED"><br>
				<div class="col-sm-12">
					<button type="button" class="btn-primary btn-block">Service Details</button>
				</div>
			</div>
			<div class="row" style="background-color:#DEE0E1"><br>
				<div class="col-sm-12">
					<button type="button" class="btn-primary btn-block">Academic Deatails</button>
				</div>
			</div>
			<div class="row" style="background-color:#EAECED"><br>
				<div class="col-sm-12">
					<button type="button" class="btn-primary btn-block">Achivements</button>
				</div>
			</div>
			<div class="row" style="background-color:#DEE0E1"><br>
				<div class="col-sm-12">
					<button type="button" class="btn-primary btn-block">R&D </button>
				</div>
			</div>
			<div class="row" style="background-color:#EAECED"><br>
				<div class="col-sm-12">
					<button type="button" class="btn-primary btn-block">Responsibility</button>
				</div>
			</div>
			<div class="row" style="background-color:#DEE0E1"><br>
				<div class="col-sm-12">
					<button type="button" class="btn-primary  btn-block">Any Contribution</button>
				</div>
			</div>
	</div>
	<div class="col-md-9"> 
      <div class="row" id="first">
      		<div class="row" style="background-color:#DEE0E1">
		<div class="col-sm-12">
				<span style="color:white;"><center><b>Service Details</b></center><br></span>
	     </div>
	</div>
      		<div class="col-md-2"> 
      			
		      		<div class="row head_row" ><br>
		      			<span style="color:#334370;"><center>Designation</center><br></span>
		      		</div>
		     	
		     	 
		     	 </div>
		     	 <div class="col-md-2"> 
      			
		      		<div class="row head_row" ><br>
		      			<span style="color:#334370;"><center>Institute/Orgnaiztion</center><br></span>
		      		</div>
		     	
		     	 
		     	 </div>
		     	 <div class="col-md-2"> 
      			
		      		<div class="row head_row" ><br>
		      			<span style="color:#334370;"><center>From</center><br></span>
		      		</div>
		     	
		     	 
		     	 </div>
		     	 <div class="col-md-2"> 
      			
		      		<div class="row head_row" ><br>
		      			<span style="color:#334370;"><center>To</center><br></span>
		      		</div>
		     	
		     	 
		     	 </div>
		     	 <div class="col-md-2"> 
      			
		      		<div class="row head_row" ><br>
		      			<span style="color:#334370;"><center>Total Service</center><br></span>
		      		</div>
		     	
		     	 
		     	 </div>
		   
		    </div>
      </div>
      
  </div>

</div>


</body>

<jsp:include page="/jsp/footer1.jsp"></jsp:include>
</html>