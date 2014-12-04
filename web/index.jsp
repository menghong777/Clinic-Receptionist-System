<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.*"%>
<%@ page import="java.io.*,java.util.Locale" %>
<%@ page import="java.text.*,java.util.Date" %>
<% 
    /*For page tab/button/menu active state */
    session.setAttribute("pagetitle","Home");
    session.setAttribute("tab","home"); 
    
    Class.forName("com.mysql.jdbc.Driver");
    try {
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/clinic_receptionist", "root", "");
    Statement myStatement = con.createStatement();  
    ResultSet myResultSet = null;
    ResultSet ResultSet = null;
    
    Date d = new Date(); //request for locale date
    SimpleDateFormat formatter=new SimpleDateFormat("EEEE, d MMMM yyyy");
    String date=formatter.format(d);
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
		<div class="col-md-1"></div>
		<div class="col-md-5">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h2 class="panel-title"><span class="glyphicon glyphicon-calendar"></span>&nbsp;&nbsp;Today's appointments</h2>
				</div>                                
				<div class="panel-body">
                            <% 
                            //get the patient name 
                            myResultSet = myStatement.executeQuery("SELECT main_table.firstname AS gp FROM main_table, appointment, gp WHERE appointment.gp_ID = gp.gp_ID AND gp.User_ID = main_table.User_ID");                                                                                    
                            %>
					<table class="table table-hover table-condensed">
						<thead>
							<tr>								
								<th>GP</th>
							</tr>
						</thead>                                               
						<tbody>
                                                    <tr>
                                                    <% while(myResultSet.next()) { %>
                                                            <td>
                                                                <%= myResultSet.getString("gp")%>                                                               
                                                            </td>
                                                            <%} %>
                                                    </tr> 
                                                <thead>
							<tr>								
								<th>Patient</th>
							</tr>
						</thead>     
                            <%                                                    
                            myResultSet = myStatement.executeQuery("SELECT main_table.firstname AS patient FROM main_table, patient, appointment WHERE appointment.patient_ID = patient.Patient_ID AND patient.User_ID = main_table.User_ID");                            
                            %>                                                                                                    
						</tbody>
                                                <tbody>
                                                    <tr>
                                                    <% while(myResultSet.next()) { %>							                                                  
                                                            <td>
                                                                <%= myResultSet.getString("patient")%>                                                               
                                                            </td>                                                                                                                
                                                        <%}%>
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
                            myResultSet = myStatement.executeQuery("SELECT main_table.FirstName, main_table.LastName, schedule.User_ID FROM main_table, schedule WHERE schedule.Date =  '2014-01-12' AND schedule.User_ID = main_table.User_ID");                            
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
                                                    <% while(myResultSet.next()) { %>
							<tr>
                                                            <td>
                                                                <%= myResultSet.getString("User_ID")%>                                                               
                                                            </td>
                                                            <td>
                                                                <%= myResultSet.getString("FirstName")%>                                                                
                                                            </td>
                                                             <td>
                                                                <%= myResultSet.getString("LastName")%>                                                                
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