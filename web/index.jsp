<% 
    session.setAttribute("pagetitle","Home");
    session.setAttribute("tab","home"); 
%>
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
		<div class="col-md-6">
			<div class="page-header"><h2>Today's appointments</h2></div>
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
		<div class="col-md-6">
			<div class="page-header"><h2>Today's GP/nurse</h2></div>
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
						<td>Dr Ruby</td>
					</tr>
				</tbody>
			</table>
		</div>
		<!-- Bootstrap core JavaScript
	    ================================================== -->
	    <!-- Placed at the end of the document so the pages load faster -->
	    <script src="assets/js/jquery-2.1.1.min.js"></script>
    	<script src="assets/js/bootstrap.min.js"></script>
	</body>
</html>