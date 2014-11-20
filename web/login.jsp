<%@page import="java.sql.*"%>
<%  
    String formUsername = request.getParameter("username");
    String formPassword = request.getParameter("password");
    session.setAttribute("error","");
    //Database Connection
    String user = " ";
    String pass = " ";
    String fname = "";
    Class.forName("com.mysql.jdbc.Driver");
    try {
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/clinic_receptionist", "root", "");
    Statement myStatement = con.createStatement();   
   

            if(formUsername != null && formPassword != null) {
    ResultSet myResultSet = myStatement.executeQuery("SELECT receptionist.*, main_table.FirstName FROM receptionist, main_table Where receptionist.User_ID = '"+formUsername+"' and main_table.User_ID = '"+formUsername+"'");
    while (myResultSet.next()) {
            user = myResultSet.getString("User_ID");
            pass = myResultSet.getString("Password");
            fname = myResultSet.getString("FirstName");
            }
                if (formUsername.equals(user) && formPassword.equals(pass)) {
                    session.setAttribute("login",fname);
                    session.setAttribute("error","");
                    RequestDispatcher view = request.getRequestDispatcher("index.jsp");
                    view.forward(request, response);
                //    break; 
                } else {
                    session.setAttribute("login","false");
                    session.setAttribute("error","Wrong username or password");
                }
            } //this code it didn't execute dono why
            else if(formUsername == "" || formPassword == "") {
                session.setAttribute("login","false");
                session.setAttribute("error","Missing User or pass");
               // break;
            }
            if(formUsername != null && formPassword != null &&
                    !formUsername.equals(user) && !formPassword.equals(pass)) {
                
                session.setAttribute("error","Wrong username or password");
            }
           
    
    
    } catch (SQLException sql) {
        session.setAttribute("error","ERROR: Did you start your MySQL server?"+sql);
    }
%> 
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
		<title>Login | Over Surgery</title>

		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="assets/css/bootstrap.min.css">
		<!-- Optional theme -->
		<!-- <link rel="stylesheet" href="assets/css/bootstrap-theme.min.css"> -->
		<link rel="stylesheet" href="assets/css/responsive-calendar.css">
		<link rel="stylesheet" href="assets/css/bootstrap-datetimepicker.min.css">

		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
			<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
		<style>
			body {
				padding-top: 70px;
				background: #ffffff url('assets/img/bg.jpeg') no-repeat fixed center;
                                background-size: 100%;
			}
                        error {
                            color: rgba(215, 40, 40, 0.7);
                        }
		</style>
	</head>
	<body>
		<nav class="navbar navbar-default navbar-static-top navbar-fixed-top" role="navigation">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">Over Surgery</a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<!-- <li class="active"><a href="#">Link</a></li> -->
						<!-- <li><a href="#">Link</a></li> -->
					</ul>
					<form class="navbar-form navbar-right" role="login" method="post">
                                            <div class="form-group">
                                                <%if(session.getAttribute("error")!=null){out.println(session.getAttribute("error"));}%>&nbsp
                                            </div>
                                            <div class="form-group error">
                                                    <div class="input-group">
                                                            <div class="input-group-addon"><span class="glyphicon glyphicon-user"></span></div>
                                                            <input type="text" class="form-control" placeholder="Staff ID" name="username">
                                                    </div>
                                            </div>
                                            <div class="form-group">
                                                    <div class="input-group">
                                                            <div class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></div>
                                                            <input type="password" class="form-control" placeholder="Password" name="password">
                                                    </div>
                                            </div>
                                            <button type="submit" class="btn btn-primary">Login</button>
					</form>
				</div><!-- /.navbar-collapse -->
			</div><!-- /.container-fluid -->
		</nav>
		<!-- Bootstrap core JavaScript
		================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<!-- Testing with new version JQuery 2.1.1 -->
		<!-- JQuery MUST put before Bootstrap JS because Bootstrap needs to read the file first -->
		<script src="assets/js/jquery-2.1.1.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
	</body>
</html>


