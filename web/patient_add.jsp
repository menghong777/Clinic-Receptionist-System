<%@page import="java.sql.*"%>
<%@include file="WEB-INF/connection.jsp"%>
<%
    /*For dynamic title and tab selected on each page*/
    session.setAttribute("pagetitle","Add Patient");
    session.setAttribute("tab","search");
    session.setAttribute("patientMenu","add");
    session.setAttribute("status","");
    
    
    String fname="", lname="", IC="", phone="", sex="", street="", city="", postcode="", address="", dob="";
    String name="", relationship="", contact="";
    
    //general info sticky part
    if ((String) request.getParameter("IC") != null && !request.getParameter("IC").equals("")) {
        IC =  request.getParameter("IC");
        session.setAttribute("IC", IC);
    }
        
    if ((String) request.getParameter("fname") != null && !request.getParameter("fname").equals("")) {
        fname =  request.getParameter("fname");
        session.setAttribute("fname", fname);
    }
    
    if ((String) request.getParameter("lname") != null && !request.getParameter("lname").equals("")) {
        lname =  request.getParameter("lname");
        session.setAttribute("lname", lname);
    }
    
    if ((String) request.getParameter("phone") != null && !request.getParameter("phone").equals("")) {
        phone =  request.getParameter("phone");
        session.setAttribute("phone", phone);
    }
    
    if ((String) request.getParameter("street") != null && !request.getParameter("street").equals("")) {
        street =  request.getParameter("street");
        session.setAttribute("street", street);
    }
    
    if ((String) request.getParameter("city") != null && !request.getParameter("city").equals("")) {
        city =  request.getParameter("city");
        session.setAttribute("city", city);
    }
    
    if ((String) request.getParameter("postcode") != null && !request.getParameter("postcode").equals("")) {
        postcode =  request.getParameter("postcode");
        session.setAttribute("postcode", postcode);
    }
    
    if ((String) request.getParameter("sex") != null && !request.getParameter("sex").equals("")) {
        sex =  request.getParameter("sex");
        session.setAttribute("sex", sex);
    }
    
    if ((String) request.getParameter("dob") != null && !request.getParameter("dob").equals("")) {
        dob =  request.getParameter("dob");
        session.setAttribute("dob", dob);
    }
    
    address = street + " " + city + " " + postcode;
    
    //emergency info sticky part
    
    if ((String) request.getParameter("name") != null && !request.getParameter("name").equals("")) {
        name =  request.getParameter("name");
        session.setAttribute("name", name);
    }
    
    if ((String) request.getParameter("relationship") != null && !request.getParameter("relationship").equals("")) {
        relationship =  request.getParameter("relationship");
        session.setAttribute("relationship", relationship);
    }
    
    if ((String) request.getParameter("contact") != null && !request.getParameter("contact").equals("")) {
        contact =  request.getParameter("contact");
        session.setAttribute("contact", contact);
    }

    /*For page tab/button/menu active state */
    Connection con = DriverManager.getConnection(host, username, password);
    Statement myStatement = con.createStatement();
    
    //userID
    ResultSet result = myStatement.executeQuery("SELECT User_ID FROM main_table ORDER BY User_ID DESC LIMIT 1");
    String userID="";
    while(result.next()) {
        userID = result.getString("User_ID");
    }
    int userNum = Integer.parseInt(userID.substring(2));
    int userid = userNum + 1;
    String user="";
    String OneZero="0";
    String TwoZero="00";
    String us="US";
    
    if(userid >= 10 && userid<= 99 )
        user = us + OneZero + userid;
    if(userid <= 9)
        user = us + TwoZero + userid;
    
    //patientID
    ResultSet result2 = myStatement.executeQuery("SELECT Patient_ID FROM patient ORDER BY User_ID DESC LIMIT 1");
    String paID="";
    while(result2.next()) {
        paID = result2.getString("Patient_ID");
    }
    int paNum = Integer.parseInt(paID.substring(2));
    int patientID = paNum + 1;
    String OneZero1="0";
    String TwoZero2="00";
    String patient="";
    String pt="PT";
    
    if(patientID >= 10 && patientID<= 99 )
        patient = pt + OneZero1 + patientID;
    if(patientID <= 9)
        patient = pt + TwoZero2 + patientID;
    
    boolean condition=false;
    //general info
    if(IC != null && fname != null && lname != null && street != null && 
            city != null && postcode != null && phone != null && sex != null && dob != null && dob != ""
            && name != null && relationship != null && contact != null 
            
            ) {
        condition=true;
        
        myStatement.execute("INSERT INTO `clinic_receptionist`.`main_table` "
            + "(`User_ID`, `FirstName`, `LastName`, `Address`, `identificationID`, `PhoneNumber`, `DateOFBirth`, `Category`, `Sex`, `TimeStamp`) "
            + "VALUES ('"+ user +"', '" + fname + "', '"+ lname + "', '" + address  + "', '" + IC +"', '"+ phone +"', "
            + "'"+ dob +"', 'Patient', '" + sex + "', CURRENT_TIMESTAMP);"); 
              
        myStatement.execute("INSERT INTO `clinic_receptionist`.`patient` (`Patient_ID`, `User_ID`, `EmergencyName`, "
            + "`EmergencyRelationship`, `EmergencyContact`, `TimeStamp`) "
            + "VALUES ('" + patient +"', '"+ user +"', '"+ name +"', '"+ relationship +"', '"+ contact +"', CURRENT_TIMESTAMP);");
        
           session.setAttribute("status", "<div class='alert alert-success' role='alert'><b>Done!</b> Patient information saved successfully.</div>");
    }
    if(request.getParameter("submit")!=null) {
        if(  
           IC == null || fname == null || lname == null || street == null || city == null || postcode == null 
                || phone == null || sex == null || dob == null || dob == ""
                || name == null || relationship == null || contact == null ) {
            
            //condition = false;
            session.setAttribute("status", "<div class='alert alert-danger' role='alert'><b>Oh snap!</b> Change a few things up and try submitting again.</div>");
        } 
    }
        if(condition == true) {
           session.setAttribute("IC","");
           session.setAttribute("fname","");
           session.setAttribute("lname","");
           session.setAttribute("street","");
           session.setAttribute("city","");
           session.setAttribute("postcode",""); 
           session.setAttribute("phone","");
           session.setAttribute("sex","");
           session.setAttribute("dob","");
           session.setAttribute("name", "");
           session.setAttribute("relationship", "");
           session.setAttribute("contact","");
           
           fname="";
           lname="";
           IC="";
           phone="";
           sex="";
           street="";
           city="";
           postcode="";
           address="";
           dob="";
           name="";
           relationship="";
           contact="";
        }
        
        if(request.getParameter("reset")!= null) {
            session.setAttribute("IC","");
           session.setAttribute("fname","");
           session.setAttribute("lname","");
           session.setAttribute("street","");
           session.setAttribute("city","");
           session.setAttribute("postcode",""); 
           session.setAttribute("phone","");
           session.setAttribute("sex","");
           session.setAttribute("dob","");
           session.setAttribute("name", "");
           session.setAttribute("relationship", "");
           session.setAttribute("contact","");
           
           fname="";
           lname="";
           IC="";
           phone="";
           sex="";
           street="";
           city="";
           postcode="";
           address="";
           dob="";
           name="";
           relationship="";
           contact="";
        }
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

  <div class="container-fluid">
		<div class="col-md-3">
			<jsp:include page="nav_patient_search_add.jsp"></jsp:include>
		</div>
		<div class="col-md-9">
			<div class="page-header"><h2>General information</h2></div>
			<!-- Head up display for displaying information -->
                <%= session.getAttribute("status") %>
			<form class="form-horizontal" role="form" method="post">
			  <div class="form-group">
			    <label for="IC" class="col-sm-2 control-label">IC number</label>
			    <div class="col-sm-10">
                                <input type="text" class="form-control" id="IC" placeholder="IC number" 
                                       name="IC" value="<%= IC %>">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="name" class="col-sm-2 control-label">Name</label>
			    <div class="col-sm-5">
			      <input type="text" class="form-control" id="firstName" placeholder="First name" 
                                     name="fname" value="<%= fname %>">
			    </div>
			    <div class="col-sm-5">
			      <input type="text" class="form-control" id="lastName" placeholder="Last name" 
                                     name="lname" value="<%= lname %>">
			    </div>
			  </div>
<!-- 			  <div class="form-group">
			    <label for="lastName" class="col-sm-2 control-label">Last name</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="lastName" placeholder="Last name">
			    </div>
			  </div> -->
			  <div class="form-group">
			    <label for="addressStreet" class="col-sm-2 control-label">Address</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="addressStreet" placeholder="Unit number and street"
                                     name="street" value="<%= street %>">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="addressCity" class="col-sm-2 control-label"></label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="addressCity" placeholder="City"
                                     name="city" value="<%= city %>">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="addressPostcode" class="col-sm-2 control-label"></label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="addressPostcode" placeholder="Postcode"
                                     name="postcode" value="<%= postcode %>">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="contact" class="col-sm-2 control-label">Personal contact</label>
			    <div class="col-sm-10">
			      <input type="tel" class="form-control" id="contact" placeholder="Mobile or home"
                                     name="phone" value="<%= phone %>">
			      <!-- Input type type="tel" is currently supported only in Safari 8 -->
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="dob" class="col-sm-2 control-label">Birth date</label>
			    <div class="col-sm-10">
			      <!-- <input type="date" class="form-control" id="dob" placeholder="Birth date"> -->
			    	<div class='input-group date' id='birhDateInput'>
						<span class="input-group-addon">
							<span class="glyphicon glyphicon-calendar"></span>
						</span>
						<input type='text' class="form-control" data-date-format="YYYY-MM-DD" 
                                                       placeholder="Birth date" name="dob" value="<%= dob %>">
					</div>
					<p class="help-block"><span class="glyphicon glyphicon-info-sign"></span>&nbsp;Press the calendar icon to pick a date.</p>
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="sex" class="col-sm-2 control-label">Sex</label>
			    <div class="col-sm-10">
			      <div class="radio">
						  <label>
						    <input type="radio" name="sex" id="sexMale" value="Male" checked>
						    Male
						  </label>
						</div>
						<div class="radio">
						  <label>
						    <input type="radio" name="sex" id="sexFemale" value="Female">
						    Female
						  </label>
						</div>
			    </div>
			  </div>
			  <!-- <div class="row">
					<div class="col-md-12"><h2>Emergency contact information</h2></div><br>
				</div> -->
				<div class="page-header"><h2>Emergency contact information</h2></div>
			  <div class="form-group">
			    <label for="emergencyName" class="col-sm-2 control-label">Name</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="emergencyName" placeholder="Name"
                                     name="name" value="<%= name %>">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="emergencyRelationship" class="col-sm-2 control-label">Relationship</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="emergencyRelationship" placeholder="Relationship"
                                     name="relationship" value="<%= relationship %>">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="emergencyPhone" class="col-sm-2 control-label">Emergency contact</label>
			    <div class="col-sm-10">
			      <input type="tel" class="form-control" id="emergencyContact" placeholder="Emergancy mobile"
                                     name="contact" value="<%= contact %>">
			    </div>
			  </div>
			  <div class="form-group">
			    <div class="col-sm-offset-2 col-sm-10">
			      <button name="submit" type="submit" class="btn btn-success"><span class="glyphicon glyphicon-ok"></span>&nbsp;&nbsp;Save</button>
			      <button name="reset" type="submit" class="btn btn-default"><span class="glyphicon glyphicon-remove"></span>&nbsp;&nbsp;Clear all</button>
			    </div>
			  </div>
			</form>
		</div>
  </div>

		<!-- Bootstrap core JavaScript
		================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<!-- Testing with new version JQuery 2.1.1 -->
		<!-- JQuery MUST put before Bootstrap JS because Bootstrap needs to read the file first -->
		<script src="assets/js/jquery-2.1.1.min.js"></script>
		<script src="assets/js/moment.min.js"></script>
		<script src="assets/js/bootstrap-datetimepicker.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
		<!-- JavaScript - Birth Date Input -->
		<script type="text/javascript">
			$(function () {
				$('#birhDateInput').datetimepicker({
					pickTime: false
				});
			});
		</script>
	</body>
</html>