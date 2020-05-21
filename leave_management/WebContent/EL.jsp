<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head >
  <title>Earned Leave</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>


<!-- jQuery -->
        <script src="jquery-3.1.1.min.js" type='text/javascript'></script>

        <!-- Bootstrap -->
        <link href='bootstrap/css/bootstrap.min.css' rel='stylesheet' type='text/css'>
        <script src='bootstrap/js/bootstrap.min.js' type='text/javascript'></script>

        <!-- Datepicker -->
        <link href='bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css' rel='stylesheet' type='text/css'>
        <script src='bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js' type='text/javascript'></script>


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

  
  </style>
<script type="text/javascript">

  // from: date from html in string formate ("2020-04-08")
  // to: date from html in string formate ("2020-04-08")
  // assuming both fields are non empty
  // assuming levase remain variable as int and have value in range [0,15] that will be global

var levaseRemain = 10
function casualLeave(from,to){
  if(levaseRemain == 0){
      document.getElementsByName('msg')[0].innerText = "No leaves left";
      return;
    }

    fromDay = parseInt(from.split("-")[2]); // gets date as int
    fromMonth = parseInt(from.split("-")[1])-1;   // in date() month start from 0, so 0-11 is jan-dec
    fromYear = parseInt(from.split("-")[0]); // gets year as int

    toDay = parseInt(to.split("-")[2]); // gets date as int
    toMonth = parseInt(to.split("-")[1])-1;   // in date() month start from 0, so 0-11 is jan-dec
    toYear = parseInt(to.split("-")[0]); // get year as int


    var fromDate = new Date(fromYear, fromMonth, fromDay);
    var toDate = new Date(toYear, toMonth, toDay);
    
    console.log(fromDate);
    console.log(toDate);
    console.log(levaseRemain);



    if (fromDate > toDate){
      document.getElementsByName('msg')[0].innerText = "From date can not be greater than to Date";
    } else {
    
        dayDiff = parseInt((toDate - fromDate) / (1000 * 60 * 60 * 24), 10) + 1
        /*
        max 4 days + 2 weekend (because if it is 4 days window, there is possibility of only one weekend can come in between)
        */
        if(dayDiff > 6){
          document.getElementsByName('msg')[0].innerText = "Not apporved as it is more than 4 days";
        } else {
            /*
            for 4 days, if weekends come in between then following condition will be true 
            function getDay() returns the day of the week from sun 0 to sat 6
            so if from day is wed ie 3 and to day is next week monday ie 1 then fromDay > toDay so it crosses the whole weekend
            */
            if(fromDate.getDay() > toDate.getDay()){   
                dayDiff = dayDiff - 2
            } else {
              if(fromDate.getDay() > 5 || fromDate.getDay()<1){  // if from day is sat or sun
                dayDiff = dayDiff - 1
              }
              if(toDate.getDay() > 5 || toDate.getDay()<1){   // if to day is sat or sun
                dayDiff = dayDiff - 1
              }
            }
            if(dayDiff <= 0){     // if only weekend dates are selected in to and from
              document.getElementsByName('msg')[0].innerText = "No leaves";
            } else if(dayDiff <= 4 && levaseRemain - dayDiff >= 0){     // new day limit is less equal to 4
                document.getElementsByName('msg')[0].innerText = "leaves apporved for " + dayDiff + " days";
                levaseRemain = levaseRemain - dayDiff
            } else if(levaseRemain - dayDiff < 0){
              document.getElementsByName('msg')[0].innerText = "You dont have enough leaves";
            }else{
              document.getElementsByName('msg')[0].innerText = "Not apporved as it is more than 4 days";
            }
            document.getElementsByName('days')[0].innerText = "You have " + levaseRemain + " leaves left";
        }
    }
}

</script>
 


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
  <h2 style="margin-top: 65px">Earned Leave</h2>
  <hr>
  
  <form onSubmit="casualLeave">
    <div class="form-group">
      <label for="usr"> Total Number of EL:</label>
      <input type="Number" class="form-control"  style="width:300px;" id="usr">
    </div>
    <div class="form-group">
      <label for="pwd">Availed EL:</label>
      <input type="number" class="form-control" style="width:300px;" id="pwd">
    </div>
    <div class="form-group">
      <label for="usr"> Number of days:</label>
      <input type="Number" class="form-control"  style="width:300px;" id="usr">
    </div>

   <div class='container'>
     <label for="usr"> Apply leave from </label>
            <input type="date" class="form-control" name="fromdate" data-provide="datepicker" placeholder='Select Date' style='width: 200px;' > <br>
            <input type="date" class="form-control" name="todate" placeholder='Select Date' style='width: 200px;' >
        </div>
       <button onclick="casualLeave(document.getElementsByName('fromdate')[0].value,document.getElementsByName('todate')[0].value);">Leave </button>
 <p name="msg"></p>
  <p name="days"></p>
  <br>
    <div class="form-group">
      <label for="usr"> Balance:</label>
      <input type="Number" class="form-control"  style="width:300px;" id="usr">
    </div>

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

</html>
