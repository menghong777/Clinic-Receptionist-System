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
		<title>Make appointment | Over Surgery</title>

		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="assets/css/bootstrap.min.css">
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
<!-- 						<div class="form-group">
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
			<li class="active"><a href="patient_appointment.html"><span class="glyphicon glyphicon-calendar"></span>&nbsp;&nbsp;Appointment</a></li>
			<li><a href="patient_prescription.html"><span class="glyphicon glyphicon-th-list"></span>&nbsp;&nbsp;Prescription</a></li>
			</ul>
		</div>
		<div class="col-md-9">
			<div class="page-header"><h2><a class="btn btn-default" href="patient_search.html" role="button"><span class="glyphicon glyphicon-chevron-left"></span>&nbsp;&nbsp;Back</a>&nbsp;Patient <small>ID: P000</small></h2></div>
			<form class="form-horizontal" role="form">
			  <div class="form-group">
			    <label class="col-sm-2 control-label">IC number</label>
			    <div class="col-sm-10">
			      <p class="form-control-static">921010-12-1212</p>
			    </div>
			  </div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label">Name</label>
			    <div class="col-sm-10">
			      <p class="form-control-static">Jerry Leong</p>
			    </div>
			  </div>
<!-- 			  <div class="form-group">
			    <label class="col-sm-2 control-label">Address</label>
			    <div class="col-sm-10">
			      <p class="form-control-static">23, Jalan Loke Yew 1</p>
			    </div>
			  </div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"></label>
			    <div class="col-sm-10">
			      <p class="form-control-static">Kuala Lumpur</p>
			    </div>
			  </div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label"></label>
			    <div class="col-sm-10">
			      <p class="form-control-static">56000</p>
			    </div>
			  </div> -->
<!-- 			  <div class="form-group">
			    <label class="col-sm-2 control-label">Personal contact</label>
			    <div class="col-sm-10">
			      <p class="form-control-static">01123456789</p> -->
			      <!-- Input type type="tel" is currently supported only in Safari 8 -->
<!--			    </div>
			  </div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label">Birth date</label>
			    <div class="col-sm-10">
			      <p class="form-control-static">22/03/1960</p>
			    </div>
			  </div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label">Sex</label>
			    <div class="col-sm-10">
			      <p class="form-control-static">Male</p>
			    </div>
			  </div>
 		<div class="page-header"><h2>Emergency contact information</h2></div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label">Name</label>
			    <div class="col-sm-10">
			      <p class="form-control-static">Jenny Lee</p>
			    </div>
			  </div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label">Relationship</label>
			    <div class="col-sm-10">
			      <p class="form-control-static">Mother</p>
			    </div>
			  </div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label">Emergency contact</label>
			    <div class="col-sm-10">
			      <p class="form-control-static">0172347583</p>
			    </div>
			  </div> -->
			</form>
			  <div class="page-header"><h2>Appointments</h2></div>
			  <p>No appoinment found.</p>
			  <br>
			  <button type="button" class="btn btn-danger"><span class="glyphicon glyphicon-plus"></span>&nbsp;&nbsp;Add</button>
		</div>

		<!-- Bootstrap core JavaScript
		================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<!-- Testing with new version JQuery 2.1.1 -->
		<!-- JQuery MUST put before Bootstrap JS because Bootstrap needs to read the file first -->
		<script src="assets/js/jquery-2.1.1.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
	</body>
</html>