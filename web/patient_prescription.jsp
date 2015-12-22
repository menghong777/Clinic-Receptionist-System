<%@page import="java.sql.*"%>
<%@include file="WEB-INF/connection.jsp"%>
<% 
	/*For page tab/button/menu active state */
	session.setAttribute("pagetitle","Prescription");
	session.setAttribute("tab","search");
	session.setAttribute("patientDetailMenu","prescription");
	
	/*Database connection */
	Connection con = DriverManager.getConnection(host,username,password);
	Statement myStatement = con.createStatement();
	
	/* Get PID from previous search page */
	String PID = (String)session.getAttribute("PID");
	PID = PID.toUpperCase();
        
        /* status message */
        session.setAttribute("status", "");
	
	/* Get extend */
	String extend = request.getParameter("extend");
	if(extend !=null && extend != "") {
                String preID = request.getParameter("preID");
		myStatement.execute("UPDATE prescription SET Extension_Period='"+extend+"' "
                        + "WHERE Patient_ID = '" +PID+"' AND presrciptionID='"+preID+"'");
                session.setAttribute("status", "<div class='alert alert-success' role='alert'><b>Done!</b> "
                + "extend to "+extend+" days</div>");
	}
	
	/* To print out the prescription*/
	ResultSet result = myStatement.executeQuery("SELECT * FROM prescription WHERE Patient_ID = '" +PID+"'");
%>
<!doctype html>
<html lang="en">
	<head>
		<jsp:include page="head.jsp"></jsp:include>
	</head>
	<body>
		<!-- The NavBar -->
		<jsp:include page="navbar.jsp"></jsp:include>
		
	<div class="container-fluid">
		<div class="col-md-3">
			<jsp:include page="nav_patient_detail.jsp"></jsp:include>
		</div>
		<div class="col-md-9">
			<jsp:include page="info_patient.jsp"></jsp:include>
                        <%= session.getAttribute("status") %>
			<table class="table table-hover table-condensed">
				<thead>
					<tr>
						<th></th>
						<th>Medicine name</th>
						<th>Dosage</th>
						<th>Period</th>
						<th>Extension period</th>
					</tr>
				</thead>
				<tbody>
					<% while(result.next()) { %>
					<tr>
						<td><button class="btn btn-warning btn-sm" role="button" data-toggle="modal" data-target="#extendModal"
                                                            onclick="$('#preID').val('<%=result.getString("presrciptionID")%>')">
                                                        <span class="glyphicon glyphicon-resize-horizontal"></span>&nbsp;&nbsp;Extend</button></td>
						<td><%=result.getString("MedicineName")%></td>
						<td><%=result.getString("Dosage")%></td>
						<td><%=result.getString("Period_days")%> day(s)</td>
						<td><%=result.getString("Extension_Period")%></td>
					</tr>
					<% } %>
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
						<form class="form-horizontal" role="form" method="post">
							<div class="form-group">
								<label for="period" class="col-sm-3 control-label">Extend period</label>
								<div class="col-sm-9">
									<input name='extend' type="number" class="form-control" id="period" placeholder="Day(s)">
								</div>
							</div>
							<div class="modal-footer">
                                                                <input type="hidden" value="" id="preID" name="preID">
								<button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span>&nbsp;&nbsp;Close</button>
								<button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-ok"></span>&nbsp;&nbsp;Extent and save</button>
							</div>
						</form>
					</div>
				</div>
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