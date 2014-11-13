<!-- If not logged in redirect to login.jsp -->
<% if (session.getAttribute("login") == null || session.getAttribute("login") == "false") {response.sendRedirect("login.jsp");} %>

<!-- The NavBar -->
<jsp:include page="navbar.jsp"></jsp:include>


		<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- Testing with new version JQuery 2.1.1 -->
	<script src="assets/js/jquery-2.1.1.min.js"></script>
	</body>
</html>