<jsp:include page="navbar.jsp"></jsp:include>
<!-- If not logged in redirect to login.jsp -->
<% if (session.getAttribute("login") == null || session.getAttribute("login") == "false") {response.sendRedirect("login.jsp");} %>

<!-- The NavBar -->
<jsp:include page="navbar.jsp"></jsp:include>

		<div class="col-md-3">
			<div class="text-center"><h4>Menu</h4></div>
			<ul class="nav nav-pills nav-stacked">
			<!-- <li><a href="#">Search</a></li> -->
			<li><a href="patient_appointment.html"><span class="glyphicon glyphicon-calendar"></span>&nbsp;&nbsp;Appointment</a></li>
			<li class="active"><a href="patient_prescription.html"><span class="glyphicon glyphicon-th-list"></span>&nbsp;&nbsp;Prescription</a></li>
			<li><a href="patient_print.html"><span class="glyphicon glyphicon-print"></span>&nbsp;&nbsp;Print report</a></li>
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
			<div class="page-header"><h2>Prescriptions</h2></div>
			<table class="table table-hover table-condensed">
				<thead>
					<tr>
						<th></th>
						<th>Medicine name</th>
						<th>Dosage</th>
						<th>Period</th>
						<th>Extension period</th>
						<th>Last updated</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><a class="btn btn-primary btn-sm" href="#" role="button" data-toggle="modal" data-target="#extendModal"><span class="glyphicon glyphicon-resize-horizontal"></span>&nbsp;&nbsp;Extend</a></td>
						<td>Medi001</td>
						<td>112g</td>
						<td>14 day(s)</td>
						<td>None</td>
						<td>01/11/2014</td>
					</tr>
					<tr>
						<td><a class="btn btn-primary btn-sm" href="#" role="button" data-toggle="modal" data-target="#extendModal"><span class="glyphicon glyphicon-resize-horizontal"></span>&nbsp;&nbsp;Extend</a></td>
						<td>Medi002</td>
						<td>50g</td>
						<td>14 day(s)</td>
						<td>None</td>
						<td>01/11/2014</td>
					</tr>
					<tr>
						<td><a class="btn btn-primary btn-sm" href="#" role="button" data-toggle="modal" data-target="#extendModal"><span class="glyphicon glyphicon-resize-horizontal"></span>&nbsp;&nbsp;Extend</a></td>
						<td>Medi003</td>
						<td>100g</td>
						<td>14 day(s)</td>
						<td>None</td>
						<td>01/11/2014</td>
					</tr>
				</tbody>
			</table>
		</div>

		<!-- Extend Prescription Modal -->
		<div class="modal fade" id="extendModal" tabindex="-1" role="dialog" aria-labelledby="extendPrescription" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
						<h4 class="modal-title" id="extendPrescription"><span class="glyphicon glyphicon-resize-horizontal"></span>&nbsp;&nbsp;Extend prescription</h4>
					</div>
					<div class="modal-body">
						<p>Days to extend: </p>
						<input type="number" class="form-control" id="dob" placeholder="Extend period (day)"></input>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span>&nbsp;&nbsp;Close</button>
						<button type="button" class="btn btn-success"><span class="glyphicon glyphicon-ok"></span>&nbsp;&nbsp;Yes</button>
					</div>
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