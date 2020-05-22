	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ramaiah - Self-Appraisal System</title>
<jsp:include page="styling.jsp"></jsp:include>
</head>
<body>
<div class="container-fluid" style="background-color:indigo"><br>
	<div id="logo-image" class="pull-left" >
					<a href="index.html"> <img src=" http://d2e9h3gjmozu47.cloudfront.net/brand.png" style="max-height:50px;">
					</a>
					</div>
					
					
					</div>
					<h1 align="center" style=color:black>CONFIGURATION FOR SELF APPRAISAL</h1>
	<div class="container-fluid">
		<div class="container-fluid col-sm-2">&nbsp;</div>
		<div class="container-fluid col-sm-8">
			<form method="post" action="configuration" id="formAppraisal">
				

				<table class="table table-bordered">
					<!-- <caption>General Information</caption>
					 
					<tr>
						<td>Designation:</td>
						<td><select id="designation" name="designation">
								<option	value="Assistant Professor">Assistant Professor</option>
								<option value="Associate Professor">Associate Professor</option>
								<option value="Professor">Professor</option>
								<option value="Head">Professor and Head</option>
						</select>						
						</td>
					</tr>
					-->
					
				</table>
				<table class="table table-bordered">
					<caption>Scores</caption>
					<tbody>
						<tr>
							<td><strong>Sl. No.</strong></td>
							<td><strong>Scoring Category</strong></td>
							<td><strong>Number</strong></td>
						</tr>
						
						<tr>
							<td>1</td>
							<td>Assistant Teaching score</td>
							<td><input type="number" id="as_Teach"
								name="as_Teach" min="0" value="0" /></td>
							
						</tr>
						<tr>
							<td>2</td>
							<td>Assistant Research Score
							</td>
							<td><input type="number" id="as_Res"
								name="as_Res" min="0" value="0" /></td>
							
						</tr>
						<tr>
							<td>3</td>
							<td>Asisstant service score 
							</td>
							<td><input type="number" id="as_Ser"
								name="as_Ser" min="0" value="0" /></td>
							
						</tr>
<tr>
							<td>4</td>
							<td>Associate Teaching score</td>
							<td><input type="number" id="asso_Teach"
								name="asso_Teach" min="0" value="0" /></td>
							
						</tr>
						<tr>
							<td>5</td>
							<td>Associate Research Score
							</td>
							<td><input type="number" id="asso_Res"
								name="asso_Res" step="any" min="0" value="0" /></td>
							
						</tr>
						<tr>
							<td>6</td>
							<td>Associate service score 
							</td>
							<td><input type="number" id="asso_Ser"
								name="asso_Ser" min="0" value="0" /></td>
							
						</tr>
<tr>
							<td>7</td>
							<td>Professor Teaching score</td>
							<td><input type="number" id="pro_Teach"
								name="pro_Teach" min="0" value="0" /></td>
							
						</tr>
						<tr>
							<td>8</td>
							<td>Professor Research Score
							</td>
							<td><input type="number" id="pro_Res"
								name="pro_Res" min="0" value="0" /></td>
							
						</tr>
						<tr>
							<td>9</td>
							<td>Professor service score 
							</td>
							<td><input type="number" id="pro_Ser"
								name="pro_Ser" min="0" value="0" /></td>
							
						</tr>
<tr>
							<td>10</td>
							<td>Professorhead Teaching score</td>
							<td><input type="number" id="prohead_Teach"
								name="prohead_Teach" min="0" value="0" /></td>
							
						</tr>
						<tr>
							<td>11</td>
							<td>Professorhead Research Score
							</td>
							<td><input type="number" id="prohead_Res"
								name="prohead_Res" min="0" value="0" /></td>
							
						</tr>
						<tr>
							<td>12</td>
							<td>Professorhead service score 
							</td>
							<td><input type="number" id="prohead_Ser"
								name="prohead_Ser" min="0" value="0" /></td>
							
						</tr>
						
						<tr>
							<td>13</td>
							<td>fciscore1 
							</td>
							<td><input type="number" id="fci1"
								name="fci1" min="0" value="0" /></td>
							
						</tr>
						
						<tr>
							<td>14</td>
							<td>fciscore2 
							</td>
							<td><input type="number" id="fci2"
								name="fci2" step="any" min="0" value="0" /></td>
						</tr>
						
						<tr>
							<td>15</td>
							<td>fciscore3 
							</td>
							<td><input type="number" id="fci3"
								name="fci3" step="any" min="0" value="0" /></td>
							
						</tr>
						
						<tr>
							<td>16</td>
							<td>fciscore4 
							</td>
							<td><input type="number" id="fci4"
								name="fci4" step="any" min="0" value="0" /></td>	
						</tr>
						<tr>
							<td>17</td>
							<td>fciscore5 
							</td>
							<td><input type="number" id="fci5"
								name="fci5" step="any" min="0" value="0" /></td>	
						</tr>
						<!-- Strt frm here -->
						<tr>
							<td>18</td>
							<td>nirf1 
							</td>
							<td><input type="number" id="nirf1"
								name="nirf1" min="0" value="0" /></td>	
						</tr>
						<tr>
							<td>19</td>
							<td>index1 
							</td>
							<td><input type="number" id="index1"
								name="index1" min="0" value="0" /></td>	
						</tr>
						<tr>
							<td>20</td>
							<td>index2 
							</td>
							<td><input type="number" id="index2"
								name="index2" min="0" value="0" /></td>	
						</tr>
						<tr>
							<td>21</td>
							<td>index3 
							</td>
							<td><input type="number" id="index3"
								name="index3" min="0" value="0" /></td>	
						</tr>
						<tr>
							<td>22</td>
							<td>journal 
							</td>
							<td><input type="number" id="jou"
								name="jou" min="0" step="any" value="0" /></td>	
						</tr>
						
						<tr>
							<td>23</td>
							<td>book 
							</td>
							<td><input type="number" id="b1"
								name="b1" min="0" step="any" value="0" /></td>	
						</tr>
						<tr>
							<td>24</td>
							<td>bookchap 
							</td>
							<td><input type="number" id="b2"
								name="b2" min="0" step="any" value="0" /></td>	
						</tr>
						<tr>
							<td>25</td>
							<td>disclosure 
							</td>
							<td><input type="number" id="dis"
								name="dis" min="0" step="any" value="0" /></td>	
						</tr>
						
						<tr>
							<td>26</td>
							<td>patent 
							</td>
							<td><input type="number" id="pat"
								name="pat" min="0" step="any" value="0" /></td>	
						</tr>
						<tr>
							<td>27</td>
							<td>research UG 
							</td>
							<td><input type="number" id="rUG"
								name="rUG" step="any" min="0" value="0" /></td>	
						</tr>
						<tr>
							<td>28</td>
							<td>research PG
							</td>
							<td><input type="number" id="rPG"
								name="rPG" step="any" min="0" value="0" /></td>	
						</tr>
						
						<tr>
							<td>29</td>
							<td>research PHD 
							</td>
							<td><input type="number" id="rPHD"
								name="rPHD" step="any" min="0" value="0" /></td>	
						</tr>
						<tr>
							<td>30</td>
							<td>funded project 1
							</td>
							<td><input type="number" id="fp1"
								name="fp1" min="0" value="0" /></td>	
						</tr>
						<tr>
							<td>31</td>
							<td>funded project2 
							</td>
							<td><input type="number" id="fp2"
								name="fp2" min="0" step="any" value="0" /></td>	
						</tr>
						<tr>
							<td>32</td>
							<td>funded project 3 
							</td>
							<td><input type="number" id="fp3"
								name="fp3" min="0" step="any" value="0" /></td>	
						</tr>
						
						<tr>
							<td>33</td>
							<td>funded project 4 
							</td>
							<td><input type="number" id="fp4"
								name="fp4" min="0" step="any" value="0" /></td>	
						</tr>
						<tr>
							<td>34</td>
							<td>funded project 5
							</td>
							<td><input type="number" id="fp5"
								name="fp5" min="0" value="0" /></td>	
						</tr>
						<tr>
							<td>35</td>
							<td>consulting project 1 
							</td>
							<td><input type="number" id="cp1"
								name="cp1" min="0" value="0" /></td>	
						</tr>
						<tr>
							<td>36</td>
							<td>consulting project 2 
							</td>
							<td><input type="number" id="cp2"
								name="cp2" min="0" step="any" value="0" /></td>	
						</tr>
						<tr>
							<td>37</td>
							<td>consulting project 3 
							</td>
							<td><input type="number" id="cp3"
								name="cp3" min="0" step="any" value="0" /></td>	
						</tr>
						<tr>
							<td>38</td>
							<td>consulting project 4 
							</td>
							<td><input type="number" id="cp4"
								name="cp4" min="0" step="any" value="0" /></td>	
						</tr>
						<tr>
							<td>39</td>
							<td>consulting project 5
							</td>
							<td><input type="number" id="cp5"
								name="cp5" min="0" value="0" /></td>	
						</tr>
						<tr>
							<td>40</td>
							<td>chair session 
							</td>
							<td><input type="number" id="chair"
								name="chair" min="0" step="any" value="0" /></td>	
						</tr>
						<tr>
							<td>41</td>
							<td>cfdp1 
							</td>
							<td><input type="number" id="cfdp1"
								name="cfdp1" min="0" step="any" value="0" /></td>	
						</tr>
						<tr>
							<td>42</td>
							<td>cfdp2 
							</td>
							<td><input type="number" id="cfdp2"
								name="cfdp2" min="0" step="any" value="0" /></td>	
						</tr>
						<tr>
							<td>43</td>
							<td>talk 
							</td>
							<td><input type="number" id="talk"
								name="talk" min="0" step="any" value="0" /></td>	
						</tr>
						<tr>
							<td>44</td>
							<td>event out
							</td>
							<td><input type="number" id="eveo"
								name="eveo" min="0" step="any" value="0" /></td>	
						</tr>
						<tr>
							<td>45</td>
							<td>invited talk
							</td>
							<td><input type="number" id="invi"
								name="invi" min="0" step="any" value="0" /></td>	
						</tr>
						<tr>
							<td>46</td>
							<td>ind 
							</td>
							<td><input type="number" id="ind"
								name="ind" min="0" step="any" value="0" /></td>	
						</tr>
						<tr>
							<td>47</td>
							<td>nba1 
							</td>
							<td><input type="number" id="nba1"
								name="nba1" min="0" step="any" value="0" /></td>	
						</tr>
						
						<tr>
							<td>48</td>
							<td>nba2 
							</td>
							<td><input type="number" id="nba2"
								name="nba2" min="0" step="any" value="0" /></td>	
						</tr>
						<tr>
							<td>49</td>
							<td>other service 
							</td>
							<td><input type="number" id="os1"
								name="os1" min="0" step="any" value="0" /></td>	
						</tr>
						<tr>
							<td>50</td>
							<td>awards 
							</td>
							<td><input type="number" id="award"
								name="award" min="0" step="any" value="0" /></td>	
						</tr>
						<tr>
							<td><input type="submit" value="submit" class="btn btn-primary">
									</td>
						</tr>
	
					</tbody>
				</table>
			</form>
						 
		</div>
		<div class="container-fluid col-sm-2">&nbsp;</div>
	</div>
</body>

</html></html>