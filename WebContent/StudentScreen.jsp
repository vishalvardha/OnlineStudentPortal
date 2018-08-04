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
        </ul> 
    </div>
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
   <br/>
	<%
	String res = request.getParameter("t1");
	if(res != null){
		out.println("<center><font face=verdana color=red>"+res+"</center></font>");
	}%>
<table align="center" width="80%">
			<tr>
			<td>
	<p align="justify"><font size="3" style="font-family: Comic Sans MS">
	<center>Purpose</center><br/>

This document provides the functional need statements for Student portal. This is web application that can help the students reduce the amount of time they spend to meet their adviser /dean or the administration officer. 
</p><br/>
	<p align="justify"><font size="3" style="font-family: Comic Sans MS">
	<center>The Student portal Functional Need Statement</center><br/>

Admin, students and  professors can have the access to this portal. This software that helps students to register for classes, make appointments with professors/dean/administration officers, and to  know class updates and notifications . <br/>        
</p>

	
</body>
</html>