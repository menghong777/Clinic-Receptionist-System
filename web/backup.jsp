<%@page import="java.sql.*"%>
<% 
    /*For page tab/button/menu active state */
    session.setAttribute("pagetitle","Home");
    session.setAttribute("tab","home"); 
    
    Class.forName("com.mysql.jdbc.Driver");
    try {
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/clinic_receptionist", "root", "");
    Statement myStatement = con.createStatement();  

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
		<div class="col-md-1"></div>
		<div class="col-md-5">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h2 class="panel-title"><span class="glyphicon glyphicon-calendar"></span>&nbsp;&nbsp;Today's appointments</h2>
				</div>
                                 <% 
                            //The date need to change according to current date
                            ResultSet ResultSet = myStatement.executeQuery("SELECT main_table.firstname from main_table, appointment, schedule where appointment.schedule_ID = Schedule.Schedule_ID and Schedule.USer_ID = main_table.user_ID");                                                     
                                                %>
				<div class="panel-body">
					<table class="table table-hover table-condensed">
						<thead>
							<tr>
								<th>Patient name</th>
								<th>GP</th>
							</tr>
						</thead>
                                               
						<tbody>
							<tr>
                                                            <td>
                                                               
                                                            </td>   
                                                        </tr>    
                                                                                                    
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
                            ResultSet myResultSet = myStatement.executeQuery("SELECT main_table.FirstName, main_table.LastName, schedule.User_ID FROM main_table, schedule WHERE schedule.Date =  '2014-01-12' AND schedule.User_ID = main_table.User_ID");                                                     
                            
                            %>
				<div class="panel-body">
					<table class="table table-hover table-condensed">
						<thead>
							<tr>
								<th>User ID</th>
                                                                <th>First Name</th>
                                                                <th>Last Name</th>
                                                       
							</tr>
						</thead>
						<tbody>                                                    
							<tr>
                                                            <td>
                                                                haha
                                                                
                                                            </td>
                                                            <td>
                                                                haha
                                                                
                                                            </td>
                                                             <td>
                                                                 haha
                                                                
                                                            </td>
                                                
							</tr>	
                                                        <%}%>
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