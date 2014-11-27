<% 
    /*For page tab/button/menu active state */
    session.setAttribute("pagetitle","Schedule");
    session.setAttribute("tab","schedule");
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
						<input type="search" class="form-control" placeholder="Staff ID">
					</div>
				</div>
				<div class="form-group">
					<div class='input-group date' id='date'>
						<span class="input-group-addon">
							<span class="glyphicon glyphicon-calendar"></span>
						</span>
						<input type='text' class="form-control" data-date-format="DD/MM/YYYY" placeholder="Pick a date">
					</div>
				</div>
				<div class="text-center">
					<div class="btn-group" data-toggle="buttons">
					  <label class="btn btn-default active">
					    <input type="radio" name="type" id="All" checked>&nbsp;&nbsp;All&nbsp;&nbsp;
					  </label>
					  <label class="btn btn-default">
					    <input type="radio" name="type" id="General Practice">General Practice
					  </label>
					  <label class="btn btn-default">
					    <input type="radio" name="type" id="Nurse">&nbsp;Nurse&nbsp;
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
			<!-- <ul class="nav nav-pills nav-stacked">
				<li><a href="patient_appointment.html"><span class="glyphicon glyphicon-calendar"></span>&nbsp;&nbsp;Make appointment</a></li>
				<li class="active"><a href="patient_add.html"><span class="glyphicon glyphicon-plus"></span>&nbsp;&nbsp;Add patient</a></li>
			</ul> -->
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