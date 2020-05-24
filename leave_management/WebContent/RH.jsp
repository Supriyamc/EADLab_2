<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head >
  <title>Ristrcticted Leave</title>
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
	<script src="rh_count.js"></script>

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

  
 div.a {
  font-size: 14px;
  font-family: Arial;
}

 div.b {
  font-size: 12px;
  font-family: Arial;
}

  
  </style>
  
  <script type="text/javascript">

var leavesRemain = 2
var optionSelected = -1

function restrictedHoliday(){
  if(leavesRemain == 0){
      document.getElementsByName('msg')[0].innerText = "No leaves left";
      return;
    }else{
      var select = document.getElementById("rhList");
      var option = select.options[select.selectedIndex];
      if(optionSelected==option){  		//cannot apply leave twice for the same day selected previously
	document.getElementsByName('msg')[0].innerText = "Holiday already taken for this day.";
      }else{					//select any restricted holiday from the list
	optionSelected=option;
      
	leavesRemain=leavesRemain-1;
	var inputF = document.getElementById("total_leave_appl");
	var inputF = leavesRemain;
	//alert(inputF);
	document.getElementById("total_leave_appl").value = 1;
	document.getElementsByName('msg')[0].innerText = "Leave Approved.";
      }
    document.getElementsByName('days')[0].innerText = "You have " + leavesRemain + " leave left";
   } 

}
/*
Note - 
- You can select any 2 restricted holidays from the list.
- You can select any 1 restricted holiday at a time.
- You cannot apply leave twice for the same day selected previously
*/
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
      <div class="div.a" >
      <div class="col-sm-12" style="padding-top: +15px">
         <h1> Leave Management System</h1>
      </div>
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
<div class ="div.b">
<div class="container">
  <h2 style="margin-top: 65px">Ristricted Leave</h2>
  <hr>
  

    <div class="form-group">
      <label for="usr"> Total Number of RH:</label>
      <input type="number" id="total_leave" class="form-control"  style="width:300px;"  value ="2" readonly>
    </div>
    <div class="form-group">
      <label for="pwd">Availed RH:</label>
      <input type="number" id="availed_leave" class="form-control" style="width:300px;"  value="0" readonly>
    </div>
    <div class="form-group">
      <label for="usr"> Number of days:</label>
      <input type="number" class="form-control"  style="width:300px;" id="usr">
    </div>

   <div class='container'>
    <p>Choose the day from the drop down list of restricted holidays- </p>
    <select name="RH" id="rhList">
    <option value="1">1. Lohri: January 13, 2020</option>
    <option value="2">2. Holi: March 9,2020 </option>
    <option value="3">3. Rama Navami: April 2,2020</option>
    <option value="4">4. Vishu: April 14, 2020</option>
    <option value="5">5. Jamat-Ul-Vida: May 21, 2020</option>
    <option value="6">6. Raksha Bandhan: August 3,2020</option>
    <option value="7">7. Krishna Janmashtami: August 11,2020 </option>
    <option value="8">8. Gouri Pooja: August 21,2020</option>
    <option value="9">9. Saraswati Pooja: 21 October,2020</option>
    <option value="10">10. Christmas Eve: December 24,2020</option>
</select>
	<button onclick="restrictedHoliday()">Leave </button>
      <p name="msg"></p>
      <p name="days"></p>
  <input type="number" id="total_leave_appl" style="display:none">

  <br>
  
    <div class="form-group">
      <label for="usr"> Balance:</label>
      <input type="number" id="balance_leave" class="form-control"  style="width:300px;" value="2" readonly>
    </div>
    <div class="form-group">
		<button type="button" id="ristricted_leave"> Save</button>
    </div>


  </form>

</div>
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