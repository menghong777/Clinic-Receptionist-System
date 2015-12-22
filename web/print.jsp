<%@page import="java.sql.*"%>
<%@include file="WEB-INF/connection.jsp"%>
<%
    /*Database connection */
    Connection con = DriverManager.getConnection(host, username, password);
    Statement myStatement = con.createStatement();
    ResultSet myResultSet  = null;
    
    String HealthID = (String)session.getAttribute("health_ID");
    myResultSet = myStatement.executeQuery("SELECT health_report.*, main_table.Firstname as GP_Name From health_report, gp, main_table where health_report.gp_ID = gp.gp_ID and gp.User_ID = main_table.User_ID and health_ID = '"+HealthID+"' ");    
    String bloodpressure = "";
    String heartbeat = "";
    String glucose = "";
    String urea_level = "";
    String weight = "";
    String height = "";
    String date = "";
    String GP_Name = "";    
    //to check if the result is 0
    String[] health = new String[7];

    //get the data from database
    while(myResultSet.next()){        
        health[0] = bloodpressure = myResultSet.getString("bloodpressure");
        health[1] = heartbeat = myResultSet.getString("heartbeat");
        health[2] = glucose = myResultSet.getString("glucose");
        health[3] = urea_level = myResultSet.getString("urea_level");
        health[4] = weight = myResultSet.getString("weight");    
        health[5] = height = myResultSet.getString("height");
        health[6] = date = myResultSet.getString("date");
        GP_Name = myResultSet.getString("GP_Name");
    }

    //this loop for loop the health array any of the value is 0 it will replace it to '-' it mean he didn't check
    for(int zero = 0; zero < health.length; zero++){
     //   if(health[zero].equals("0"))
    //        health[zero] = "~";       
    }
%>
<!doctype html>
<html lang="en">
	<head>
		<link rel="stylesheet" href="assets/css/print.css">
		<jsp:include page="head.jsp"></jsp:include>
	</head>
	<body>
		<header>
			<h3 class="text-center">Health Test Report</h3>
			<address>
				<p>1, Jalan Metro Pudu</p>
				<p>Business Fraser Park</p>
				<p>56000 Kuala Lumpur.</p>                                                       
			</address>
			<!-- <span><img alt="Over Surgery" src="logo.png"></span> -->
			<span><h2>Over Surgery</h2></span>
		</header>
		<article>
			<table class="table">
				<thead>
					<tr>
						<th>Test Name</th>
						<th>Value</th>
						<th>Result</th>
						<th>Normal range</th>						
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>Blood Pressure</td>
						<td>mm Hg</td>
						<td><%= bloodpressure%></td>
						<td>&lt;120</td>						
					</tr>
					<tr>
						<td>Heartbeat</td>
						<td>bpm</td>
						<td><%= heartbeat%></td>
						<td>70 ~ 120</td>						
					</tr>
					<tr>
						<td>Blood Sugar - Glucose</td>
						<td>g</td>
						<td><%= glucose%></td>
						<td>&lt;100</td>						
					</tr>
                                        <tr>
						<td>Urea Level</td>
						<td>g</td>
						<td><%= urea_level%></td>
						<td>12 ~ 20</td>						
					</tr>
					<tr>
						<td>Weight</td>
						<td>kg</td>
						<td><%= weight%></td>
						<td>50 ~ 70</td>						
					</tr>
					<tr>
						<td>Height</td>
						<td>cm</td>
						<td><%= height%></td>
						<td>-</td>						
					</tr>
				</tbody>
			</table>
		</article>
		<p>Prepared by: Dr. <%= GP_Name%></p>
		<p>Report date: <%= date%></p>
		<aside>
			<h4>Report Remark</h4>
			<div>
				<p>Please return for checking after 60 days.</p>
			</div>
		</aside>
		<br><br>
		<p class="text-center"><b>This is a computer generated report, no signature required.</b></p>
	</body>
</html>