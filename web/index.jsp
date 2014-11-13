<% session.setAttribute("pagetitle","Home"); %>
<!doctype html>
<html lang="en">
	<head>
		<jsp:include page="head.jsp"></jsp:include>
	</head>
	<body>
		<!-- The NavBar -->
		<jsp:include page="navbar.jsp"></jsp:include>
		<div class="row">
			<div class="col-md-12 text-center">
			<h3>Tuesday, November 17, 2014</h3>
		</div>
		<div class="col-md-1"></div>
		<div class="col-md-5">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h2 class="panel-title"><span class="glyphicon glyphicon-calendar"></span>&nbsp;&nbsp;Today's appointments</h2>
				</div>
				<div class="panel-body">
					<table class="table table-hover table-condensed">
						<thead>
							<tr>
								<th>Patient name</th>
								<th>Time</th>
								<th>GP</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Kong</td>
								<td>16:00</td>
								<td>Dr Chong</td>
							</tr>
							<tr>
								<td>Lee</td>
								<td>17:30</td>
								<td>Dr Rain</td>
							</tr>
							<tr>
								<td>Kelly</td>
								<td>16:00</td>
								<td>Dr Ruby</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<div class="col-md-5">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h2 class="panel-title"><span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;Today's GP/nurse</h2>
				</div>
				<div class="panel-body">
					<table class="table table-hover table-condensed">
						<thead>
							<tr>
								<th>Name</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Dr Chong</td>
							</tr>
							<tr>
								<td>Dr Rain</td>
							</tr>
							<tr>
								<td>Nurse Ruby</td>
							</tr>
							<tr>
								<td>Dr Ray</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<!-- Bootstrap core JavaScript
	    ================================================== -->
	    <!-- Placed at the end of the document so the pages load faster -->
	    <script src="assets/js/jquery-2.1.1.min.js"></script>
    	<script src="assets/js/bootstrap.min.js"></script>
	</body>
</html>