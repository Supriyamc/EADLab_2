<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
<html lang="en">
<head>
 
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
  body{
  background-color:#DEE0E1;
  }
  p {
	font-family: Arial, Helvetica, sans-serif;
  }
  
  </style>
  <title>Funded project Details Entry</title>
<jsp:include page="/jsp/header.jsp"></jsp:include>

</head>
<body style="background-image: linear-gradient(white);">
<div class="container-fluid">
	
	<div class="row"><br><br>
		<div class="col-sm-4">
		</div>
		<div class="col-sm-4" style="background-image: linear-gradient();">
			<br><br>
			
			<div class="row">
				
				<div class="col-sm-12">
				<input type="text" class="form-control" placeholder="Role" />
				</div>
			</div></br>
			<div class="row">
				
				<div class="col-sm-12">
				<input type="text" class="form-control" placeholder="Title" />
				</div>
			</div></br>
			<div class="row">
				
				<div class="col-sm-12">
				<input type="text" class="form-control" placeholder="Funded agency" />
				</div>
			</div></br>
			<div class="row">
				
				<div class="col-sm-12">
				<input type="text" class="form-control" placeholder="Schema" />
				</div>
			</div></br>
			<div class="row">
				
				<div class="col-sm-12">
				<input type="text" class="form-control" placeholder="Sanctioned order no" />
				</div>
			</div></br>
			<div class="row">
				
				<div class="col-sm-12">
				<input type="text" class="form-control" placeholder="Duration" />
				</div>
			</div></br>
			<div class="row">
				
				<div class="col-sm-12">
				<input type="text" class="form-control" placeholder="Sanctioned amt" />
				</div>
			</div></br>
			<div class="row">
				
				<div class="col-sm-12">
				<input type="date" class="form-control" placeholder="Sanctioned date" />
				</div>
			</div><br>
			<div class="row">
				
				<div class="col-sm-12">
				<input type="text" class="form-control" placeholder="Status" />
				</div>
			</div>
			
			<div class="row"><br>
				
				<div class="col-sm-12">
				

					<button type="button" class="btn-success  btn-block">Insert </button>
				</div>
			</div>
			
		</div>
		
	</div><br><br>
</div>


</body>

<jsp:include page="/jsp/footer.jsp"></jsp:include>
</html>