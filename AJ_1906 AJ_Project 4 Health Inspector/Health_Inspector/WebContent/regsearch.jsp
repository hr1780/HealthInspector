<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    
    <title>Search</title>
    <link rel="stylesheet" href="Search.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600' rel='stylesheet' type='text/css'>
<link href="//netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<%
String m_user = null;
 m_user =(String )session.getAttribute("userid");
if(m_user==null){
	response.sendRedirect("index.jsp");
} 
%>
<a class="fixed" href="Logout"><h4>Logout</h4></a>
<h4 class= "wel">Welcome <%=m_user %> </h4>
<body>
<div class="testbox">
  <h1>Search Doctor</h1>

  <form action="regdoctor.jsp">
  <hr>
  <input type="text" name="doc" id="doctorname" placeholder="Search Doctor Name" required/> 
   <input type="submit" id="search" value="Search">
   <a href="advancesearch.jsp" class="button">Advance Search</a>
  </form>
</div>
</body>
</html>