<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Leave Management System</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <style>
  .img {
    height: 100px;
    width: 100px;
  }

  .paddin
  {
    padding-top: +25px;
    padding-bottom: +25px;
    background-color: #000080;
    color: #ffffff;
  }

  .
  </style>
</head>
<body style="background-color:  #C0C0C0">

<div class="paddin">
  <div class="container" >
    <div class="row">
      <div class="col-sm-2">
         <img src="ram1.png" alt=""> 
       </div>
       <div class="col-sm-2">
       
      </div>
      <div class="col-sm-8" style="padding-top: +15px">
         <h1> Leave Management System</h1>
      </div>
    </div>
  </div>
</div>

  

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <div class ="container">
    <div class="row">
      
        
      </div>
    </div>
  </div>
  <a class="navbar-brand"  href="#">Logout</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
 
</nav>

<div class="container">
  <h2 style="margin-top: 65px">Faculty details</h2>
  <hr>
  
  <form>
    <div class="form-group">
      <label for="usr"> Faculty Name:</label>
      <input type="text" class="form-control"  style="width:400px;" id="usr">
    </div>
    <div class="form-group">
      <label for="pwd">Faculty ID:</label>
      <input type="text" class="form-control" style="width:400px;" id="pwd">
    </div>
    <div class="form-group">
      <label for="usr"> Designation:</label>
      <input type="text" class="form-control"  style="width:400px;" id="usr">
    </div>

   <div class="form-group">
    <label for="usr"> Gender:</label>
    <br>
  <input type="radio" name="gender" value="male"> Male<br>
  <input type="radio" name="gender" value="female"> Female<br>
  

  <br>
    <div class="form-group">
      <label for="usr"> Email ID:</label>
      <input type="Email" class="form-control"  style="width:400px;" id="usr">
    </div>




    <div class ="container">
<div class="dropdown">
  <label for="usr"><b> Select the type of Leave: </b></label>
    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Types of Leaves
    <span class="caret"></span></button>
    <ul class="dropdown-menu"><center>
      <li><a href="CL.jsp"><b>Casual Leave </b></a></li>
      <li><a href="EL.jsp"><b>Earned Leave</b></a></li>
      <li><a href="RH.jsp"><b>Restricted Leave</b></a></li>
      <li><a href="ML.jsp"><b>Maternity Leave</b></a></li></center>
    </ul>
  </div>
</div>
</div>
<br>
<br>
<br>
<br>
  </form>

</div>

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

</body>
</html>