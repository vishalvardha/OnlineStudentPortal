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
            <li><a href="Permission.jsp">Access Permission</a></li>
			<li><a href="Authentication.jsp">Authentication</a></li>
            <li><a href="Logout.jsp" class="last">Logout</a></li>              
        </ul> 
    </div>
</div>

</head>
<body>
<br/><br/>
<!--  Download Free CSS Templates from www.templatemo.com  -->	
 <!-- end of haeder -->

 <!-- end of menu -->
<div id="templatemo_header_panel">
	<div id="templatemo_header_section">
    	<div id="templatemo_title_section"><br/><CENTER>ONLINE STUDENT PORTAL</CENTER></div>
        <div id="tagline"></div>
    </div>
</div>
 
<br/>
   <br/>
	<%
	String res = request.getParameter("t1");
	if(res != null){
		out.println("<center><font face=verdana color=red>"+res+"</center></font>");
	}%>
</body>
</html>