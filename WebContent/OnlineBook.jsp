<%@page import="java.sql.Connection"%>
<%@page import="com.DBCon"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="free design template, CSS template, HTML website" />
<meta name="description" content="Free Design Template, Free CSS Website, XHTML CSS layout" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />

<div id="templatemo_menu_panel">
    <div id="templatemo_menu_section">
        <ul>
               <li><a href="ClassRegistration.jsp">Class Registration</a></li>
			<li><a href="Appointment.jsp">Request Appointment</a></li>
            <li><a href="ClassUpdate.jsp">Advisor Update</a></li> 
			 <li><a href="OnlineBook.jsp">Online Book Access</a></li>
			<li><a href="Logout.jsp" class="last">Logout</a></li>                        
        </ul>     </div>
</div>

</head>
<body>
<br/><br/>
<!--  Download Free CSS Templates from www.templatemo.com  -->	
<div id="templatemo_header_panel">
	<div id="templatemo_header_section">
    	<div id="templatemo_title_section"><br/><CENTER>ONLINE STUDENT PORTAL</CENTER></div>
        <div id="tagline"></div>
    </div>
</div> <!-- end of haeder -->

 <!-- end of menu -->
<br/>

	<center>

   <br/>
<table align="center" width="80%" border="1">
<tr><th>Professor Name</th><th>Class Topic</th><th>Date & Time</th><th>Material Name</th><th>Download</th></tr>
<%
try{
	String user = session.getAttribute("user").toString();
	String pname = request.getParameter("t1");
			  Connection con = DBCon.getCon();
			  Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from updateclass");
			while(rs.next()){%>
				
			<tr><td><%=rs.getString(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
			<td><%=rs.getString(4)%></td>
			
		<td><a href="Download?t1=<%=rs.getString(4)%>">Click Here</a></td>
		  <%}}catch(Exception e){
			  e.printStackTrace();
		  }%>
		  </table>
	
</body>
</html>