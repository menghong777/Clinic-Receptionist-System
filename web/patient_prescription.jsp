<%@page import="java.sql.*"%>
<% 
    /*For page tab/button/menu active state */
    session.setAttribute("pagetitle","Prescription");
    session.setAttribute("tab","search");
    session.setAttribute("patientDetailMenu","prescription");
    
    /*Database connection */
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/clinic_receptionist", "root", "");
    Statement myStatement = con.createStatement();
    
    /* Get PID from previous search page */
    String PID = (String)session.getAttribute("PID");
    PID = PID.toUpperCase();
    
    /* SQL query */
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

		<div class="col-md-3">
			<jsp:include page="nav_patient_detail.jsp"></jsp:include>
		</div>
		<div class="col-md-9">
			<jsp:include page="info_patient.jsp"></jsp:include>
			<table class="table table-hover table-condensed">
				<thead>
                                    <tr>
                                        <th></th>
                                        <th>Medicine name</th>
                                        <th>Dosage</th>
                                        <th>Period</th>
                                        <th>Extension period</th>
                                        <th>Issue on</th>
                                    </tr>
				</thead>
				<tbody>
                                    <% while(result.next()) { %>
                                    <tr>
                                        <td><a class="btn btn-warning btn-sm" href="#" role="button" data-toggle="modal" data-target="#extendModal"><span class="glyphicon glyphicon-resize-horizontal"></span>&nbsp;&nbsp;Extend</a></td>
                                        <td><%=result.getString("Medicine_Name")%></td>
                                        <td><%=result.getString("Dosage")%></td>
                                        <td><%=result.getString("Period")%> day(s)</td>
                                        <td><%=result.getString("Extension_Period")%></td>
                                        <td><%=result.getString("TimeStamp")%></td>
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
									<input type="number" class="form-control" id="period" placeholder="Day(s)">
								</div>
							</div>
						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span>&nbsp;&nbsp;Close</button>
						<button type="button" class="btn btn-success"><span class="glyphicon glyphicon-ok"></span>&nbsp;&nbsp;Extent and save</button>
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