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

</style>
</head>
<body class="main_body">



	<div class="container-fluid"><br><br><br><br><br><br><br><br>   
    <div class="row">
        <div class="col-sm-3">           
        </div>
        <div class="col-sm-6">
            <div class="row">
                <div class="col-sm-12">      
                             
                        
                            <div class="row">
                            <div class="col-sm-2">
                            </div>
                            <div class="col-sm-8">
                                <form name="loginForm" action="authenticate" method="post" >
                                
                                                                
                                <div class="row">             
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            
                                          <input type="text" placeholder="Username or Email Address " id="username" name = "username" class="form-control" >
                                        </div>                                        
                                        <br>                                     
                                    </div>
                                                 
                                </div>                   
                             
                             
                                <div class="row">             
                                    
                                 
                                    <div class="col-sm-12">
                                        <div class="form-group">                                   
                                          <input type="password" placeholder="Password" name = "password" required class="form-control"  id="password" />
                                        </div>                                       
                                    </div>                   
                                </div>
                               
                                <div class="row"><br>
                                     <div class="col-sm-12 ">
                                        <button  type="Submit" class=" btn btn-login btn-block "  value="Submit" id="login_id"><span class="buttontext">Login</span></button>                                       
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