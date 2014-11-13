<% session.setAttribute("pagetitle","Print Preview"); %>
<!doctype html>
<html lang="en">
	<head>
		<jsp:include page="head.jsp"></jsp:include>
	</head>
	<body>
		<!-- The NavBar -->
		<jsp:include page="navbar.jsp"></jsp:include>

		<div class="col-md-3">
			<jsp:include page="nav_patient_detail.jsp"></jsp:include>
		</div>
		<div class="col-md-9">
			<div class="page-header"><h2><a class="btn btn-default" href="patient_print.jsp" role="button"><span class="glyphicon glyphicon-chevron-left"></span>&nbsp;&nbsp;Back</a>&nbsp;Print preview <small>Patient ID: P000</small></h2></div>
			<div class="row">
				<div class="col-md-3">
					<p>Over surgery</p>
				</div>
				<div class="col-md-6 text-center">
					<h4>Health Report</h4>
				</div>
				<div class="col-md-3 text-right">
					<p>Date: dd/MM/yyyy</p>
				</div>
			</div>
			<div class="row">
				<table class="table table-condensed">
					<thead>
						<tr>
							<th>nullTest</th>
							<th>Value</th>
							<th>Result</th>
							<th>Remark</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>nullTest</td>
							<td>nullValue</td>
							<td>nullResult</td>
							<td>nullRemark</td>
						</tr>
						<tr>
							<td>nullTest</td>
							<td>nullValue</td>
							<td>nullResult</td>
							<td>nullRemark</td>
						</tr>
						<tr>
							<td>nullTest</td>
							<td>nullValue</td>
							<td>nullResult</td>
							<td>nullRemark</td>
						</tr>
						<tr>
							<td>nullTest</td>
							<td>nullValue</td>
							<td>nullResult</td>
							<td>nullRemark</td>
						</tr>
						<tr>
							<td>nullTest</td>
							<td>nullValue</td>
							<td>nullResult</td>
							<td>nullRemark</td>
						</tr>
						<tr>
							<td>nullTest</td>
							<td>nullValue</td>
							<td>nullResult</td>
							<td>nullRemark</td>
						</tr>
					</tbody>
				</table>
				<div class="">
					<p>Written by: </p>
				</div>
			</div>
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