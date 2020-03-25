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
  <title>Responsibilites</title>
<jsp:include page="/jsp/header.jsp"></jsp:include>

</head>
<body style="background-image: linear-gradient(white);">
<div class="container-fluid">
	
	<div class="row"><br>
		<div class="col-sm-4">
		</div>
		<div class="col-sm-4" style="background-image: linear-gradient();">
			<br><br>
			
			<div class="row">
				
				<div class="col-sm-12">
					<input type="text" class="form-control" placeholder="Role" />
				</div>
			</div>
			<div class="row"><br>
				
				<div class="col-sm-12">
					<input type="text" class="form-control" placeholder="co-ordinator" />
				</div>
			</div>
			<div class="row"><br>
				
				<div class="col-sm-12">
					From:<input type="date" class="form-control" placeholder="From"/>
				</div>
			</div>
			<div class="row"><br>
				
				<div class="col-sm-12">
					To:<input type="date" class="form-control" placeholder="To"/>
				</div>
			</div>
			
			<div class="row"><br>
				<div class="col-sm-12">
					<button type="button" class="btn-success  btn-block">Insert </button>
				</div>
			</div>
</body>

<jsp:include page="/jsp/footer.jsp"></jsp:include>
</html>