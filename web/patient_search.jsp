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
    String dob = "";
    /*Search patientID */
    if(request.getParameter("patientID")!=null && request.getParameter("patientID")!= "") {
        PID = request.getParameter("patientID");
        result = myStatement.executeQuery("SELECT * FROM patient WHERE Patient_ID = '" +PID+"'");
        /*Get User ID*/
        if(result!=null){
            while(result.next()) { UID = result.getString("User_ID");}
        }
        /* Using the User_ID get the other details, name, sex etc */
        result = myStatement.executeQuery("SELECT * FROM main_table WHERE User_ID = '" +UID+"'");
    }
    //Search Name
    if(request.getParameter("name")!=null && request.getParameter("name")!= ""){
        name = request.getParameter("name");
        result = myStatement.executeQuery("SELECT * FROM main_table WHERE Category = 'Patient' "
                + "AND FirstName LIKE '%"+name+"%' OR LastName LIKE '%"+name+"%'");
        /*Get User ID then Patient_ID*/
        if(result!=null){
            while(result.next()) { UID = result.getString("User_ID");}
            /* Using the User_ID get the other details, name, sex etc */
            result = myStatement.executeQuery("SELECT * FROM patient WHERE User_ID = '" +UID+"'");
            while(result.next()) { PID = result.getString("Patient_ID");}
        }
        result = myStatement.executeQuery("SELECT * FROM main_table WHERE Category = 'Patient' "
                + "AND FirstName LIKE '%"+name+"%' OR LastName LIKE '%"+name+"%'");
    }
    
    if(request.getParameter("dob")!=null && request.getParameter("dob")!= "" ){
        dob = request.getParameter("dob");
        result = myStatement.executeQuery("SELECT * FROM main_table WHERE Category = 'Patient' "
                + "AND DateOFBirth = '" + dob + "'");
        if(result!=null){
            while(result.next()) { UID = result.getString("User_ID");}
            /* Using the User_ID get the other details, name, sex etc */
            result = myStatement.executeQuery("SELECT * FROM patient WHERE User_ID = '" +UID+"'");
            while(result.next()) { PID = result.getString("Patient_ID");}
        }
        result = myStatement.executeQuery("SELECT * FROM main_table WHERE Category = 'Patient' "
                + "AND DateOFBirth = '" + dob + "'");
    }
    
    
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
			<form class="form-inline" role="form" method="post">
				<div class="form-group">
					<div class="input-group">
						<div class="input-group-addon"><span class="glyphicon glyphicon-user"></span></div>
						<input name="name" type="search" class="form-control" id="search" placeholder="Name">
					</div>
				</div>
				<div class="form-group">
					<div class='input-group date' id='birthDate'>
						<span class="input-group-addon">
							<span class="glyphicon glyphicon-calendar"></span>
						</span>
						<input name="dob" type='text' class="form-control" data-date-format="YYYY-MM-DD" placeholder="Birth date">
					</div>
				</div>
				<button name="submit" type="submit" class="btn btn-primary">Search</button>
			</form><br>
			<p>Or</p>
			<form class="form-inline" role="form" method="post">
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
				<button name="submit" type="submit" class="btn btn-primary">Search</button>
			</form>
			<br>
			<!--h4>3 result(s) found</h4><br-->
			<table class="table table-hover table-condensed">
				<thead>
                                <%if(request.getParameter("submit")!=null){
                                    if(result!=null) {
                                %>
                                    
					<tr>
						<th></th>
						<th>Patient ID</th>
						<th>Identification Card</th>
						<th>First name</th>
						<th>Last name</th>
						<th>Sex</th>
						<th>Personal contact</th>
					</tr>
                                <%
                                        }
                                    }
                                %>
				</thead>
				<tbody>
                                <%
                                    if (result!=null) {
                                        while(result.next()) {
                                            String fName = result.getString("FirstName");
                                            String lName = result.getString("LastName");
                                            String IC = result.getString("IC/Passport");
                                            String Phone = result.getString("PhoneNumber");
                                            String sex = result.getString("Sex");
                                %>
					<tr>
						<td><a class="btn btn-default btn-sm" href="patient_detail.jsp" role="button">Select</a></td>
						<td><%=PID.toUpperCase()%></td>
						<td><%=IC%></td>
						<td><%=fName%></td>
						<td><%=lName%></td>
                                                <td><%=sex%></td>
						<td><%=Phone%></td>
					</tr>
                                <%
                                        }
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
