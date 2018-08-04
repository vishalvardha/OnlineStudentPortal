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
<script language="javascript">
	function validate(formObj)
	{
	if(formObj.t1.value.length==0)
	{
	alert("Please Enter Student Name");
	formObj.t1.focus();
	return false;
	}
	if(formObj.t2.value.length==0)
	{
	alert("Please Enter Subjects Details");
	formObj.t2.focus();
	return false;
	}
	if(formObj.t3.value.length==0)
	{
	alert("Please Enter Comments");
	formObj.t3.focus();
	return false;
	}
	
	formObj.actionUpdateData.value="update";
	return true;
	}
	</script>

<div id="templatemo_menu_panel">
    <div id="templatemo_menu_section">
        <ul>
               <li><a href="AdvisorRequest.jsp">View Student Request</a></li>
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
<form name="f1" method="post" action="Approve" onsubmit="return validate(this);"><br/>
   <br/>
<table align="center" width="60" >
<% String name = request.getParameter("t1");
String subjects = request.getParameter("t2");
%>
			  <tr><td><b>Student Name</b></td><td><input type="text" name="t1" value="<%=name%>"/></td></tr>
         
		  <tr><td><b>Course/Subjects Details</b></td><td><input type="text" name="t2" value="<%=subjects%>"/></td></tr>
		   <tr><td><b>Comments</b></td><td><input type="text" name="t3"/></td></tr>
			<tr><td><b>Option</b></td><td><select name="t4">
		  <option value="Approve">Approve</option>
		  <option value="Cancel">Cancel</option>
		  </td></tr>
		 <tr><td></td><td><input type="submit" value="Submit"></td>
		  </table>
	
</body>
</html>