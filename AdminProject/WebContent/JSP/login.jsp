<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="/AdminProject/assets/css/bootstrap-united.css" rel="stylesheet" />

<style>
.error {
	color: #ff0000;
	font-size: 0.9em;
	font-weight: bold;
}

.errorblock {
	color: #000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}
</style>
<title>Student Enrollment Login</title>
</head>
<body>
	<script src="/AdminProject/jquery-1.8.3.js">
		
	</script>

	<script src="/AdminProject/bootstrap/js/bootstrap.js">
		
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
			<ul class="nav navbar-nav navbar-right">
				<li><a href="/AdminProject/index.jsp">Home</a></li>
				<li><a href="signup.jsp">Signup</a></li>
				<li class="active"><a href="login.jsp">Login</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">Explore<b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="#">Contact us</a></li>
						<li class="divider"></li>
						<li><a href="#">Further Actions</a></li>
					</ul></li>
			</ul>
		</div>
		<!-- /.nav-collapse -->
	</div>

	<div class="container">
		<div class="jumbotron">
			<div>
				<h1>Welcome to Online Faculty Enrollment Login</h1>
				<p>Login to explore the complete features!</p>
			</div>
		</div>

		<div></div>
	</div>

	<div class="col-lg-6 col-lg-offset-3">
		<div class="well">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<form id="myForm" method="post"
							class="bs-example form-horizontal" action="../StudentController">
							<fieldset>
								<legend>Faculty Enrollment Login Form</legend>
								
								<input type="hidden" name="pageName" value="login">

								<div class="form-group">
									<label for="userNameInput" class="col-lg-3 control-label">User
										Name</label>
									<div class="col-lg-9">
										<input type="text" class="form-control" name="userName"
											id="userNameInput" placeholder="User Name" />
									</div>
								</div>

								<div class="form-group">
									<label for="passwordInput" class="col-lg-3 control-label">Password</label>
									<div class="col-lg-9">
										<input type="password" class="form-control"
											name="password" id="passwordInput" placeholder="Password" />
									</div>
								</div>

								<div class="col-lg-9 col-lg-offset-3">
									<button class="btn btn-default">Cancel</button>

									<button class="btn btn-primary">Login</button>
								</div>

							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>