<!doctype html>
<html lang="en">
	<head>
		<!-- Character set -->
		<meta charset="utf-8" />
		<!-- IE compatible mode: edge=highest version supported -->
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />

		<!-- favicon.ico -->
		<link rel="shortcut icon" href="" />

		<!-- Website title -->
		<title>Search patient | Over Surgery</title>

		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="assets/css/bootstrap.min.css">
		<link rel="stylesheet" href="assets/css/bootstrap-datetimepicker.min.css">
		<!-- Optional theme -->
		<!-- <link rel="stylesheet" href="assets/css/bootstrap-theme.min.css"> -->

		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
			<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
		<style>
			body { padding-top: 70px; }
		</style>
	</head>
	<body>
		<nav class="navbar navbar-default navbar-static-top navbar-fixed-top" role="navigation">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">Over Surgery</a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<!-- <li class="active"><a href="#">Link</a></li> -->
						<!-- <li><a href="#">Link</a></li> -->
					</ul>
					
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#">Logout</a></li>
					</ul>
					<p class="navbar-text navbar-right">Hi, <a href="#" class="navbar-link">Meng Hong</a></p>
					<form class="navbar-form navbar-right" role="search">
						<div class="form-group">
							<div class="input-group">
								<div class="input-group-addon"><span class="glyphicon glyphicon-search"></span></div>
								<input type="text" class="form-control" placeholder="Search">
							</div>
						</div>
<!--            <div class="form-group">
							<div class="input-group">
								<div class="input-group-addon">@</div>
								<input type="text" class="form-control" placeholder="Search">
							</div>
						</div> -->
						<button type="submit" class="btn btn-primary">Search</button>
					</form>
				</div><!-- /.navbar-collapse -->
			</div><!-- /.container-fluid -->
		</nav>
		<ul class="nav nav-tabs nav-justified" role="tablist">
			<li><a href="index.html">Home</a></li>
			<li class="active"><a href="patient_search.html">Patient</a></li>
			<li><a href="schedule.html">Schedule</a></li>
		</ul>
		<div class="col-md-3">
			<div class="text-center"><h4>Menu</h4></div>
			<ul class="nav nav-pills nav-stacked">
			<!-- <li><a href="#">Search</a></li> -->
			<li class="active"><a href="patient_search.html"><span class="glyphicon glyphicon-search"></span>&nbsp;&nbsp;Search patient</a></li>
			<li><a href="patient_add.html"><span class="glyphicon glyphicon-plus"></span>&nbsp;&nbsp;Add patient</a></li>
			</ul>
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
						<td><a class="btn btn-default btn-sm" href="patient_appointment.html" role="button">Select</a></td>
						<td>P000</td>
						<td>921010-12-1212</td>
						<td>Jerry</td>
						<td>Leong</td>
						<td>01123456789</td>
					</tr>
					<tr>
						<td><a class="btn btn-default btn-sm" href="patient_appointment.html" role="button">Select</a></td>
						<td>P000</td>
						<td>921010-12-1212</td>
						<td>Jerry</td>
						<td>Leong</td>
						<td>01123456789</td>
					</tr>
					<tr>
						<td><a class="btn btn-default btn-sm" href="patient_appointment.html" role="button">Select</a></td>
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