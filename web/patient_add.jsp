<jsp:include page="navbar.jsp"></jsp:include>
<!-- If not logged in redirect to login.jsp -->
<% if (session.getAttribute("login") == null || session.getAttribute("login") == "false") {response.sendRedirect("login.jsp");} %>

<!-- The NavBar -->
<jsp:include page="navbar.jsp"></jsp:include>
		
		<div class="col-md-3">
			<div class="text-center"><h4>Menu</h4></div>
			<ul class="nav nav-pills nav-stacked">
			<!-- <li><a href="#">Search</a></li> -->
			<li><a href="patient_search.html"><span class="glyphicon glyphicon-search"></span>&nbsp;&nbsp;Search patient</a></li>
			<li class="active"><a href="patient_add.html"><span class="glyphicon glyphicon-plus"></span>&nbsp;&nbsp;Add patient</a></li>
			</ul>
		</div>
		<div class="col-md-9">
			<div class="page-header"><h2>General information</h2></div>
			<form class="form-horizontal" role="form">
			  <div class="form-group">
			    <label for="IC" class="col-sm-2 control-label">IC number</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="IC" placeholder="IC number">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="name" class="col-sm-2 control-label">Name</label>
			    <div class="col-sm-5">
			      <input type="text" class="form-control" id="firstName" placeholder="First name">
			    </div>
			    <div class="col-sm-5">
			      <input type="text" class="form-control" id="lastName" placeholder="Last name">
			    </div>
			  </div>
<!-- 			  <div class="form-group">
			    <label for="lastName" class="col-sm-2 control-label">Last name</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="lastName" placeholder="Last name">
			    </div>
			  </div> -->
			  <div class="form-group">
			    <label for="addressStreet" class="col-sm-2 control-label">Address</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="addressStreet" placeholder="House number and street">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="addressCity" class="col-sm-2 control-label"></label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="addressCity" placeholder="City">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="addressPostcode" class="col-sm-2 control-label"></label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="addressPostcode" placeholder="Postcode">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="contact" class="col-sm-2 control-label">Personal contact</label>
			    <div class="col-sm-10">
			      <input type="tel" class="form-control" id="contact" placeholder="Mobile or home">
			      <!-- Input type type="tel" is currently supported only in Safari 8 -->
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="dob" class="col-sm-2 control-label">Birth date</label>
			    <div class="col-sm-10">
			      <!-- <input type="date" class="form-control" id="dob" placeholder="Birth date"> -->
			      <div class='input-group date' id='birhDateInput'>
							<span class="input-group-addon">
								<span class="glyphicon glyphicon-calendar"></span>
							</span>
							<input type='text' class="form-control" data-date-format="DD/MM/YYYY" placeholder="Birth date">
						</div>
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="sex" class="col-sm-2 control-label">Sex</label>
			    <div class="col-sm-10">
			      <div class="radio">
						  <label>
						    <input type="radio" name="sex" id="sexMale" value="Male" checked>
						    Male
						  </label>
						</div>
						<div class="radio">
						  <label>
						    <input type="radio" name="sex" id="sexFemale" value="Semale">
						    Female
						  </label>
						</div>
			    </div>
			  </div>
			  <!-- <div class="row">
					<div class="col-md-12"><h2>Emergency contact information</h2></div><br>
				</div> -->
				<div class="page-header"><h2>Emergency contact information</h2></div>
			  <div class="form-group">
			    <label for="emergencyName" class="col-sm-2 control-label">Name</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="emergencyName" placeholder="Name">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="emergencyRelationship" class="col-sm-2 control-label">Relationship</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="emergencyRelationship" placeholder="Relationship">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="emergencyPhone" class="col-sm-2 control-label">Emergency contact</label>
			    <div class="col-sm-10">
			      <input type="tel" class="form-control" id="emergencyContact" placeholder="Emergancy mobile">
			    </div>
			  </div>
			  <div class="form-group">
			    <div class="col-sm-offset-2 col-sm-10">
			      <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-ok"></span>&nbsp;&nbsp;Save</button>
			      <button type="reset" class="btn btn-default"><span class="glyphicon glyphicon-remove"></span>&nbsp;&nbsp;Clear all</button>
			    </div>
			  </div>
			</form>
		</div>

		<!-- Bootstrap core JavaScript
		================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<!-- Testing with new version JQuery 2.1.1 -->
		<!-- JQuery MUST put before Bootstrap JS because Bootstrap needs to read the file first -->
		<script src="assets/js/jquery-2.1.1.min.js"></script>
		<script src="assets/js/moment.min.js"></script>
		<script src="assets/js/bootstrap-datetimepicker.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
		<!-- JavaScript - Birth Date Input -->
		<script type="text/javascript">
			$(function () {
				$('#birhDateInput').datetimepicker({
					pickTime: false
				});
			});
		</script>
	</body>
</html>