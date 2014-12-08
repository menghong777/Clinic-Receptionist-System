<%@page import="java.sql.*"%>
<% 
	/*For page tab/button/menu active state */
	session.setAttribute("pagetitle","Schedule");
	session.setAttribute("tab","schedule");

	/*Database connection */
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/clinic_receptionist", "root", "");
	Statement myStatement = con.createStatement();
	ResultSet result = null;
	String s_id = request.getParameter("staff_id");
	String date = request.getParameter("date");    
	String s_type = request.getParameter("staff_type");
	String duty = request.getParameter("duty");

	if(s_id !=null && s_id != "" && date!=null && date="" && s_type!=null && s_type!="" && duty!=null && duty!="") {
		result = myStatement.executeQuery(SELECT main_table.* FROM `schedule`, main_table WHERE schedule.user_id = main_table.user_id and schedule.date = '"+date+"' and main_table.category = '"+s_type+"');
	}
%>
<!doctype html>
<html lang="en">
	<head>
		<link rel="stylesheet" href="assets/css/bootstrap-datetimepicker.min.css">
		<link rel="stylesheet" href="assets/css/responsive-calendar.css">
		
		<jsp:include page="head.jsp"></jsp:include>
	</head>
	<body>
		<!-- The NavBar -->
		<jsp:include page="navbar.jsp"></jsp:include>
		
		<div class="col-md-3">
			<div class="text-center"><h4>Filter</h4></div>
			<form role="form">
				<div class="form-group">
					<div class="input-group">
						<div class="input-group-addon"><span class="glyphicon glyphicon-search"></span></div>
						<input name="staff_id" type="search" class="form-control" placeholder="Staff ID">
					</div>
				</div>
				<div class="form-group">
					<div class='input-group date' id='date'>
						<span class="input-group-addon">
							<span class="glyphicon glyphicon-calendar"></span>
						</span>
						<input name="date" type='text' class="form-control" data-date-format="YYYY-MM-DD" placeholder="Pick a date">
					</div>
					<p class="help-block text-center"><span class="glyphicon glyphicon-info-sign"></span>&nbsp;Press the calendar icon to pick a date.</p>
				</div>
				
				<div class="text-center">
					<div class="btn-group" data-toggle="buttons">
					  <label class="btn btn-default active">
					    <input type="radio" name="staff_type" id="All" checked>&nbsp;&nbsp;All&nbsp;&nbsp;
					  </label>
					  <label class="btn btn-default">
					    <input type="radio" name="staff_type" id="General Practice">General Practice
					  </label>
					  <label class="btn btn-default">
					    <input type="radio" name="staff_type" id="Nurse">&nbsp;Nurse&nbsp;
					  </label>
					</div><p></p>
					<div class="btn-group" data-toggle="buttons">
					  <label class="btn btn-default active">
					    <input type="radio" name="duty" id="On duty" checked>On duty
					  </label>
					  <label class="btn btn-default">
					    <input type="radio" name="duty" id="Availability">Availability
					  </label>
					</div>
				</div><p></p>
				<button type="submit" class="btn btn-primary btn-block">Search</button>
			</form>
		</div>
		<div class="col-md-9">
			<div class="header">
				<div class="page-header"><h2>Filtered result</h2></div>
				<table class="table table-hover table-condensed">
					<thead>
						<tr>
							<th>Staff ID</th>
							<th>Staff type</th>
							<th>First name</th>
							<th>Last name</th>
							<th>Phone number</th>
							<th>Sex</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>ID000</td>
							<td>ADMIN</td>
							<td>ADMIN</td>
							<td>ADMIN</td>
							<td>0000000000</td>
							<td>Null</td>
						</tr>
						<tr>
							<td>ID000</td>
							<td>ADMIN</td>
							<td>ADMIN</td>
							<td>ADMIN</td>
							<td>0000000000</td>
							<td>Null</td>
						</tr>
						<tr>
							<td>ID000</td>
							<td>ADMIN</td>
							<td>ADMIN</td>
							<td>ADMIN</td>
							<td>0000000000</td>
							<td>Null</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>

		<!-- Bootstrap core JavaScript
		================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="assets/js/jquery-2.1.1.min.js"></script>
		<script src="assets/js/moment.min.js"></script>
		<script src="assets/js/bootstrap-datetimepicker.min.js"></script>
    	<script src="assets/js/bootstrap.min.js"></script>
    <script type="text/javascript">
			$(function () {
				$('#date').datetimepicker({
					pickTime: false
				});
			});
		</script>
	</body>
</html>