<% 
    if (session.getAttribute("login") == null || 
            session.getAttribute("login") == "false") {
        RequestDispatcher view = request.getRequestDispatcher("login.jsp");
        view.forward(request, response);
    }
%>
<!-- Character set -->
<meta charset="utf-8" />

<!-- IE compatible mode: edge=highest version supported -->
<meta http-equiv="X-UA-Compatible" content="IE=edge" />

<!-- favicon.ico -->
<link rel="shortcut icon" href="" />

<!-- Website title -->
<title><%= session.getAttribute("pagetitle") %> | Over Surgery</title>

<style>
	body { padding-top: 70px; }
</style>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css">