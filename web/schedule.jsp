<% session.setAttribute("pagetitle","Schedule"); %>
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