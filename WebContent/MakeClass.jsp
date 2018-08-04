<!DOCTYPE html>
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
	alert("Please Enter Class Topic");
	formObj.t1.focus();
	return false;
	}
	if(formObj.t2.value.length==0)
	{
	alert("Please Enter Course");
	formObj.t2.focus();
	return false;
	}
	
	if(formObj.t3.value.length==0)
	{
	alert("Please Choose Class Date & Time");
	formObj.t3.focus();
	return false;
	}
	if(formObj.t4.value.length==0)
	{
	alert("Please Enter Class Description");
	formObj.t4.focus();
	return false;
	}
	formObj.actionUpdateData.value="update";
	return true;
	}
	</script>
	 <script language="javascript" type="text/javascript" src="datetimepicker.js">
</script>

<div id="templatemo_menu_panel">
    <div id="templatemo_menu_section">
        <ul>
           <li><a href="MakeClass.jsp">Make Classes</a></li>
			<li><a href="ChangeChoice.jsp">Change Student Choice</a></li>
			<li><a href="UpdateClass.jsp">Update Class</a></li> 
			 <li><a href="ViewAppointment.jsp">View Appointment</a></li>
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
<form name="f1" method="post" action="MakeClass" onsubmit="return validate(this);"><br/>
   <h2><b>Make Class Screen</b></h2>
   <br/>
	<%
	String res = request.getParameter("t1");
	if(res != null){
		out.println("<center><font face=verdana color=red>"+res+"</center></font>");
	}%>
						
						<table align="center" width="60" >
			  <tr><td><b>Class&nbsp;Topic</b></td><td><input type="text" name="t1" property="t1"/></td></tr>
         
		  <tr><td><b>Course</b></td><td><input type="text" name="t2"/></td></tr>
		  
		 
		<tr><td><b>Date&nbsp;And&nbsp;Time</b></td><td>
		<input name="t3" type="Text" id="demo1" maxlength="25" size="20" class="c2" ><a href="javascript:NewCal('demo1','ddmmmyyyy',true,24)"><img src="cal.gif" width="16" height="16" border="0" alt="Pick a date"></a>
	  		<span class="descriptions"></span></td>
		  </td></tr>

		    <tr><td><b>Class&nbsp;Description</b></td><td><textarea name="t4" rows="5" cols="45"></textarea></td></tr>
			<tr><td></td><td><input type="submit" value="Make Class"></td>
			</table>
				</div>	
					
				</div>
				
</body>
</html>