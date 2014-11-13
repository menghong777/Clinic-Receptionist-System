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
						<li><a href="logout.jsp">Logout</a></li>
					</ul>
					<p class="navbar-text navbar-right">Hi, <a href="#" class="navbar-link"><%=session.getAttribute("login")%></a></p>
					<form class="navbar-form navbar-right" role="search">
						<div class="form-group">
							<div class="input-group">
								<div class="input-group-addon"><span class="glyphicon glyphicon-search"></span></div>
								<input type="text" class="form-control" placeholder="Search">
							</div>
						</div>
						<button type="submit" class="btn btn-primary">Search</button>
					</form>
				</div><!-- /.navbar-collapse -->
			</div><!-- /.container-fluid -->
		</nav>
		<ul class="nav nav-tabs nav-justified" role="tablist">
			<li class="active"><a href="index.jsp">Home</a></li>
			<li class=""><a href="patient_search.jsp">Patient</a></li>
			<li class=""><a href="schedule.jsp">Schedule</a></li>
		</ul>


		<!-- Bootstrap core JavaScript
	    ================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<!-- <script src="assets/js/bootstrap.min.js"></script> -->
		<!-- JQuery 2.1.1 -->
		<!-- <script src="assets/js/jquery-2.1.1.min.js"></script>
	</body>
</html> -->