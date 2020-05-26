<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="<%=request.getContextPath()%>/bootstrap/css/bootstrap.min.css"
         rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath()%>/css/header.css"
         rel="stylesheet" type="text/css">
<script type="text/javascript" src="<%=request.getContextPath()%>/bootstrap/js/bootstrap.min.js" > </script>
<script type='text/javascript' src='http://code.jquery.com/jquery.min.js'></script>
<script  src="<%=request.getContextPath()%>/js/login.js"" type="text/javascript"> </script>
<link href="<%=request.getContextPath()%>/css/login_main.css"
         rel="stylesheet" type="text/css">
<title>Login</title>
<style>
	 input, select, textarea {
        background-color: #eee;
    opacity: 1;
    display: block;
    
    height: 34px;
    padding: 6px 12px;
    font-size: 12px;
    line-height: 1.42857143;
    color: #555;
    background-color: #fff;
    background-image: none;
    border: 1px solid #ccc;
    border-radius: 4px;
    -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
    box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
}
	 </style>
</head>
<body>
<div class="container-fluid" style="background-color:indigo"><br>
	<div id="logo-image" class="pull-left" >
					<a href="index.html"> <img src=" http://d2e9h3gjmozu47.cloudfront.net/brand.png" style="max-height:50px;">
					</a>
					</div>
					
					
					</div>

 <center><h2 class="text-center">Login Form</h2><br></center>
	<div class="container-fluid"><br>
    <div class="row ">
        <div class="col-sm-3">           
        </div>
        <div class="col-sm-6">
            <div class="row main_body"><br><br>
                <div class="col-sm-12">      
                             
                        
                            <div class="row">
                            <div class="col-sm-2">
                            </div>
                            <div class="col-sm-8">
                                <form name="loginForm" action="authenticate" method="post" >
                                
                                
                                
                                <div class="row">             
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            
                                    <center>      <input type="text" placeholder="Username or Email Address " id="username" name = "username" class="form-control" ></center>
                                        </div>                                        
                                        <br>                                     
                                    </div>
                                                 
                                </div>                   
                             
                             
                                <div class="row">             
                                    
                                 
                                    <div class="col-sm-12">
                                        <div class="form-group">                                   
                                    <center>       <input type="password" placeholder="Password" name = "password" required class="form-control"  id="password" /></center>
                                        </div>                                       
                                    </div>                   
                                </div>
                               
                                <div class="row"><br>
                                     <div class="col-sm-12 ">
                                 <center>        <button  type="Submit" class=" btn btn-block btn-primary"  value="Submit" id="login_id"><span class="buttontext">Login</span></button> </center>                                      
                                    </div>                                   
                                    
                                   
                                </div><br><br>                          
                               </form>
                               
							    
							   
                                <!-- <div class="row">
                                    <div class="col-sm-12 ">
                                         <a><center><span class="needassist">Forgot your password</span> </center> </a>                   
                                    </div>
                                </div>-->
   
                            </div>
                            <div class="col-sm-2">
                            </div>
                            </div>
                                   
                </div>
            </div>
        </div>
        <div class="col-sm-3">
           
        </div>
    </div>
   <br><br><br><br><br> <br><br>
</div>


</body><br /><br /><br />

</html>