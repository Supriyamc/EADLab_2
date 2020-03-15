<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="<%=request.getContextPath()%>/bootstrap/css/bootstrap.min.css"
         rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath()%>/css/header.css"
         rel="stylesheet" type="text/css">
<script type="text/javascript" src="<%=request.getContextPath()%>/bootstrap/js/bootstrap.min.js" > </script>

<title>Header</title>
</head>
<body style="background-image: linear-gradient(white);">
<div class="container-fluid">
	<div class="row" style="background-color:#201e3e">
		<div class="col-sm-12">
			<img src="msrit_logo.png" height= "78px" style="padding-top:10px"/>
		<div class="col-sm-12">
				

					<button type="button" class="btn-success  btn-block" float="right">Logout</button>
				</div>
		</div>
	</div>
	
</div>


</body>
</html>