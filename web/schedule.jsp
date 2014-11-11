<!-- If not logged in redirect to login.jsp -->
<% if (session.getAttribute("login") == null || session.getAttribute("login") == "false") {response.sendRedirect("login.jsp");} %>
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
		<title>Schedule | Over Surgery</title>

		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="assets/css/bootstrap.min.css">
		<link rel="stylesheet" href="assets/css/responsive-calendar.css">
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
		  <li><a href="patient_search.html">Patient</a></li>
			<li class="active"><a href="schedule.html">Schedule</a></li>
		</ul>
		
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
						<input type='text' class="form-control" data-date-format="DD/MM/YYYY"/>
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
		<div class="col-md-9"><br>
			<!-- Responsive calendar - START -->
    	<div class="responsive-calendar">
        <div class="controls">
            <a class="pull-left" data-go="prev"><div class="btn btn-primary"><span class="glyphicon glyphicon-chevron-left"></span>&nbsp;&nbsp;Prev</div></a>
            <h4><span data-head-year></span> <span data-head-month></span></h4>
            <a class="pull-right" data-go="next"><div class="btn btn-primary">Next&nbsp;&nbsp;<span class="glyphicon glyphicon-chevron-right"></span></div></a>
        </div><hr/>
        <div class="day-headers">
          <div class="day header">Mon</div>
          <div class="day header">Tue</div>
          <div class="day header">Wed</div>
          <div class="day header">Thu</div>
          <div class="day header">Fri</div>
          <div class="day header">Sat</div>
          <div class="day header">Sun</div>
        </div>
        <div class="days" data-group="days">
          
        </div>
      </div>
      <!-- Responsive calendar - END -->
		</div>

		<!-- Bootstrap core JavaScript
		================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<!-- <script src="assets/js/jquery.js"></script> -->
		<!-- Testing with new version JQuery 2.1.1 -->
		<script src="assets/js/jquery-2.1.1.min.js"></script>
		<script src="assets/js/responsive-calendar.js"></script>
		<script src="assets/js/moment.min.js"></script>
		<script src="assets/js/bootstrap-datetimepicker.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

		<!-- Reference: http://w3widgets.com/responsive-calendar/ -->
		<script type="text/javascript">
      $(document).ready(function () {
        $(".responsive-calendar").responsiveCalendar({
          time: '2014-11',
          events: {
            "2014-11-30": {"number": "Close", "badgeClass": "badge-warning", "url": "www.google.com"},
            "2014-11-26": {"number": "Holiday!", "badgeClass": "badge-error", "url": "http://w3widgets.com"}, 
            "2014-11-03": {"number": "Nurse: Wong"}, 
            "2014-11-12": {"number": "GP: Lim"}}
        });
      });
    </script>
    <script type="text/javascript">
			$(function () {
				$('#date').datetimepicker({
					pickTime: false
				});
			});
		</script>
	</body>
</html>