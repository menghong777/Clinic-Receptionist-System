<% session.setAttribute("pagetitle","Print Preview"); %>
<%session.setAttribute("health_ID",request.getParameter("blah"));%>
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
			<div class="page-header"><h2><a class="btn btn-default" href="patient_print.jsp" role="button"><span class="glyphicon glyphicon-chevron-left"></span>&nbsp;&nbsp;Back</a>&nbsp;<%= session.getAttribute("pagetitle") %></h2></div>
			<div class=""><h2>Patient <small>ID: <%=session.getAttribute("PID")+" ("+session.getAttribute("name")+")"%></small></h2></div>
			<a class="btn btn-success" onClick="printReport()">&nbsp;&nbsp;<span class="glyphicon glyphicon-print"></span>&nbsp;&nbsp;Print&nbsp;&nbsp;</a><br><br>
			<div class="embed-responsive embed-responsive-4by3">
				<iframe id="printfile" name="printfile" class="embed-responsive-item" src="print.jsp"></iframe>
			</div>
		</div>

		<!-- Bootstrap core JavaScript
		================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<!-- Testing with new version JQuery 2.1.1 -->
		<!-- JQuery MUST put before Bootstrap JS because Bootstrap needs to read the file first -->
		<script src="assets/js/jquery-2.1.1.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
		<script>
		function printReport() {
		    window.frames["printfile"].focus();
			window.frames["printfile"].print();
		}
		</script>
	</body>
</html>