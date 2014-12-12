<%@page import="java.sql.*"%>
<%@include file="WEB-INF/connection.jsp"%>
<% 
    /*For page tab/button/menu active state */
    session.setAttribute("pagetitle","Patient Detail");
    session.setAttribute("tab","search");
    session.setAttribute("patientDetailMenu","detail");
    
    /*Database connection */
    Connection con = DriverManager.getConnection(host, username, password);
    Statement myStatement = con.createStatement();
    
    /* Get PID from previous search page */
    String PID = (String)session.getAttribute("PID");
    PID = PID.toUpperCase();
    
    /*Declaration */
    String UID = "";
    String IC = "";
    String fName = "";
    String lName = "";
    String address = "";
    String phone = "";
    String dob = "";
    String sex = "";
    String eContact = "";
    String eName = "";
    String eRelation = "";
    
    ResultSet result = myStatement.executeQuery("SELECT * FROM patient WHERE Patient_ID = '" +PID+"'");
    /*Get data from patient table*/
    if(result!=null){
        while(result.next()) { 
            UID = result.getString("User_ID");
            eContact = result.getString("EmergencyContact");
            eName = result.getString("EmergencyName");
            eRelation = result.getString("EmergencyRelationship");
        }
    }
    /* Using the User_ID get the other details, name, sex etc */
    result = myStatement.executeQuery("SELECT * FROM main_table WHERE User_ID = '" +UID+"'");
    
    
    /*Get the value from database */
    while(result.next()) {
        IC = result.getString("IdentificationID");
        fName = result.getString("FirstName");
        lName = result.getString("LastName");
        address = result.getString("Address");
        phone = result.getString("PhoneNumber");
        dob = result.getString("DateOFBirth");
        sex = result.getString("Sex");
    }
    
    /*to be used on other page */
    session.setAttribute("name",fName+" "+lName);
%>
<!doctype html>
<html lang="en">
	<head>
		<jsp:include page="head.jsp"></jsp:include>

		<link rel="stylesheet" href="assets/css/bootstrap-datetimepicker.min.css">
	</head>
	<body>
		<!-- The NavBar -->
		<jsp:include page="navbar.jsp"></jsp:include>

		<div class="col-md-3">
			<jsp:include page="nav_patient_detail.jsp"></jsp:include>
		</div>
		<div class="col-md-9">
			<div class="page-header"><h2><jsp:include page="nav_back_patient_search.jsp"></jsp:include>&nbsp;Patient <small>ID: <%=PID%></small></h2></div>
			<form class="form-horizontal" role="form">
				<div class="form-group">
					<label class="col-sm-2 control-label">IC number</label>
					<div class="col-sm-10">
						<p class="form-control-static"><%=IC%></p>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Name</label>
					<div class="col-sm-10">
						<p class="form-control-static"><%=fName + " " + lName%></p>
					</div>
				</div>
			  <div class="form-group">
					<label class="col-sm-2 control-label">Address</label>
					<div class="col-sm-10">
						<p class="form-control-static"><%=address%></p>
					</div>
				</div>
			  <div class="form-group">
					<label class="col-sm-2 control-label">Personal contact</label>
					<div class="col-sm-10">
						<p class="form-control-static"><%=phone%></p>
						<!-- Input type type="tel" is currently supported only in Safari 8 -->
			    	</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Birth date</label>
					<div class="col-sm-10">
						<p class="form-control-static"><%=dob%></p>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Sex</label>
					<div class="col-sm-10">
						<p class="form-control-static"><%=sex%></p>
					</div>
				</div>
		<div class="page-header"><h2>Emergency contact information</h2></div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Name</label>
					<div class="col-sm-10">
						<p class="form-control-static"><%=eName%></p>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Relationship</label>
					<div class="col-sm-10">
						<p class="form-control-static"><%=eRelation%></p>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Emergency contact</label>
					<div class="col-sm-10">
						<p class="form-control-static"><%=eContact%></p>
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
		<script src="assets/js/bootstrap.min.js"></script>
	</body>
</html>