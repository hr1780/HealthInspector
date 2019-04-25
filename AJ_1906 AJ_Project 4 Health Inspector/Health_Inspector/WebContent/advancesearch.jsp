<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.HealthInspector.util.JdbcConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Advanced Search</title>
    <link rel="stylesheet" href="AdvancedSearch.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600' rel='stylesheet' type='text/css'>
<link href="//netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<%
Connection con = JdbcConnection.getJdbcConnection();
PreparedStatement pst = null;
String query = "select * from  doctor";
try {
	pst = con.prepareStatement(query);
	ResultSet rs = pst.executeQuery();
		%>	
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
  <h1>Advanced Search</h1>

  <form action="doctor.jsp">
  <hr>
  <label id="icon" for="doctorname"><i class="fas fa-id-card"></i></label>
  <input type="text" name="doc" id="doctorname" placeholder="Doctort Name" required/>
  <label id="icon" for="specialization"><i class="fas fa-heartbeat"></i></label>
  <select name="sp">
  	  	<option >SPECIALIZATION</option>
  	<% while(rs.next()){ %>
  	<option value="<%= rs.getString(3)%>"><%= rs.getString(3)%> </option>
  	 <%
	}
	}catch (SQLException e) {
		e.printStackTrace();
	}
  %>
  </select>
  <label id="icon" for="city"><i class="fas fa-city"></i></label>
   <select  name = "city">
  	<option>City</option>
  	<option value="PUNE">PUNE  </option>
  	<option value="THANE">THANE  </option>
  	<option value="KALYAN">KALYAN  </option>
  </select>
   <input type="submit" id="search" value="Search">
  </form>
</div>
</body>
</html>