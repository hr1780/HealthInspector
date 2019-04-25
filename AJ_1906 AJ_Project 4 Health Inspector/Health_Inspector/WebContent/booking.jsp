<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.HealthInspector.util.JdbcConnection"%>
<%@page import="java.sql.Connection"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Patient's Details</title>
    <link rel="stylesheet" href="Booking.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600' rel='stylesheet' type='text/css'>
<link href="//netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.1/themes/base/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.8.2.js"></script>
<script src="http://code.jquery.com/ui/1.9.1/jquery-ui.js"></script>
</head>
<script type="text/javascript">
$(function() {
var date = new Date();
var currentMonth = date.getMonth();
var currentDate = date.getDate();
//var cDate =  currentDate+5;
var currentYear = date.getFullYear();
$('#datepicker').datepicker({
minDate: new Date(currentYear, currentMonth, currentDate)
});
});
</script>
<body>
<%
String m_user = null;
 m_user =(String )session.getAttribute("userid");
if(m_user==null){
	response.sendRedirect("index.jsp");
} 
%>


<a class="fixed" href="Logout"><h4>Logout</h4></a>
<h4 class= "wel">Welcome <%=m_user %> </h4>

<div class="testbox">	
	
  <h1>Patient's Details</h1>

  <form action="BookingController" method="post" enctype='multipart/form-data'>
  <hr>
  <%String har = (String)request.getParameter("value");
  String city = (String)request.getParameter("value2");%>
  <label id="icon" for="patientname"><i class="fas fa-id-card"></i></label>
  <input type="text" name="pname" id="patientname" placeholder="Patient Name" required/>
  <label id="icon" for="age"><i class="fas fa-baby"></i></label>
  <input type="text" name="age" id="age"  minlength="1" maxlength="2" pattern="[1-9]{2}"  placeholder="Age" required/>
  <label id="icon" for="contactnumber"><i class="fas fa-phone"></i></label>
  <input type="text" name="contactnumber" id="contactnumber" mimLength="10" maxlength="10" pattern="[7-9]{1}[0-9]{9}" placeholder="Contact Number" required/>
  <label id="icon" for="hospitalname"><i class="fas fa-hospital-symbol"></i></label>
  <input type="text" name="hname" id="hospitalname" placeholder="<%= har%>" readonly="readonly"/>
  <label id="icon" for="city"><i class="fas fa-city"></i></label>
 <input type="text" name="city" id="city" placeholder="<%= city%>" readonly="readonly"/>
 
 
  <label id="icon" for="facility"><i class="fas fa-heartbeat"></i></label>
  <select name = "option2">
	<option>Facility Required</option>
<option value="Scanning">Scanning</option>
<option value="Blood Test">BloodTest</option>
<option value="Urine Test">Urine Test</option>
<option value="Thyroid">Thyroid</option>
  </select>
  <label id="icon" for="datepicker"><i class="far fa-calendar-alt"></i></label>
  <input type="text" name = "cal" id="datepicker" />
  <label id="icon" for="file"><i class="fas fa-folder-plus"></i></label>
  <input type="file" name="data" id="file" accept=".gif,.png,.pdf" />
  <div class="gender">
    <input type="radio" value="male" id="male" name="gender" checked/>
    <label for="male" class="radio" >Male</label>
    <input type="radio" value="female" id="female" name="gender" />
    <label for="female" class="radio">Female</label>
   </div> 
   <input type="submit" id="book" value="Book">
  </form>
</div>
</body>
</html>