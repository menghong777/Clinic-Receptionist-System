<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.*"%>
<%@ page import="java.io.*,java.util.Locale" %>
<%@ page import="java.text.*,java.util.Date" %>
<% 
    /*For page tab/button/menu active state */
    session.setAttribute("pagetitle","Appoinment");
    session.setAttribute("tab","search");
    session.setAttribute("patientDetailMenu","appointment");
    
    /*Database connection */
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/clinic_receptionist", "root", "");
    Statement myStatement = con.createStatement();
    Statement doctorStatement = con.createStatement();
    Statement appointmentStatement = con.createStatement();
    Statement deleteStatement = con.createStatement();
    Statement changeStatement = con.createStatement();


    /* Get current date */
    Date d = new Date(); //request for locale date
    SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
    String dateC=sdf.format(d);
    
    /* Get PID from previous search page */
    String PID = (String)session.getAttribute("PID");
    String GP_ID = "";
    PID = PID.toUpperCase();
    ResultSet doctorList;
    
    /* Make Appointment */
    if(request.getParameter("makeAppointment") != null) {
        if(request.getParameter("doctorSelected") != null && request.getParameter("dateSelected") != null &&
                request.getParameter("doctorSelected") != "" && request.getParameter("dateSelected") != "")
        GP_ID = (String)request.getParameter("doctorSelected");
        appointmentStatement.execute("INSERT INTO appointment (Patient_ID, GP_ID, Date, Status) "
                + "VALUES ('"+PID+"','"+GP_ID+"','"+request.getParameter("dateSelected")+"','Pending' )");
        //Default set to pending
    }
    
    /* Remove appointment */
    if(request.getParameter("confirmCancel")!=null) {
        String appointmentID = request.getParameter("aID");
        deleteStatement.execute("DELETE FROM `clinic_receptionist`.`appointment` "
                + "WHERE `appointment`.`Appoinment_ID` ='"+appointmentID+"'");
    }
    
    /* Change appointment */
    if(request.getParameter("changeAppointment")!=null) {
        String appointmentID = request.getParameter("aIDc");
        String changeDate = request.getParameter("changedDate");
        changeStatement.execute("UPDATE `clinic_receptionist`.`appointment` "
                + "SET Date='"+changeDate+"' "
                + "WHERE `appointment`.`Appoinment_ID` ='"+appointmentID+"'");
    }
    
    /* Doctor List in the Make Appointment */
    doctorList = doctorStatement.executeQuery("SELECT main_table.LastName, gp.* FROM main_table, gp "
            + "WHERE main_table.Category = 'GP' AND main_table.User_ID = gp.User_ID");
    
    /* Query linking TABLE appointment + gp + main_table */
    ResultSet result = myStatement.executeQuery("SELECT appointment.*, main_table.LastName "
            + "FROM appointment, gp, main_table WHERE appointment.Patient_ID = '" +PID+"' "
            + "AND appointment.GP_ID = gp.GP_ID and gp.User_ID = main_table.User_ID ORDER BY appointment.Date");
%>
<!doctype html>
<html lang="en">
    <head>
        <jsp:include page="head.jsp"></jsp:include>

        <link rel="stylesheet" href="assets/css/bootstrap-datetimepicker.min.css">
        <script>
            var ID;
         </script>
    </head>
    <body>
        <!-- The NavBar -->
        <jsp:include page="navbar.jsp"></jsp:include>

        <div class="col-md-3">
            <jsp:include page="nav_patient_detail.jsp"></jsp:include>
        </div>
            <div class="col-md-9">
                <jsp:include page="info_patient.jsp"></jsp:include>
                <table class="table table-hover table-condensed">
                    <thead>
                        <tr>
                            <th></th>
                            <th>General practice ID</th>
                            <th>General practice name</th>
                            <th>Date</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%while(result.next()) {%>
                        <tr>
                            <td><button class="btn btn-warning btn-sm"  role="button" data-toggle="modal" data-target="#editModal"
                                        onclick="$('#aIDc').val('<%=result.getString("Appoinment_ID")%>')">
                                    <span class="glyphicon glyphicon-pencil"></span>&nbsp;&nbsp;Change</button>
                            <button value="<%=result.getString("Date")%>" 
                                    class="btn btn-danger btn-sm"  role="button" data-toggle="modal" data-target="#cancelModal" 
                                    onclick="$('#updatedDate').html('<%=result.getString("Date")%>'); $('#aID').val('<%=result.getString("Appoinment_ID")%>')">
                                <span class="glyphicon glyphicon-minus-sign"></span>&nbsp;&nbsp;Cancel</button></td>
                                
                            <td><%=result.getString("GP_ID")%></td>
                            <td>Dr. <%=result.getString("LastName")%></td>
                            <td><%=result.getString("Date")%></td>
                            <td><%=result.getString("Status")%></td>
                        </tr>
                        <%}%>
                    </tbody>
                </table>
                <hr>
                <button type="button" class="btn btn-success" data-toggle="modal" data-target="#addModal"><span class="glyphicon glyphicon-plus"></span>&nbsp;&nbsp;Add</button>
            </div>

            <!-- Change Appointment Date Modal -->
            <div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="editAppointment" aria-hidden="true">
                <form method="post">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                <h4 class="modal-title" id="editAppointment"><span class="glyphicon glyphicon-calendar"></span>&nbsp;&nbsp;Choose a new date</h4>
                            </div>
                            <div class="modal-body">
                                <p>Current date: <% out.println(dateC); %></p>
                                <br>
                                <div class="form-group">
                                    <div class='input-group date' id='dateChange'>
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-calendar"></span>
                                        </span>
                                        <input name="changedDate" type='text' class="form-control" data-date-format="YYYY-MM-DD" placeholder="Pick a date..">
                                    </div>
                                    <p class="help-block"><span class="glyphicon glyphicon-info-sign"></span>&nbsp;Press the calendar icon to pick a date.</p>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <input name="aIDc" id="aIDc" type="hidden" value="">
                                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span>&nbsp;&nbsp;Close</button>
                                <button name='changeAppointment' type="submit" class="btn btn-success"><span class="glyphicon glyphicon-ok"></span>&nbsp;&nbsp;Update</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>

            <!-- Cancel Appointment Modal -->
            <div class="modal fade" id="cancelModal" tabindex="-1" role="dialog" aria-labelledby="cancelAppointment" aria-hidden="true">
                <form method="post">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                <h4 class="modal-title" id="cancelAppointment"><span class="glyphicon glyphicon-calendar"></span>&nbsp;&nbsp;Cancel the appointment on <span id="updatedDate"></span></h4>
                            </div>
                            <div class="modal-body">
                                <p>Are you sure?</p>
                            </div>
                            <div class="modal-footer">
                                <input name="aID" id="aID" type="hidden" value="">
                                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span>&nbsp;&nbsp;Close</button>
                                <button name="confirmCancel" type="submit" class="btn btn-danger"><span class="glyphicon glyphicon-minus-sign"></span>&nbsp;&nbsp;Cancel appointment</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>

            <!-- Add Appointment Date Modal -->
            <div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="addAppointment" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                            <h4 class="modal-title" id="addAppointment"><span class="glyphicon glyphicon-calendar"></span>&nbsp;&nbsp;Choose a general practice and pick a date</h4>
                        </div>
                        <form class="form-horizontal" role="form" method="post">
                            <div class="modal-body">
                                <p>Today's date: <% out.println(dateC); %></p>

                                <!-- Datetime picker reference: http://eonasdan.github.io/bootstrap-datetimepicker/ -->
                                <p>Select a general practice (optional): </p>
                                <select name="doctorSelected" class="form-control">
                                    <option>Select a general practice..</option>
                                    <%while(doctorList.next()) { %>
                                    <option value="<%=doctorList.getString("GP_ID")%>">Doctor <%=doctorList.getString("LastName")%> - <%=doctorList.getString("GP_ID")%> </option>
                                    <%}%>
                                </select>
                                <br>
                                <div class="form-group">
                                    <div class='input-group date' id='dateAdd'>
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-calendar"></span>
                                        </span>
                                        <input name='dateSelected' type='text' class="form-control" data-date-format="YYYY-MM-DD" placeholder="Pick a date..">
                                    </div>
                                    <p class="help-block"><span class="glyphicon glyphicon-info-sign"></span>&nbsp;Press the calendar icon to pick a date.</p>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span>&nbsp;&nbsp;Close</button>
                                <button name='makeAppointment' type="submit" class="btn btn-success"><span class="glyphicon glyphicon-ok"></span>&nbsp;&nbsp;Make appointment</button>
                            </div>
                        </form>
                    </div>
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
            <!-- JavaScript - Change appointment -->
            <script type="text/javascript">
                $(function () {
                    $('#dateChange').datetimepicker({
                            pickTime: false
                    });
                });
            </script>
            <!-- JavaScript - Add appointment -->
            <script type="text/javascript">
                $(function () {
                    $('#dateAdd').datetimepicker({
                            pickTime: false
                    });
                });
            </script>
    </body>
</html>