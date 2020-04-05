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
	<div class="container-fluid">
		<div class="container-fluid col-sm-2">&nbsp;</div>
		<div class="container-fluid col-sm-8">
			<form method="post" action="Appraisal" id="formAppraisal">
				

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
								name="asso_Res" min="0" value="0" /></td>
							
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