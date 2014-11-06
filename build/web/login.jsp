<%@page import="java.sql.*"%>
<!doctype html>
<html lang="en">
	<head>
		<!-- Character set -->
		<meta charset="utf-8" />
		<!-- IE compatible mode: edge=highest version supported -->
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />

		<!-- favicon.ico -->
		<link rel="shortcut icon" href="" />

		<!-- Website title -->
		<title>Log in | Over Surgery</title>

		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="assets/css/bootstrap.min.css">
		<!-- Optional theme -->
		<!-- <link rel="stylesheet" href="assets/css/bootstrap-theme.min.css"> -->

		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
			<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
		<style>
		body{
		    background: #000000 url('assets/img/bg1.jpg') no-repeat fixed center; 
		    background-size: 1366px 768px;
		}
		</style>
	</head>
	<body>
	<br><br><br><br><br><br><br><br><br>
	<p class="text-center">
	<img src="assets/img/logo.png" width="200px" height="200px">
	</p>
	<br><br>
  	<div class="col-md-6 col-md-offset-3">
			<form class="form-horizontal" role="form">
			  <div class="form-group">
			    <div class="col-sm-offset-3 col-sm-6">
			      <input type="text" class="form-control" id="inputId" placeholder="ID" name="username">
			    </div>
			  </div>
			  <div class="form-group">
			    <div class="col-sm-offset-3 col-sm-6">
			      <input type="password" class="form-control" id="inputPassword" placeholder="Password" name="password">
			    </div>
			  </div>
			  <div class="form-group">
			    <div class="col-sm-offset-3 col-sm-6">
			      <button type="submit" class="btn btn-primary btn-lg btn-block">Log in</button>
			    </div>
			  </div>
			</form>
		</div>
		
		<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="assets/js/bootstrap.min.js"></script>
	</body>
</html>


<%
    //Database Connection
    String username = "root";
    String password = "";
    String conStr = "jdbc:mysql://localhost:3306/CRS";
    String user = " ";
    String pass = " ";
    Class.forName("com.mysql.jdbc.Driver");  
    
    Connection con = DriverManager.getConnection(conStr, username, password);
    Statement myStatement = con.createStatement();
    
    ResultSet myResultSet = myStatement.executeQuery("SELECT * FROM receptionist");
    while (myResultSet.next()) {
            user = myResultSet.getString("userID");
            pass = myResultSet.getString("password");
    }
%>

<%=user + " " + pass %>