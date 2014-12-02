<% 
    /*For page tab/button/menu active state */
    session.setAttribute("pagetitle","Print Report");
    session.setAttribute("tab","search");
    session.setAttribute("patientDetailMenu","printReport");
%>
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
			<jsp:include page="info_patient.jsp"></jsp:include>
			<table class="table table-hover table-condensed">
				<thead>
					<tr>
						<th></th>
						<th>Report name</th>
						<th>Date</th>
						<th>Report by</th>
						<th>Last updated</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><a class="btn btn-default btn-sm" href="patient_print_preview.jsp" role="button"><span class="glyphicon glyphicon-eye-open"></span>&nbsp;&nbsp;Print Preview</a></td>
						<td>Xray</td>
						<td>01/11/2014</td>
						<td>Doctor Tan</td>
						<td>01/11/2014</td>
					</tr>
					<tr>
						<td><a class="btn btn-default btn-sm" href="patient_print_preview.jsp" role="button"><span class="glyphicon glyphicon-eye-open"></span>&nbsp;&nbsp;Print Preview</a></td>
						<td>Teeth checking</td>
						<td>01/11/2014</td>
						<td>Doctor Tan</td>
						<td>01/11/2014</td>
					</tr>
					<tr>
						<td><a class="btn btn-default btn-sm" href="patient_print_preview.jsp" role="button"><span class="glyphicon glyphicon-eye-open"></span>&nbsp;&nbsp;Print Preview</a></td>
						<td>Lung checking</td>
						<td>01/11/2014</td>
						<td>Doctor Tan</td>
						<td>01/11/2014</td>
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
	</body>
</html>