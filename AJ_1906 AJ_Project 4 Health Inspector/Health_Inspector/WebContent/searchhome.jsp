<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    
    <title>Search</title>
    <link rel="stylesheet" href="searchhome.css">
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

  <form>
  <hr>
   <a href="search.jsp" class="button">Search with Google</a>
   <a href="regsearch.jsp" class="button">Search with Registered Doctors</a>
  </form>
</div>
</body>
</html>