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
            <li><a href="ClassUpdate.jsp">View Class Update</a></li> 
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
	<form name="f1" method="post" action="RegisterClass" onsubmit="return validate(this);"><br/>

Selected Course/Subjects Details
   <br/><br/>
<table align="center" width="80%" border="1">
<tr>
<%
try{
	String user = session.getAttribute("user").toString();
	String pname[] = request.getParameterValues("t1");
	session.setAttribute("subjects",pname);
	for(int i=0;i<pname.length;i++){
		%>
		<th>Subject<%=i+1%></th>
		<%}
		%><tr><%
		for(int i=0;i<pname.length;i++){
		%><td><%=pname[i]%></td>
	<%}
	  }catch(Exception e){
			  e.printStackTrace();
		  }%>
		
		  </table>
		   <input type="submit" value="Submit">
</body>
</html>