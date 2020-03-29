<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="<%=request.getContextPath()%>/css/login_main.css"
         rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath()%>/css/activities.css"
         rel="stylesheet" type="text/css">
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script  src="<%=request.getContextPath()%>/js/activities.js"" type="text/javascript"> </script>
<title>Activities</title>

<jsp:include page="/jsp/header.jsp"></jsp:include>

</head>
<body class="">
	<form name="" action="activities" method="post">
	<div class="container-fluid"><br><br><br>
    
    <div class="row user_id_row" >
       	<div class="col-sm-1">
		 </div>           
        <div class="col-sm-2">
            <div class="form-group">                                            
                                                        
               <input type="text" id="user_name" name="user_name" value="<% out.println(session.getAttribute("user")); %>" class="form-control"  placeholder="Subject Code" >
            </div>                        
                                               
        </div>
        <div class="col-sm-2">
		 </div>
                   
    </div>
     <!--  <div class="row"><br>
       <div class="col-sm-4">
		 </div>	           
       <div class="col-sm-2">
           <div class="form-group">                                            
              <b>Add Activities</b>                                           
              
           </div>                        
                                              
       </div>
       <div class="col-sm-2">
	 </div>
                  
   </div>-->
   <div class="row ">
 	   <div id="">
 	   <div class="col-sm-3" >
 	   </div>
 	   <div class="col-sm-1 text-right">
    		<span class="labellogin">Exam</span>
        </div>
       <div class="col-sm-3" >
   			<select class="form-control" name="exam_type" id="exam_type">
                          
               	<option>Semester End Exam</option>
               	<option>Make Up Exam</option>
               	<option>Supplementary Exam</option>
               	
            </select>
       </div>
       <div class="col-sm-1 text-right">
    		<span class="labellogin">Course</span>
        </div>
       <div class="col-sm-3">
			<select class="form-control" name="course_type" id="course_type">
	                      
                	<option>Mtech</option>
                	<option>MCA</option>
                	<option>MBA</option>
                	
            </select>
       </div>
      </div>
      </div>
    <div class="row"><hr class="hr_color">
    	<div class="col-sm-1">
		 </div>
    	<div class="col-sm-2">
    		<div class="row">		    	
		        <div class="col-sm-10">
		    		<span class="labellogin">Question Paper Setting</span>
		        </div>
		        <div class="col-sm-2">
		    		<input class="text-right" type="checkbox" onclick="qn_ppr_chk()" >
		        </div>   
		    </div>
        </div>
        <div class="col-sm-9">
    		
    		
    		
    		<div class="row">		    	
		        <div id = "que_tab1">
			        <div class="col-sm-2" id="que_id1">
			    		<input type="text" id="subject_code1" name="subject_code1" class="form-control"  placeholder="Subject Code" >
			        </div>
			       
		        </div>
		        <div id="que_id2">
			        <div class="col-sm-2" >
			    		<input type="text" id="subject_code2" name="subject_code2" class="form-control"  placeholder="Subject Code" >
			        </div>
			        
		        </div>
		        <div id="que_id3">
			        <div class="col-sm-2" >
			    		<input type="text" id="subject_code3" name="subject_code3" class="form-control"  placeholder="Subject Code" >
			        </div>
			        
		        </div>
		        <div id="que_id4">
			        <div class="col-sm-2" >
			    		<input type="text" id="subject_code4" name="subject_code4" class="form-control"  placeholder="Subject Code" >
			        </div>
			        
		        </div>
		        <div id="que_id5">
			        <div class="col-sm-2" >
			    		<input type="text" id="subject_code5" name="subject_code5" class="form-control"  placeholder="Subject Code" >
			        </div>
			       
		        </div>
		        <div id="que_id6">
			        <div class="col-sm-2" >
			    		<input type="text" id="subject_code6" name="subject_code6" class="form-control"  placeholder="Subject Code" >
			        </div>
			       
		        </div>
		        
		        <div class="col-sm-2" id="button_id">                            	
               		<button type="button" class="btn btn-success btn-sm button_full" onclick="add_subject1()" id="add_textfields1" >add subject</button>
               		<button type="button" class="btn btn-success btn-sm button_full" onclick="add_subject2()" id="add_textfields2" >add subject</button>
               	
               	</div>
		        
		           
		    </div>
        </div>
           
    </div>
    
    <div class="row"><br>
    	<div class="col-sm-1">
		 </div>
    	<div class="col-sm-2">
    		<div class="row">
		    	
		        <div class="col-sm-10">
		    		<span class="labellogin">Scheme & Solution</span>
		        </div>
		        <div class="col-sm-2">
		    		<input class="text-right" type="checkbox" onclick="ss_tab_chk()" name="ss_tab1_chk">
		        </div>   
		    </div>
        </div>
        
        <div class="col-sm-9">
    		<div class="row">		    	
		        <div id="SS_tab1">
			        <div class="col-sm-2" id="que_id1">
			    		<input type="text" id="SS_subject_code1" name="SS_subject_code1" class="form-control"  placeholder="Subject Code" >
			        </div>
			        <div class="col-sm-2" id="que_id1">
			    		<select class="form-control" name="SS_exam_type1" id="SS_examtype1">
	                             
	                       	<option>--Exam Type--</option>
	                       	<option>Semester End Exam</option>
	                       	<option>Make Up Exam</option>
	                       	<option>Supplementary Exam</option>
	                       	
	                    </select>
			        </div>
		        </div>
		        <div id="SS_que_id2">
			        <div class="col-sm-2" >
			    		<input type="text" id="SS_subject_code2" name="SS_subject_code2" class="form-control"  placeholder="Subject Code" >
			        </div>
			        <div class="col-sm-2">
			    		<select class="form-control" name="SS_exam_type2" id="SS_exam_type2">
	                             
	                       	<option>--Exam Type--</option>
	                       	<option>Semester End Exam</option>
	                       	<option>Make Up Exam</option>
	                       	<option>Supplementary Exam</option>
	                       	
	                    </select>
			        </div>
		        </div>
		        <div id="SS_que_id3">
			        <div class="col-sm-2" >
			    		<input type="text" id="SS_subject_code3" name="SS_subject_code3" class="form-control"  placeholder="Subject Code" >
			        </div>
			        <div class="col-sm-2">
			    		<select class="form-control" name="SS_exam_type3" id="SS_exam_type3">
	                             
	                       	<option>--Exam Type--</option>
	                       	<option>Semester End Exam</option>
	                       	<option>Make Up Exam</option>
	                       	<option>Supplementary Exam</option>
	                       	
	                    </select>
			        </div>
		        </div>
		        <div id="SS_que_id4">
			        <div class="col-sm-2" >
			    		<input type="text" id="SS_subject_code4" name="SS_subject_code4" class="form-control"  placeholder="Subject Code" >
			        </div>
			        <div class="col-sm-2">
			    		<select class="form-control" name="SS_exam_type4" id="SS_exam_type4">
	                             
	                       	<option>--Exam Type--</option>
	                       	<option>Semester End Exam</option>
	                       	<option>Make Up Exam</option>
	                       	<option>Supplementary Exam</option>
	                       	
	                    </select>
			        </div>
		        </div>
		        <div id="SS_que_id5">
			        <div class="col-sm-2" >
			    		<input type="text" id="SS_subject_code5" name="SS_subject_code5" class="form-control"  placeholder="Subject Code" >
			        </div>
			        <div class="col-sm-2">
			    		<select class="form-control" name="SS_exam_type5" id="SS_exam_type5">
	                             
	                       	<option>--Exam Type--</option>
	                       	<option>Semester End Exam</option>
	                       	<option>Make Up Exam</option>
	                       	<option>Supplementary Exam</option>
	                       	
	                    </select>
			        </div>
		        </div>
		        <div id="SS_que_id6">
			        <div class="col-sm-2" >
			    		<input type="text" id="SS_subject_code6" name="SS_subject_code6" class="form-control"  placeholder="Subject Code" >
			        </div>
			        <div class="col-sm-2">
			    		<select class="form-control" name="SS_exam_type6" id="SS_exam_type6">
	                             
	                       	<option>--Exam Type--</option>
	                       	<option>Semester End Exam</option>
	                       	<option>Make Up Exam</option>
	                       	<option>Supplementary Exam</option>
	                       	
	                    </select>
			        </div>
		        </div>
		        
		        <div class="col-sm-2" id="button_id">                            	
               		<button type="button" class="btn btn-success btn-sm button_full" onclick="SS_add_subject1()" id="SS_add_textfields1" >add subject</button>
               		<button type="button" class="btn btn-success btn-sm button_full" onclick="SS_add_subject2()" id="SS_add_textfields2" >add subject</button>
               	
               	</div>
		        
		           
		    </div>
        </div>
           
    </div>
    
    <div class="row"><br>
    	<div class="col-sm-1">
		 </div>
    	<div class="col-sm-2">
    		<div class="row">
		    	
		        <div class="col-sm-10">
		    		<span class="labellogin">Valuation & Moderation</span>
		        </div>
		        <div class="col-sm-2">
		    		<input class="text-right" type="checkbox" onclick="vm_tab_chk()">
		        </div>   
		    </div>
        </div>
        
        <div class="col-sm-9">
    		<div class="row">		    	
		        <div id="VM_tab1">
			        <div class="col-sm-2" id="que_id1">
			    		<input type="text" id="VM_subject_code1" name="VM_subject_code1" class="form-control"  placeholder="Subject Code" >
			        </div>
			        <div class="col-sm-2" id="que_id1">
			    		<select class="form-control" name="VM_exam_type1" id="VM_exam_type1">
	                             
	                       	<option>--Exam Type--</option>
	                       	<option>Semester End Exam</option>
	                       	<option>Make Up Exam</option>
	                       	<option>Supplementary Exam</option>
	                       	
	                    </select>
			        </div>
		        </div>
		        <div id="VM_que_id2">
			        <div class="col-sm-2" >
			    		<input type="text" id="VM_subject_code2" name="VM_subject_code2" class="form-control"  placeholder="Subject Code" >
			        </div>
			        <div class="col-sm-2">
			    		<select class="form-control" name="VM_exam_type2" id="VM_exam_type2">
	                             
	                       	<option>--Exam Type--</option>
	                       	<option>Semester End Exam</option>
	                       	<option>Make Up Exam</option>
	                       	<option>Supplementary Exam</option>
	                       	
	                    </select>
			        </div>
		        </div>
		        <div id="VM_que_id3">
			        <div class="col-sm-2" >
			    		<input type="text" id="VM_subject_code3" name="VM_subject_code3" class="form-control"  placeholder="Subject Code" >
			        </div>
			        <div class="col-sm-2">
			    		<select class="form-control" name="VM_exam_type3" id="VM_exam_type3">
	                             
	                       	<option>--Exam Type--</option>
	                       	<option>Semester End Exam</option>
	                       	<option>Make Up Exam</option>
	                       	<option>Supplementary Exam</option>
	                       	
	                    </select>
			        </div>
		        </div>
		        <div id="VM_que_id4">
			        <div class="col-sm-2" >
			    		<input type="text" id="VM_subject_code4" name="VM_subject_code4" class="form-control"  placeholder="Subject Code" >
			        </div>
			        <div class="col-sm-2">
			    		<select class="form-control" name="VM_exam_type4" id="VM_exam_type4">
	                             
	                       	<option>--Exam Type--</option>
	                       	<option>Semester End Exam</option>
	                       	<option>Make Up Exam</option>
	                       	<option>Supplementary Exam</option>
	                       	
	                    </select>
			        </div>
		        </div>
		        <div id="VM_que_id5">
			        <div class="col-sm-2" >
			    		<input type="text" id="VM_subject_code5" name="VM_subject_code5" class="form-control"  placeholder="Subject Code" >
			        </div>
			        <div class="col-sm-2">
			    		<select class="form-control" name="VM_exam_type5" id="VM_exam_type5">
	                             
	                       	<option>--Exam Type--</option>
	                       	<option>Semester End Exam</option>
	                       	<option>Make Up Exam</option>
	                       	<option>Supplementary Exam</option>
	                       	
	                    </select>
			        </div>
		        </div>
		        <div id="VM_que_id6">
			        <div class="col-sm-2" >
			    		<input type="text" id="VM_subject_code6" name="VM_subject_code6" class="form-control"  placeholder="Subject Code" >
			        </div>
			        <div class="col-sm-2">
			    		<select class="form-control" name="VM_exam_type6" id="VM_exam_type6">
	                             
	                       	<option>--Exam Type--</option>
	                       	<option>Semester End Exam</option>
	                       	<option>Make Up Exam</option>
	                       	<option>Supplementary Exam</option>
	                       	
	                    </select>
			        </div>
		        </div>
		        
		        <div class="col-sm-2" id="button_id">                            	
               		<button type="button" class="btn btn-success btn-sm button_full" onclick="VM_add_subject1()" id="VM_add_textfields1" >add subject</button>
               		<button type="button" class="btn btn-success btn-sm button_full" onclick="VM_add_subject2()" id="VM_add_textfields2" >add subject</button>
               	
               	</div>
		        
		           
		    </div>
        </div>
           
    </div>
    
    <div class="row"><br>
    	<div class="col-sm-1">
		 </div>
    	<div class="col-sm-2">
    		<div class="row">
		    	
		        <div class="col-sm-10">
		    		<span class="labellogin">Grade Review </span>
		        </div>
		        <div class="col-sm-2">
		    		<input class="text-right" type="checkbox" onclick="gr_tab_chk()">
		        </div>   
		    </div>
        </div>
        
        <div class="col-sm-9">
    		<div class="row">		    	
		        <div id="GR_tab1">
		        <div class="col-sm-2" id="GR_id1">
		    		<input type="text" id="GR_subject_code1" name="GR_subject_code1" class="form-control"  placeholder="Subject Code" >
		        </div>
		        <div class="col-sm-2" id="GR_id1">
		    		<select class="form-control" name="GR_exam_type1" id="GR_exam_type1">
                             
                       	<option>--Exam Type--</option>
                       	<option>Semester End Exam</option>
                       	<option>Make Up Exam</option>
                       	<option>Supplementary Exam</option>
                       	
                    </select>
		        </div>
		        </div>
		        <div id="GR_que_id2">
			        <div class="col-sm-2" >
			    		<input type="text" id="GR_subject_code2" name="GR_subject_code2" class="form-control"  placeholder="Subject Code" >
			        </div>
			        <div class="col-sm-2">
			    		<select class="form-control" name="GR_exam_type2" id="GR_exam_type2">
	                             
	                       	<option>--Exam Type--</option>
	                       	<option>Semester End Exam</option>
	                       	<option>Make Up Exam</option>
	                       	<option>Supplementary Exam</option>
	                       	
	                    </select>
			        </div>
		        </div>
		        <div id="GR_que_id3">
			        <div class="col-sm-2" >
			    		<input type="text" id="GR_subject_code3" name="GR_subject_code3" class="form-control"  placeholder="Subject Code" >
			        </div>
			        <div class="col-sm-2">
			    		<select class="form-control" name="GR_exam_type3" id="GR_exam_type3">
	                             
	                       	<option>--Exam Type--</option>
	                       	<option>Semester End Exam</option>
	                       	<option>Make Up Exam</option>
	                       	<option>Supplementary Exam</option>
	                       	
	                    </select>
			        </div>
		        </div>
		        <div id="GR_que_id4">
			        <div class="col-sm-2" >
			    		<input type="text" id="GR_subject_code4" name="GR_subject_code4" class="form-control"  placeholder="Subject Code" >
			        </div>
			        <div class="col-sm-2">
			    		<select class="form-control" name="GR_exam_type4" id="GR_exam_type4">
	                             
	                       	<option>--Exam Type--</option>
	                       	<option>Semester End Exam</option>
	                       	<option>Make Up Exam</option>
	                       	<option>Supplementary Exam</option>
	                       	
	                    </select>
			        </div>
		        </div>
		        <div id="GR_que_id5">
			        <div class="col-sm-2" >
			    		<input type="text" id="GR_subject_code5" name="GR_subject_code5" class="form-control"  placeholder="Subject Code" >
			        </div>
			        <div class="col-sm-2">
			    		<select class="form-control" name="GR_exam_type5" id="GR_exam_type5">
	                             
	                       	<option>--Exam Type--</option>
	                       	<option>Semester End Exam</option>
	                       	<option>Make Up Exam</option>
	                       	<option>Supplementary Exam</option>
	                       	
	                    </select>
			        </div>
		        </div>
		        <div id="GR_que_id6">
			        <div class="col-sm-2" >
			    		<input type="text" id="GR_subject_code6" name="GR_subject_code6" class="form-control"  placeholder="Subject Code" >
			        </div>
			        <div class="col-sm-2">
			    		<select class="form-control" name="GR_exam_type6" id="GR_exam_type6">
	                             
	                       	<option>--Exam Type--</option>
	                       	<option>Semester End Exam</option>
	                       	<option>Make Up Exam</option>
	                       	<option>Supplementary Exam</option>
	                       	
	                    </select>
			        </div>
		        </div>
		        
		        <div class="col-sm-2" id="button_id">                            	
               		<button type="button" class="btn btn-success btn-sm button_full" onclick="GR_add_subject1()" id="GR_add_textfields1" >add subject</button>
               		<button type="button" class="btn btn-success btn-sm button_full" onclick="GR_add_subject2()" id="GR_add_textfields2" >add subject</button>
               	
               	</div>
		        
		           
		    </div>
        </div>
           
    </div>
    
    <div class="row"><br>
    	<div class="col-sm-1">
		 </div>
    	<div class="col-sm-2">
    		<div class="row">
		    	
		        <div class="col-sm-10">
		    		<span class="labellogin">Project Examinations</span>
		        </div>
		        <div class="col-sm-2">
		    		<input class="text-right" type="checkbox" onclick="pe_tab_chk()">
		        </div>   
		    </div>
        </div>
        
        <div class="col-sm-9">
    		<div class="row">		    	
		        <div id="PE_tab1">
			        <div class="col-sm-2" id="que_id1">
			    		<input type="text" id="PE_subject_code1" name="PE_subject_code1" class="form-control"  placeholder="Subject Code" >
			        </div>
			        <div class="col-sm-2" id="que_id1">
			    		<select class="form-control" name="PE_exam_type1" id="PE_exam_type1">
	                             
	                       	<option>--Exam type--</option>
	                       	<option>Semester End Exam</option>
	                       	<option>Make Up Exam</option>
	                       	<option>Supplementary Exam</option>
	                       	
	                    </select>
			        </div>
		        </div>
		        <div id="PE_que_id2">
			        <div class="col-sm-2" >
			    		<input type="text" id="PE_subject_code2" name="PE_subject_code2" class="form-control"  placeholder="Subject Code" >
			        </div>
			        <div class="col-sm-2">
			    		<select class="form-control" name="PE_exam_type2" id="PE_exam_type2">
	                             
	                       	<option>--Exam type--</option>
	                       	<option>Semester End Exam</option>
	                       	<option>Make Up Exam</option>
	                       	<option>Supplementary Exam</option>
	                       	
	                    </select>
			        </div>
		        </div>
		        <div id="PE_que_id3">
			        <div class="col-sm-2" >
			    		<input type="text" id="PE_subject_code3" name="PE_subject_code3" class="form-control"  placeholder="Subject Code" >
			        </div>
			        <div class="col-sm-2">
			    		<select class="form-control" name="PE_exam_type3" id="PE_exam_type3">
	                             
	                       	<option>--Exam type--</option>
	                       	<option>Semester End Exam</option>
	                       	<option>Make Up Exam</option>
	                       	<option>Supplementary Exam</option>
	                       	
	                    </select>
			        </div>
		        </div>
		        <div id="PE_que_id4">
			        <div class="col-sm-2" >
			    		<input type="text" id="PE_subject_code4" name="PE_subject_code4" class="form-control"  placeholder="Subject Code" >
			        </div>
			        <div class="col-sm-2">
			    		<select class="form-control" name="PE_exam_type4" id="PE_exam_type4">
	                             
	                       	<option>--Exam type--</option>
	                       	<option>Semester End Exam</option>
	                       	<option>Make Up Exam</option>
	                       	<option>Supplementary Exam</option>
	                       	
	                    </select>
			        </div>
		        </div>
		        <div id="PE_que_id5">
			        <div class="col-sm-2" >
			    		<input type="text" id="PE_subject_code5" name="PE_subject_code5" class="form-control"  placeholder="Subject Code" >
			        </div>
			        <div class="col-sm-2">
			    		<select class="form-control" name="PE_exam_type5" id="PE_exam_type5">
	                             
	                       	<option>--Exam type--</option>
	                       	<option>Semester End Exam</option>
	                       	<option>Make Up Exam</option>
	                       	<option>Supplementary Exam</option>
	                       	
	                    </select>
			        </div>
		        </div>
		        <div id="PE_que_id6">
			        <div class="col-sm-2" >
			    		<input type="text" id="PE_subject_code6" name="PE_subject_code6" class="form-control"  placeholder="Subject Code" >
			        </div>
			        <div class="col-sm-2">
			    		<select class="form-control" name="PE_exam_type6" id="PE_exam_type6">
	                             
	                       	<option>--Exam type--</option>
	                       	<option>Semester End Exam</option>
	                       	<option>Make Up Exam</option>
	                       	<option>Supplementary Exam</option>
	                       	
	                    </select>
			        </div>
		        </div>
		        
		        <div class="col-sm-2" id="button_id">                            	
               		<button type="button" class="btn btn-success btn-sm button_full" onclick="PE_add_subject1()" id="PE_add_textfields1" >add subject</button>
               		<button type="button" class="btn btn-success btn-sm button_full" onclick="PE_add_subject2()" id="PE_add_textfields2" >add subject</button>
               	
               	</div>
		        
		           
		    </div>
        </div>
           
    </div>
    
    <div class="row"><br>
    	<div class="col-sm-1">
		 </div>
    	<div class="col-sm-2">
    		<div class="row">
		    	
		        <div class="col-sm-10">
		    		<span class="labellogin">BOS</span>
		        </div>
		        <div class="col-sm-2">
		    		<input class="text-right" type="checkbox" onclick="bs_tab_chk()">
		        </div>   
		    </div>
        </div>
        
        <div class="col-sm-9">
    		<div class="row">		    	
		        <div id="BS_tab1">
			        <div class="col-sm-2" id="que_id1">
			    		<input type="text" id="BS_subject_code1" name="BS_subject_code1" class="form-control"  placeholder="Subject Code" >
			        </div>
			        <div class="col-sm-2" id="que_id1">
			    		<select class="form-control" name="BS_exam_type1" id="BS_exam_type1">
	                             
	                       	<option>--Exam type--</option>
	                       	<option>Semester End Exam</option>
	                       	<option>Make Up Exam</option>
	                       	<option>Supplementary Exam</option>
	                       	
	                    </select>
			        </div>
		        </div>
		        <div id="BS_que_id2">
			        <div class="col-sm-2" >
			    		<input type="text" id="BS_subject_code2" name="BS_subject_code2" class="form-control"  placeholder="Subject Code" >
			        </div>
			        <div class="col-sm-2">
			    		<select class="form-control" name="BS_exam_type2" id="BS_exam_type2">
	                             
	                       	<option>--Exam type--</option>
	                       	<option>Semester End Exam</option>
	                       	<option>Make Up Exam</option>
	                       	<option>Supplementary Exam</option>
	                       	
	                    </select>
			        </div>
		        </div>
		        <div id="BS_que_id3">
			        <div class="col-sm-2" >
			    		<input type="text" id="BS_subject_code3" name="BS_subject_code3" class="form-control"  placeholder="Subject Code" >
			        </div>
			        <div class="col-sm-2">
			    		<select class="form-control" name="BS_exam_type3" id="BS_exam_type3">
	                             
	                       	<option>--Exam type--</option>
	                       	<option>Semester End Exam</option>
	                       	<option>Make Up Exam</option>
	                       	<option>Supplementary Exam</option>
	                       	
	                    </select>
			        </div>
		        </div>
		        <div id="BS_que_id4">
			        <div class="col-sm-2" >
			    		<input type="text" id="BS_subject_code4" name="BS_subject_code4" class="form-control"  placeholder="Subject Code" >
			        </div>
			        <div class="col-sm-2">
			    		<select class="form-control" name="BS_exam_type4" id="BS_exam_type4">
	                             
	                       	<option>--Exam type--</option>
	                       	<option>Semester End Exam</option>
	                       	<option>Make Up Exam</option>
	                       	<option>Supplementary Exam</option>
	                       	
	                    </select>
			        </div>
		        </div>
		        <div id="BS_que_id5">
			        <div class="col-sm-2" >
			    		<input type="text" id="BS_subject_code5" name="BS_subject_code5" class="form-control"  placeholder="Subject Code" >
			        </div>
			        <div class="col-sm-2">
			    		<select class="form-control" name="BS_exam_type5" id="BS_exam_type5">
	                             
	                       	<option>--Exam type--</option>
	                       	<option>Semester End Exam</option>
	                       	<option>Make Up Exam</option>
	                       	<option>Supplementary Exam</option>
	                       	
	                    </select>
			        </div>
		        </div>
		        <div id="BS_que_id6">
			        <div class="col-sm-2" >
			    		<input type="text" id="BS_subject_code6" name="BS_subject_code6" class="form-control"  placeholder="Subject Code" >
			        </div>
			        <div class="col-sm-2">
			    		<select class="form-control" name="BS_exam_type6" id="BS_exam_type6">
	                             
	                       	<option>--Exam type--</option>
	                       	<option>Semester End Exam</option>
	                       	<option>Make Up Exam</option>
	                       	<option>Supplementary Exam</option>
	                       	
	                    </select>
			        </div>
		        </div>
		        
		        <div class="col-sm-2" id="button_id">                            	
               		<button type="button" class="btn btn-success btn-sm button_full" onclick="BS_add_subject1()" id="BS_add_textfields1" >add subject</button>
               		<button type="button" class="btn btn-success btn-sm button_full" onclick="BS_add_subject2()" id="BS_add_textfields2" >add subject</button>
               	
               	</div>
		        
		           
		    </div>
        </div>
           
    </div>
    
    <div class="row"><br>
    	<div class="col-sm-1">
		 </div>
    	<div class="col-sm-2">
    		<div class="row">
		    	
		        <div class="col-sm-10">
		    		<span class="labellogin">BOE</span>
		        </div>
		        <div class="col-sm-2">
		    		<input class="text-right" type="checkbox" onclick="be_tab_chk()">
		        </div>   
		    </div>
        </div>
        
        <div class="col-sm-9">
    		<div class="row">		    	
		        <div id="BE_tab1">
			        <div class="col-sm-2" id="que_id1">
			    		<input type="text" id="BE_subject_code1" name="BE_subject_code1" class="form-control"  placeholder="Subject Code" >
			        </div>
			        <div class="col-sm-2" id="que_id1">
			    		<select class="form-control" name="BE_exam_type1" id="BE_exam_type1">
	                             
	                       	<option>--Exam type--</option>
	                       	<option>Semester End Exam</option>
	                       	<option>Make Up Exam</option>
	                       	<option>Supplementary Exam</option>
	                       	
	                    </select>
			        </div>
		        </div>
		        <div id="BE_que_id2">
			        <div class="col-sm-2" >
			    		<input type="text" id="BE_subject_code2" name="BE_subject_code2" class="form-control"  placeholder="Subject Code" >
			        </div>
			        <div class="col-sm-2">
			    		<select class="form-control" name="BE_exam_type2" id="BE_exam_type2">
	                             
	                       	<option>--Exam type--</option>
	                       	<option>Semester End Exam</option>
	                       	<option>Make Up Exam</option>
	                       	<option>Supplementary Exam</option>
	                       	
	                    </select>
			        </div>
		        </div>
		        <div id="BE_que_id3">
			        <div class="col-sm-2" >
			    		<input type="text" id="BE_subject_code3" name="BE_subject_code3" class="form-control"  placeholder="Subject Code" >
			        </div>
			        <div class="col-sm-2">
			    		<select class="form-control" name="BE_exam_type3" id="BE_exam_type3">
	                             
	                       	<option>--Exam type--</option>
	                       	<option>Semester End Exam</option>
	                       	<option>Make Up Exam</option>
	                       	<option>Supplementary Exam</option>
	                       	
	                    </select>
			        </div>
		        </div>
		        <div id="BE_que_id4">
			        <div class="col-sm-2" >
			    		<input type="text" id="BE_subject_code4" name="BE_subject_code4" class="form-control"  placeholder="Subject Code" >
			        </div>
			        <div class="col-sm-2">
			    		<select class="form-control" name="BE_exam_type4" id="BE_exam_type4">
	                             
	                       	<option>--Exam type--</option>
	                       	<option>Semester End Exam</option>
	                       	<option>Make Up Exam</option>
	                       	<option>Supplementary Exam</option>
	                       	
	                    </select>
			        </div>
		        </div>
		        <div id="BE_que_id5">
			        <div class="col-sm-2" >
			    		<input type="text" id="BE_subject_code5" name="BE_subject_code5" class="form-control"  placeholder="Subject Code" >
			        </div>
			        <div class="col-sm-2">
			    		<select class="form-control" name="BE_exam_type5" id="BE_exam_type5">
	                             
	                       	<option>--Exam type--</option>
	                       	<option>Semester End Exam</option>
	                       	<option>Make Up Exam</option>
	                       	<option>Supplementary Exam</option>
	                       	
	                    </select>
			        </div>
		        </div>
		        <div id="BE_que_id6">
			        <div class="col-sm-2" >
			    		<input type="text" id="BE_subject_code6" name="BE_subject_code6" class="form-control"  placeholder="Subject Code" >
			        </div>
			        <div class="col-sm-2">
			    		<select class="form-control" name="BE_exam_type6" id="BE_exam_type6">
	                             
	                       	<option>--Exam type--</option>
	                       	<option>Semester End Exam</option>
	                       	<option>Make Up Exam</option>
	                       	<option>Supplementary Exam</option>
	                       	
	                    </select>
			        </div>
		        </div>
		        
		        <div class="col-sm-2" id="button_id">                            	
               		<button type="button" class="btn btn-success btn-sm button_full" onclick="BE_add_subject1()" id="BE_add_textfields1" >add subject</button>
               		<button type="button" class="btn btn-success btn-sm button_full" onclick="BE_add_subject2()" id="BE_add_textfields2" >add subject</button>
               	
               	</div>
		        
		           
		    </div>
        </div>
           
    </div>
    
    
    <div class="row"><br>
    	<div class="col-sm-1">
		 </div>
    	<div class="col-sm-2">
    		<div class="row">
		    	
		        <div class="col-sm-10">
		    		<span class="labellogin">Squad Duty</span>
		        </div>
		        <div class="col-sm-2">
		    		<input class="text-right" type="checkbox" onclick="sd_tab_chk()">
		        </div>   
		    </div>
        </div>
        
        <div class="col-sm-9">
    		<div class="row">		    	
		        <div id="SD_tab1">
			        <div class="col-sm-2" id="que_id1">
			    		<input type="text" id="SD_subject_code1" name="SD_subject_code1" class="form-control"  placeholder="Subject Code" >
			        </div>
			        <div class="col-sm-2" id="que_id1">
			    		<select class="form-control" name="SD_exam_type1" id="SD_exam_type1">
	                             
	                       	<option>--Exam type--</option>
	                       	<option>Semester End Exam</option>
	                       	<option>Make Up Exam</option>
	                       	<option>Supplementary Exam</option>
	                       	
	                    </select>
			        </div>
		        </div>
		        <div id="SD_que_id2">
			        <div class="col-sm-2" >
			    		<input type="text" id="SD_subject_code2" name="SD_subject_code2" class="form-control"  placeholder="Subject Code" >
			        </div>
			        <div class="col-sm-2">
			    		<select class="form-control" name="SD_exam_type2" id="SD_exam_type2">
	                             
	                       	<option>--Exam type--</option>
	                       	<option>Semester End Exam</option>
	                       	<option>Make Up Exam</option>
	                       	<option>Supplementary Exam</option>
	                       	
	                    </select>
			        </div>
		        </div>
		        <div id="SD_que_id3">
			        <div class="col-sm-2" >
			    		<input type="text" id="SD_subject_code3" name="SD_subject_code3" class="form-control"  placeholder="Subject Code" >
			        </div>
			        <div class="col-sm-2">
			    		<select class="form-control" name="SD_exam_type3" id="SD_exam_type3">
	                             
	                       	<option>--Exam type--</option>
	                       	<option>Semester End Exam</option>
	                       	<option>Make Up Exam</option>
	                       	<option>Supplementary Exam</option>
	                       	
	                    </select>
			        </div>
		        </div>
		        <div id="SD_que_id4">
			        <div class="col-sm-2" >
			    		<input type="text" id="SD_subject_code4" name="SD_subject_code4" class="form-control"  placeholder="Subject Code" >
			        </div>
			        <div class="col-sm-2">
			    		<select class="form-control" name="SD_exam_type4" id="SD_exam_type4">
	                             
	                       	<option>--Exam type--</option>
	                       	<option>Semester End Exam</option>
	                       	<option>Make Up Exam</option>
	                       	<option>Supplementary Exam</option>
	                       	
	                    </select>
			        </div>
		        </div>
		        <div id="SD_que_id5">
			        <div class="col-sm-2" >
			    		<input type="text" id="SD_subject_code5" name="SD_subject_code5" class="form-control"  placeholder="Subject Code" >
			        </div>
			        <div class="col-sm-2">
			    		<select class="form-control" name="SD_exam_type5" id="SD_exam_type5">
	                             
	                       	<option>--Exam type--</option>
	                       	<option>Semester End Exam</option>
	                       	<option>Make Up Exam</option>
	                       	<option>Supplementary Exam</option>
	                       	
	                    </select>
			        </div>
		        </div>
		        <div id="SD_que_id6">
			        <div class="col-sm-2" >
			    		<input type="text" id="SD_subject_code6" name="SD_subject_code6" class="form-control"  placeholder="Subject Code" >
			        </div>
			        <div class="col-sm-2">
			    		<select class="form-control" name="SD_exam_type6" id="SD_exam_type6">
	                             
	                       	<option>--Exam type--</option>
	                       	<option>Semester End Exam</option>
	                       	<option>Make Up Exam</option>
	                       	<option>Supplementary Exam</option>
	                       	
	                    </select>
			        </div>
		        </div>
		        
		        <div class="col-sm-2" id="button_id">                            	
               		<button type="button" class="btn btn-success btn-sm button_full" onclick="SD_add_subject1()" id="SD_add_textfields1" >add subject</button>
               		<button type="button" class="btn btn-success btn-sm button_full" onclick="SD_add_subject2()" id="SD_add_textfields2" >add subject</button>
               	
               	</div>
		        
		           
		    </div>
        </div>
           
    </div>
    
    
    
    
    
    <div class="row"><hr class="hr_color">
    	<div class="col-sm-2">
		 </div>
    	<div class="col-sm-2">
    		
        </div>
        
        <div class="col-sm-8">
        
        	<div class="row">
		    	<div class="col-sm-2">
		    		<button type="button" class="btn btn-danger btn-sm button_full" onclick="cancel()" id="cancel_id" >Cancel</button>
		    		
		        </div>
		        <div class="col-sm-4">
		    	  <button type="submit" class="btn btn-primary btn-sm button_full"  id="save_id" data-toggle="modal" data-target="#myModal" onclick="saveData()">Save</button>
		    		
		    		<!-- <div class="modal" id="myModal" role="dialog">
					    <div class="modal-dialog">
					    
					      
					      <div class="modal-content">
					        <div class="modal-header">
					          <button type="button" class="close" data-dismiss="modal">&times;</button>
					          <h4 class="modal-title">Modal Header</h4>
					        </div>
					        <div class="modal-body">
					          <p>Some text in the modal.</p>
					        </div>
					        <div class="modal-footer">
					          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					        </div>
					      </div>
					      
					    </div>
					</div>-->
  
		        </div>   
		    </div>
    
    	</div>
   </div>
    
    
    <br><br><br><br><br>
   
</div>

</form>
</body><br /><br /><br />
<jsp:include page="/jsp/footer.jsp"></jsp:include>
</html>