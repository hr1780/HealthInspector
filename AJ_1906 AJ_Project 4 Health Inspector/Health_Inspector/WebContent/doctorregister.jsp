<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Doctor Registration</title>
<!-- 
<script type="text/javascript">

function check(){
   element=  document.getElementById("regform");
 var  p1=element.repass.value
 var  p2=element.password.value
  if(p1==p2){
	  return true;
  }else{
	  
	  alert("Password Doesn't MAtch");
	  element.repass.value='';
	  element.password.value='';
	  return false;
  }
}
</script>
 -->
<link rel="stylesheet" href="doctorregister.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css'>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600' rel='stylesheet' type='text/css'>
<link href="//netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<div class="testbox">
  <h1>Register As Doctor</h1>

  <form id="regform" action="DoctorRegister" method="post" onsubmit="return check()">
  <hr>
  <label id="icon" for="did"><i class="fas fa-id-card"></i></label>
  <input type="text" name="did" id="did" placeholder="Doctor Id" required/>
  <label id="icon" for="fname"><i class="fas fa-user"></i></label>
  <input type="text" name="name" id="fname" placeholder="Name" required/>
  <label id="icon" for="specialization"><i class="fas fa-briefcase-medical"></i></label>
  <input type="text" name="psw" id="specialization" placeholder="Specialization" required/>
  <label id="icon" for="contactnumber"><i class="fas fa-phone"></i></label>
  <input type="text" name="cno" id="contactnumber" minLength="10" maxlength="10" pattern="[7-9]{1}[0-9]{9}" placeholder="Contact Number" required/>
  <label id="icon" for="address"><i class="fas fa-city"></i></label>
  <input type="text" name="address" id="address" placeholder="City" required/>
  <label id="icon" for="availability"><i class="fas fa-stopwatch"></i></label>
  <select name = "shift">
  	<option>Shift</option>
  	<option value="Morning">Morning</option>
  	<option value="Evening">Evening</option>
  </select>
    <input class="but" type = "submit" value = "Register"/>
  <!-- // <a href="loginForm.html" class="button">Login</a> -->
  </form>
</div>
</body>
</html>