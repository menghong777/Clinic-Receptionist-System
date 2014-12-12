<%@page import="java.sql.*"%>
<%@include file="WEB-INF/connection.jsp"%>
<% 
    /*For page tab/button/menu active state */
    session.setAttribute("pagetitle","Print Report");
    session.setAttribute("tab","search");
    session.setAttribute("patientDetailMenu","printReport");

    Connection con = DriverManager.getConnection(host, username, password);
    Statement myStatement = con.createStatement();  
    ResultSet myResultSet = null;

    String health_ID = "";
    String HID = "";
    String preview = "";
    String PID = (String)session.getAttribute("PID");

    myResultSet = myStatement.executeQuery("SELECT health_report.*, main_table.Firstname as GP_Name From health_report, gp, main_table where health_report.gp_ID = gp.gp_ID and gp.User_ID = main_table.User_ID and health_report.patient_ID = '"+PID+"'");
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
					</tr>
				</thead>
				<tbody>                                    
					
                                            <%while(myResultSet.next()){ 
                                          //  health_ID = myResultSet.getString("health_ID");%>
                                        <tr>        
                                            <td><form action="patient_print_preview.jsp" method="POST"><button name="preview" class="btn btn-default btn-sm" role="button"><span class="glyphicon glyphicon-eye-open"></span><%= myResultSet.getString("health_ID") %></button><input type="hidden" name="blah" value="<%= myResultSet.getString("health_ID")%>"></form></td>
						<td>General Report</td>
                                                <%/* health_ID = myResultSet.getString("health_ID"); 
                                                    preview = request.getParameter("preview");
                                                    preview = health_ID; 
                                                    session.setAttribute("health_ID",health_ID); */%>
                                                <td>
                                                    <%= myResultSet.getString("Date")%>
                                                </td>                                                
						<td>
                                                    Dr. <%= myResultSet.getString("gp_name") %>
                                                </td>	                                               
					</tr>  
                                            <%}//preview = request.getParameter("preview"); session.setAttribute("preview",preview);%>                                                                             
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