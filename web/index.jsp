<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.*"%>
<%@ page import="java.io.*,java.util.Locale" %>
<%@ page import="java.text.*,java.util.Date" %>
<%@include file="WEB-INF/connection.jsp"%>
<% 
	/*For page tab/button/menu active state */
	session.setAttribute("pagetitle","Home");
	session.setAttribute("tab","home");
	Class.forName("com.mysql.jdbc.Driver");
	try {
	Connection con = DriverManager.getConnection(host, username, password);
	Statement myStatement = con.createStatement();  
	ResultSet myResultSet = null;
	ResultSet ResultSet = null;
	
	Date d = new Date(); //request for locale date
	SimpleDateFormat formatter=new SimpleDateFormat("EEEE, dd MMMM yyyy");
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
	String date=formatter.format(d);
	String dateC=sdf.format(d); //this is for query bcus the format is different
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
				<h3><% out.println(date); %></h3>
			</div>
		</div>
		<div class="col-md-1"></div>
		<div class="col-md-5">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h2 class="panel-title"><span class="glyphicon glyphicon-calendar"></span>&nbsp;&nbsp;Today's appointments</h2>
				</div>
				<div class="panel-body">
					<table class="table table-hover table-condensed">
							<%
							myResultSet = myStatement.executeQuery("SELECT main_table.firstname AS patient, main_table.IdentificationID as iden, appointment.GP_ID FROM main_table, patient, appointment WHERE appointment.patient_ID = patient.Patient_ID AND patient.User_ID = main_table.User_ID  and appointment.Date = '"+dateC+"'");
							%>
						<thead>
							<tr>
								<th>Patient</th>
								<th>Identification Card</th>
								<th>GP ID</th>
							</tr>
						</thead>
						<tbody>
						<% while(myResultSet.next()) { %>
							<tr>
								<td>
									<%= myResultSet.getString("patient") %>
								</td>
								<td>
									<%= myResultSet.getString("iden") %>
								</td>
								<td>
									<%= myResultSet.getString("GP_ID") %>
								</td>
							</tr>
						<% } %>
						</tbody>
					</table>
					<br>
					<hr>
					<p><i>*GP ID reference</i></p>
							<%
							//get the patient name 
							myResultSet = myStatement.executeQuery("SELECT main_table.firstname AS gp, gp.gp_ID  FROM main_table, gp WHERE main_table.Category = 'gp' AND gp.User_ID = main_table.User_ID"); 
							%>
					<table class="table table-hover table-condensed">
						<thead>
							<tr>
								<th>GP ID</th>
								<th>Name</th>
								<th>Current status</th>
							</tr>
						</thead>
						<tbody>
						<% while(myResultSet.next()) { %>
							<tr>
								<td>
									<%= myResultSet.getString("gp_ID") %>
								</td>
								<td>
									Doctor <%= myResultSet.getString("gp") %>
								</td>
								<td>
									<span class="label label-success">Available</span>
								</td>
							</tr>
						<% } %>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<div class="col-md-5">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h2 class="panel-title"><span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;Today's staff on duty</h2>
				</div>
				<% 
				//The date need to change according to current date
				myResultSet = myStatement.executeQuery("SELECT main_table.FirstName, main_table.LastName, main_table.Category, schedule.User_ID FROM main_table, schedule WHERE schedule.Date =  '"+dateC+"' AND schedule.User_ID = main_table.User_ID");
				%>
				<div class="panel-body">
					<table class="table table-hover table-condensed">
						<thead>
							<tr>
								<th>User ID</th>
								<th>First Name</th>
								<th>Last Name</th>
								<th>Position</th>
							</tr>
						</thead>
						<tbody> 
						<% while(myResultSet.next()) { %>
							<tr>
								<td>
									<%= myResultSet.getString("User_ID") %>
								</td>
								<td>
									<%= myResultSet.getString("FirstName") %>
								</td>
								<td>
									<%= myResultSet.getString("LastName") %>
								</td>
								<td>
									<%= myResultSet.getString("Category") %>
								</td>
							</tr>	
						<% } %>    
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
<%
}catch (SQLException sql) {
	session.setAttribute("error","ERROR: Did you start your MySQL server?"+sql);
}
%>
</html>
