<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="<%=request.getContextPath()%>/bootstrap/css/bootstrap.min.css"
         rel="stylesheet" type="text/css">

<script type="text/javascript" src="<%=request.getContextPath()%>/bootstrap/js/bootstrap.min.js" > </script>

<title>Header</title>
<jsp:include page="/jsp/header1.jsp"></jsp:include>
</head>
<body style="background-image: linear-gradient(white);">
<div class="container-fluid"><br>
<div class="col-sm-4">
		
    <div class="row" style="background-color:#DEE0E1"><br>
		<div class="col-sm-12">
					<button type="button" class="btn-success btn-block">Faculty Profile</button>
				</div>
			</div>
		<div class="row" style="background-color:#EAECED"><br>
		<div class="col-sm-12">

					<button type="button" class="btn btn-block">Professional Activities and Bodies</button>
				</div>
			</div>
			
			<div class="row" style="background-color:#DEE0E1"><br>
		<div class="col-sm-12">

					<button type="button" class="btn  btn-block">Qualification</button>
				</div>
			</div>
			
			<div class="row" style="background-color:#EAECED"><br>
		<div class="col-sm-12">
					<button type="button" class="btn btn-block">Service Details</button>
				</div>
			</div>
			
			
		<div class="row" style="background-color:#DEE0E1"><br>
		<div class="col-sm-12">

					<button type="button" class="btn-success btn-block">Academic Deatails</button>
				</div>
			</div>
			<div class="row" style="background-color:#EAECED"><br>
		<div class="col-sm-12">
					<button type="button" class="btn  btn-block">Achivements</button>
				</div>
			</div>
			<div class="row" style="background-color:#DEE0E1"><br>
		<div class="col-sm-12">

					<button type="button" class="btn  btn-block">R&D </button>
				</div>
			</div>
			
		<div class="row" style="background-color:#EAECED"><br>
		<div class="col-sm-12">
					<button type="button" class="btn  btn-block">Responsibility</button>
				</div>
			</div>
		<div class="row" style="background-color:#DEE0E1"><br>
		<div class="col-sm-12">

					<button type="button" class="btn  btn-block">Any Contribution</button>
				</div>
			</div>
</div>
			

</body>
<jsp:include page="/jsp/footer1.jsp"></jsp:include>
</html>