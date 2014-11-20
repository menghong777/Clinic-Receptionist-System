<%@page import="java.sql.*"%>
<% 
    /*For page tab/button/menu active state */
    session.setAttribute("pagetitle","Patient Search");
    session.setAttribute("tab","search");
    session.setAttribute("patientMenu","search");
  
    /*Database connection */
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/clinic_receptionist", "root", "");
    Statement myStatement = con.createStatement(); 
    ResultSet result  = null;
    String PID = "";
    String name = "";
    String UID = "";
    /*Search patientID */
    if(request.getParameter("patientID")!=null) {
        PID = request.getParameter("patientID");
        result = myStatement.executeQuery("SELECT * FROM patient WHERE Patient_ID = '" +PID+"'");
    }
    //Search Name + Birthdate
    if(request.getParameter("name")!=null){
        name = request.getParameter("name");
        result = myStatement.executeQuery("SELECT * FROM main_table WHERE FirstName LIKE '%"+name+"%' OR LastName LIKE '%"+name+"%'");
    }
    /*Get User ID*/
    if(result!=null){
        while(result.next()) { UID = result.getString("User_ID");}
        
    }    
    result = myStatement.executeQuery("SELECT * FROM main_table WHERE User_ID = '" +UID+"'");
%>
<!doctype html>
<html lang="en">
	<head>
		<link rel="stylesheet" href="assets/css/bootstrap-datetimepicker.min.css">
		
		<jsp:include page="head.jsp"></jsp:include>
	</head>
	<body>
		<!-- The NavBar -->
		<jsp:include page="navbar.jsp"></jsp:include>

		<div class="col-md-3">
			<jsp:include page="nav_patient_search_add.jsp"></jsp:include>
		</div>
		<div class="col-md-9">
			<div class="page-header"><h2>Search and select a patient</h2></div>
			<form class="form-inline" role="form" method="post">
				<div class="form-group">
					<div class="input-group">
						<div class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></div>
						<input name="patientID" type="search" class="form-control" id="search" placeholder="Patient ID">
					</div>
				</div>
				<button name="submit" type="submit" class="btn btn-primary">Search</button>
			</form><br>
			<p>Or</p>
			<form class="form-inline" role="form">
				<div class="form-group">
					<div class="input-group">
						<div class="input-group-addon"><span class="glyphicon glyphicon-user"></span></div>
						<input type="search" class="form-control" id="search" placeholder="Name">
					</div>
				</div>
				<div class="form-group">
					<div class='input-group date' id='birthDate'>
						<span class="input-group-addon">
							<span class="glyphicon glyphicon-calendar"></span>
						</span>
						<input type='text' class="form-control" data-date-format="DD/MM/YYYY" placeholder="Birth date">
					</div>
				</div>
				<button type="submit" class="btn btn-primary">Search</button>
			</form><br>
			<p>Or</p>
			<form class="form-inline" role="form">
				<div class="form-group">
					<div class="input-group">
						<div class="input-group-addon"><span class="glyphicon glyphicon-user"></span></div>
						<input type="search" class="form-control" id="search" placeholder="Name">
					</div>
				</div>
				<div class="form-group">
					<div class="input-group">
						<div class="input-group-addon"><span class="glyphicon glyphicon-home"></span></div>
						<input type="search" class="form-control" id="search" placeholder="Address">
					</div>
				</div>
				<button type="submit" class="btn btn-primary">Search</button>
			</form>
			<br>
			<!--h4>3 result(s) found</h4><br-->
			<table class="table table-hover table-condensed">
				<thead>
                                <%if(request.getParameter("submit")!=null){%>
					<tr>
						<th></th>
						<th>Patient ID</th>
						<th>Identification Card</th>
						<th>First name</th>
						<th>Last name</th>
						<th>Sex</th>
						<th>Personal contact</th>
					</tr>
                                <%}%>                        
				</thead>
				<tbody>
                                <%
                                    while(result.next()) {
                                        String fName = result.getString("FirstName");
                                        String lName = result.getString("LastName");
                                        String IC = result.getString("IC/Passport");
                                        String Phone = result.getString("PhoneNumber");
                                        String sex = result.getString("Sex");
                                %>
					<tr>
						<td><a class="btn btn-default btn-sm" href="patient_detail.jsp" role="button">Select</a></td>
						<td><%=PID%></td>
						<td><%=IC%></td>
						<td><%=fName%></td>
						<td><%=lName%></td>
                                                <td><%=sex%></td>
						<td><%=Phone%></td>
					</tr>
                                <%
                                    }
                                %>
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
		<script src="assets/js/moment.min.js"></script>
		<script src="assets/js/bootstrap-datetimepicker.min.js"></script>
		<!-- JavaScript Birth date -->
		<script type="text/javascript">
			$(function () {
				$('#birthDate').datetimepicker({
					pickTime: false
				});
			});
		</script>
	</body>
</html>