<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.HealthInspector.util.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.HealthInspector.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
   .button {
        background-color: #4CAF50;
        border: none;
        color: white;
        padding: 10px 10px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: 4px 2px;
        cursor: pointer;
}
.text{
padding-right: 60%;
align: left;
height: 0px;
}

.appoint{
margin-top: 40%;
margin-left:7%;
}
html{
	background-image: url("https://images.pexels.com/photos/988872/pexels-photo-988872.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940");
  background-repeat: no-repeat;
  background-size: cover;
}

a.fixed {
color: blue;
text-decoration: none;
position: fixed;
right: 0;
top: 0;
width: 260px;
}
h4.wel{
color:blue;
position: fixed;
left: 500;
top: 0;
width: 260px;
}

</style>
<title>Doctor</title>
</head>
<%
String m_user = null;
 m_user =(String )session.getAttribute("userid");
if(m_user==null){
	response.sendRedirect("index.jsp");
} 
%>
<body>
<a class="fixed" href="Logout"><h4>Logout<h4></h4></a>
<h4 class= "wel">Welcome <%=m_user %></h4>


<br><br><br><br>
          <%
          int i = 0;
          ResultSet rs = null;
          PreparedStatement pst = null;
          Connection con = JdbcConnection.getJdbcConnection();
          String m_doc = request.getParameter("doc");
          String m_sep = request.getParameter("sp");
          String m_city = request.getParameter("city");
          
         // System.out.println(m_doc+m_city+m_sep);
          if(m_sep==null){
        	  pst = con.prepareStatement("select * from doctor where name like ?");
          	  pst.setString(1,"%"+m_doc+"%");
          }
          else{
        	  pst = con.prepareStatement("select * from doctor where name like ? and address like ? and Specialization like ?");
          	  pst.setString(1,"%"+m_doc+"%");
          	  pst.setString(2, "%"+m_city+"%");
          	  pst.setString(3,"%"+m_sep+"%");
          }
		  rs = pst.executeQuery();
		  if(rs==null){
			  out.println("<script>");
			  out.println("alert('No Such Record');");
			  out.println("</script>");
			  response.sendRedirect("search.jsp");
		  }%>
		  <table >
		  <%while(rs.next()) { %>

  <tr >
  <td style="padding-left: 50px;">
<div>
 <pre>
<h2><font size="12"><u><%=rs.getString(1) %></u></font><br>
Specialization  : <%= rs.getString(3) %>   
                  
Phone No. : <%= rs.getLong(5) %>
City   :<%= rs.getString(2) %>               
  </h2> </pre>
   <center>
         <a href="booking.jsp?value=<%=rs.getString(1)%>&value2=<%= rs.getString(2) %>" class="button">BOOK APPOINTMENT</a></center>
 </div>
 </td>
 <td>
<iframe  id="myFrame<%=i %>" src= <%= rs.getString(4)%> width="400" height="300" align="right" frameborder="0" allowfullscreen style="display: block;"></iframe>
 </td>
 </tr>         
<tr></tr><tr></tr><tr></tr>
  <% i++;  }%>
  </table>
</body>
</html> 