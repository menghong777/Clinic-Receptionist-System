<!-- If not logged in redirect to login.jsp -->
<% if (session.getAttribute("login") == null || session.getAttribute("login") == "false") {response.sendRedirect("login.jsp");} %>
<!doctype html>
<html lang="en">
	<head>
		<link rel="stylesheet" href="assets/css/bootstrap-datetimepicker.min.css">
		
		<jsp:include page="head.jsp"></jsp:include>
	</head>
	<body>
		<!-- The NavBar -->
		<jsp:include page="navbar.jsp"></jsp:include>

		<div class="col-md-3">
			<jsp:include page="nav_patient.jsp"></jsp:include>
		</div>
		<div class="col-md-9">
			<div class="page-header"><h2>Search and select a patient</h2></div>
			<form class="form-inline" role="form">
				<div class="form-group">
					<div class="input-group">
						<div class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></div>
						<input type="search" class="form-control" id="search" placeholder="Patient ID">
					</div>
				</div>
				<button type="submit" class="btn btn-primary">Search</button>
			</form><br>
			<p>Or</p>
			<form class="form-inline" role="form">
				<div class="form-group">
					<div class="input-group">
						<div class="input-group-addon"><span class="glyphicon glyphicon-user"></span></div>
						<input type="search" class="form-control" id="search" placeholder="Name">
					</div>
				</div>
				<div class="form-group">
					<div class='input-group date' id='birthDate'>
						<span class="input-group-addon">
							<span class="glyphicon glyphicon-calendar"></span>
						</span>
						<input type='text' class="form-control" data-date-format="DD/MM/YYYY" placeholder="Birth date">
					</div>
				</div>
				<button type="submit" class="btn btn-primary">Search</button>
			</form><br>
			<p>Or</p>
			<form class="form-inline" role="form">
				<div class="form-group">
					<div class="input-group">
						<div class="input-group-addon"><span class="glyphicon glyphicon-user"></span></div>
						<input type="search" class="form-control" id="search" placeholder="Name">
					</div>
				</div>
				<div class="form-group">
					<div class="input-group">
						<div class="input-group-addon"><span class="glyphicon glyphicon-home"></span></div>
						<input type="search" class="form-control" id="search" placeholder="Address">
					</div>
				</div>
				<button type="submit" class="btn btn-primary">Search</button>
			</form>
			<br>
			<h4>3 result(s) found</h4><br>
			<table class="table table-hover table-condensed">
				<thead>
					<tr>
						<th></th>
						<th>Patient ID</th>
						<th>Identification Card</th>
						<th>First name</th>
						<th>Last name</th>
						<th>Personal contact</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><a class="btn btn-default btn-sm" href="patient_appointment.jsp" role="button">Select</a></td>
						<td>P000</td>
						<td>921010-12-1212</td>
						<td>Jerry</td>
						<td>Leong</td>
						<td>01123456789</td>
					</tr>
					<tr>
						<td><a class="btn btn-default btn-sm" href="patient_appointment.jsp" role="button">Select</a></td>
						<td>P000</td>
						<td>921010-12-1212</td>
						<td>Jerry</td>
						<td>Leong</td>
						<td>01123456789</td>
					</tr>
					<tr>
						<td><a class="btn btn-default btn-sm" href="patient_appointment.jsp" role="button">Select</a></td>
						<td>P000</td>
						<td>921010-12-1212</td>
						<td>Jerry</td>
						<td>Leong</td>
						<td>01123456789</td>
					</tr>
				</tbody>
			</table>
		</div>

		<!-- Bootstrap core JavaScript
		================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<!-- Testing with new version JQuery 2.1.1 -->
		<!-- JQuery MUST put before Bootstrap JS because Bootstrap needs to read the file first -->
		<script src="assets/js/jquery-2.1.1.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/js/moment.min.js"></script>
		<script src="assets/js/bootstrap-datetimepicker.min.js"></script>
		<!-- JavaScript Birth date -->
		<script type="text/javascript">
			$(function () {
				$('#birthDate').datetimepicker({
					pickTime: false
				});
			});
		</script>
	</body>
</html>