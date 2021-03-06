<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>R & D</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="apple-touch-icon" href="images/favicon.png">
<link rel="shortcut icon" href="images/favicon.png">
<link rel="stylesheet" href="assets/css/normalize.css">
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/themify-icons.css">
<link rel="stylesheet" href="assets/css/pe-icon-7-filled.css">
<link rel="stylesheet" href="assets/css/flag-icon.min.css">
<link rel="stylesheet" href="assets/css/cs-skin-elastic.css">

<link rel="stylesheet" href="assets/css/style.css">
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

</head>
<body>
	<aside id="left-panel" class="left-panel">
		<nav class="navbar navbar-expand-sm navbar-default">
			<div id="main-menu" class="main-menu collapse navbar-collapse">
				<ul class="nav navbar-nav">
					
<li class="menu-item-has-children dropdown">
<a href="Faculty profile.html"  aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-table"></i>Faculty profile</a>

</li>
<li class="menu-item-has-children dropdown">
<a href="http://localhost:8085/Profile-Management/ProfessionalActivities_MainPage.jsp"  aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-table"></i>Professional Activities </a>

</li>
<li class="menu-item-has-children dropdown">
<a href="http://localhost:8085/Profile-Management/Qualification_MainPage.jsp"  aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-table"></i>Qualification</a>

</li>
<li class="menu-item-has-children dropdown">
<a href="http://localhost:8085/Profile-Management/ServiceDetail_MainPage.jsp"  aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-table"></i>Service Details</a>

</li>
<li class="menu-item-has-children dropdown">
<a href="http://localhost:8085/Profile-Management/Academic_MainPage.jsp"  aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-table"></i>Academic Details</a>

</li>
<li class="menu-item-has-children dropdown">
<a href="http://localhost:8085/Profile-Management/Acheivements_MainPage.jsp"  aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-table"></i>Achivements</a>

</li>
<li class="menu-item-has-children dropdown">
<a href="http://localhost:8085/Profile-Management/RD_MainPage.jsp"  aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-table"></i>R & D</a>

</li>
<li class="menu-item-has-children dropdown">
<a href="http://localhost:8085/Profile-Management/Responsibility_MainPage.jsp"  aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-table"></i>Responsibility</a>

</li>
<li class="menu-item-has-children dropdown">
<a href="http://localhost:8085/Profile-Management/Anycontribution.jsp"  aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-table"></i>Any Contribution</a>

</li>


					
				</ul>
			</div>
		</nav>
	</aside>

<div id="right-panel" class="right-panel">

	<header id="header" class="header">
		<div class="top-left">
		<div class="navbar-header">
		<a class="navbar-brand" href="index.html"><img src="images/logo.png" alt="Logo"></a>
		<a class="navbar-brand hidden" href="index.html"><img src="images/logo2.png" alt="Logo"></a>
		<a id="menuToggle" class="menutoggle"><i class="fa fa-bars"></i></a>
		</div>
		</div>
		
		<div class="top-right">
			<div class="header-menu">
				<div class="header-left">
					
							<a class="nav-link" href="#"><i class="fa fa-power-off"></i>Logout</a>
						</div>
					</div>
		</div>
	</header>
	<div class="breadcrumbs">
		<div class="breadcrumbs-inner">
			<div class="row m-0">
				<div class="col-sm-4">
					<div class="page-header float-left">
						<div class="page-title">
							<h1><strong>R & D</strong></h1>
						</div>
					</div>
				</div>
				<div class="col-sm-8">
					<div class="page-header float-right">
						<div class="page-title">
							<ol class="breadcrumb text-right">
								
								<li class="active"> <h4><center></center></h4></li>
							</ol>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="content">
		<div class="animated fadeIn">
			<div class="row">
				<div class="col-lg-12">
					<div class="card">
						
						<div class="card-header">
							<div class="card-title"><h4>Funded Projects</h4><br>information about projects funded
						</div>
						<div class="card-body">
							<table class="table">
								<thead class="thead-dark">
									<tr>
										<th scope="col">Role</th>
										<th scope="col">Project Title</th>
										<th scope="col">Funded Agency</th>
										<th scope="col">Scheme</th>
										<th scope="col">Sanctioned Order Number</th>
										<th scope="col">Project Duration</th>
										<th scope="col">Sanctioned Date</th>
										<th scope="col">Sanctioned Amount</th>
										<th scope="col">Status</th>
										
									</tr>									
		
								</thead>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
		<div class="col-xl-2"><a href="Funded_InsertPage.jsp"><button id="payment-button" type="button" class="btn btn-lg btn-info btn-block">
			<i class=""></i>&nbsp;
			<span id="payment-button-amount">INSERT</span>
			<span id="payment-button-sending" style="display:none;">Sending…</span></button></a>
		 </div>
	</div>
	
	
	<br><br><br><br><br><br>
	<div class="content">
		<div class="animated fadeIn">
			<div class="row">
				<div class="col-lg-12">
					<div class="card">
						
						<div class="card-header">
							<div class="card-title"><h4>Patents</h4><br>patents applied for and granted
						</div>
						<div class="card-body">
							<table class="table">
								<thead class="thead-dark">
									<tr>
										<th scope="col">Title</th>
										<th scope="col">Inventors</th>
										<th scope="col">Date to filling Application</th>
										<th scope="col">Date of publication</th>
										<th scope="col">Date Granted</th>
										<th scope="col">Patent Type</th>
									</tr>
								</thead>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
		<div class="col-xl-2"><a href="patents_insert.jsp"><button id="payment-button" type="button" class="btn btn-lg btn-info btn-block">
			<i class=""></i>&nbsp;
			<span id="payment-button-amount">INSERT</span>
			<span id="payment-button-sending" style="display:none;">Sending…</span></button></a>
		 </div>
	</div>
	

	
	
	
	<br><br><br><br><br><br>
	
	
	<div class="content">
		<div class="animated fadeIn">
			<div class="row">
				<div class="col-lg-12">
					<div class="card">
						
						<div class="card-header">
							<div class="card-title"><h4> Consultancy Details</h4><br> Consultancy for projects with organization
						</div>
						<div class="card-body">
							<table class="table">
								<thead class="thead-dark">
									<tr>
										<th scope="col">Role</th>
										<th scope="col">Project Title</th>
										<th scope="col">Type of Consultancy</th>
										<th scope="col">Organization</th>
										<th scope="col">Duration</th>
										<th scope="col">Sanctioned Date</th>
										<th scope="col">Sanctioned Amount</th>
										<th scope="col">Amount Received</th>
										<th scope="col">Year</th>
									</tr>									
		
								</thead>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
		<div class="col-xl-2"><a href="consultancy_details_insert.jsp"><button id="payment-button" type="button" class="btn btn-lg btn-info btn-block">
			<i class=""></i>&nbsp;
			<span id="payment-button-amount">INSERT</span>
			<span id="payment-button-sending" style="display:none;">Sending…</span></button></a>
		 </div>
	</div>
	
	
	
	

<div class="clearfix"></div>
</div>

<br>

<!-- Footer -->
<footer class="page-footer font-small blue">

  <!-- Copyright -->
  <div class="footer-copyright text-center py-3">© 2020 Copyright:
    <a href="#"> MSRIT</a>
  </div>
  <!-- Copyright -->

</footer>
<!-- Footer -->



<script src="assets/js/vendor/jquery-2.1.4.min.js" type="be41007fad70f509648fc254-text/javascript"></script>
<script src="assets/js/popper.min.js" type="be41007fad70f509648fc254-text/javascript"></script>
<script src="assets/js/plugins.js" type="be41007fad70f509648fc254-text/javascript"></script>
<script src="assets/js/main.js" type="be41007fad70f509648fc254-text/javascript"></script>

<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13" type="be41007fad70f509648fc254-text/javascript"></script>
<script type="be41007fad70f509648fc254-text/javascript">
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>
<script src="ajax.cloudflare.com/cdn-cgi/scripts/7089c43e/cloudflare-static/rocket-loader.min.js" data-cf-settings="be41007fad70f509648fc254-|49" defer=""></script></body>
</html>
