<div class="text-center"><h4>Menu</h4></div>
<ul class="nav nav-pills nav-stacked">
<!-- <li><a href="#">Search</a></li> -->
<li class="<% if(session.getAttribute("patientDetailMenu")=="appointment"){out.println("active");}%>"><a href="patient_appointment.jsp"><span class="glyphicon glyphicon-calendar"></span>&nbsp;&nbsp;Appointment</a></li>
<li class="<% if(session.getAttribute("patientDetailMenu")=="prescription"){out.println("active");}%>"><a href="patient_prescription.jsp"><span class="glyphicon glyphicon-th-list"></span>&nbsp;&nbsp;Prescription</a></li>
<li class="<% if(session.getAttribute("patientDetailMenu")=="printReport"){out.println("active");}%>"><a href="patient_print.jsp"><span class="glyphicon glyphicon-print"></span>&nbsp;&nbsp;Print report</a></li>
</ul>