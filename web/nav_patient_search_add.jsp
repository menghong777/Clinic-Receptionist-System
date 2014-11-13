<div class="text-center"><h4>Menu</h4></div>
<ul class="nav nav-pills nav-stacked">
<!-- <li><a href="#">Search</a></li> -->
<li class="<% if(session.getAttribute("patientMenu")=="search"){out.println("active");}%>"><a href="patient_search.jsp"><span class="glyphicon glyphicon-search"></span>&nbsp;&nbsp;Search patient</a></li>
<li class="<% if(session.getAttribute("patientMenu")=="add"){out.println("active");}%>"><a href="patient_add.jsp"><span class="glyphicon glyphicon-plus"></span>&nbsp;&nbsp;Add patient</a></li>
</ul>