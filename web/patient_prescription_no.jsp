<!-- If not logged in redirect to login.jsp -->
<% if (session.getAttribute("login") == null || session.getAttribute("login") == "false") {response.sendRedirect("login.jsp");} %>
<!doctype html>
<html lang="en">
	<head>
		<jsp:include page="head.jsp"></jsp:include>

		<link rel="stylesheet" href="assets/css/bootstrap-datetimepicker.min.css">
	</head>
	<body>
		<!-- The NavBar -->
		<jsp:include page="navbar.jsp"></jsp:include>

		<div class="col-md-3">
			<jsp:include page="nav_patient_detail.jsp"></jsp:include>
		</div>
		<div class="col-md-9">
			<div class="page-header"><h2><jsp:include page="nav_back_patient_search.jsp"></jsp:include>&nbsp;Patient <small>ID: P000</small></h2></div>
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
			<div class="page-header"><h2>Prescriptions</h2></div>
			<p>No record found.</p>
			<br>
			<button type="button" class="btn btn-default"><span class="glyphicon glyphicon-eye-open"></span>&nbsp;&nbsp;Extend</button>
			
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