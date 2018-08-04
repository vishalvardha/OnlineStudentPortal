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
	alert("Please Enter Professor ID");
	formObj.t1.focus();
	return false;
	}
	if(formObj.t2.value.length==0)
	{
	alert("Please Enter Professor Name");
	formObj.t2.focus();
	return false;
	}
	if(formObj.t3.value.length==0)
	{
	alert("Please Enter Course");
	formObj.t3.focus();
	return false;
	}
	
	if(formObj.t4.value.length==0)
	{
	alert("Please Enter Contact No");
	formObj.t4.focus();
	return false;
	}
	var h=formObj.t4.value;
	if(isNaN(h))
	{
	alert ("enter valid contact number");
	formObj.t4.focus();
	return false;
	}
	if(h.length != 10){
		alert ("Contact no must be 10 digits long");
	formObj.t4.focus();
	return false;
	}
	if(formObj.t5.value.length==0)
	{
	alert("Please Enter Email ID");
	formObj.t5.focus();
	return false;
	}
	var emailfilter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i
	var c=emailfilter.test(formObj.t5.value);
	if(c==false)
	{
	alert("Please Enter a valid Mail ID");
	formObj.t5.focus();
	return false;
	}
	if(formObj.t6.value.length==0)
	{
	alert("Please Enter Username");
	formObj.t6.focus();
	return false;
	}
	if(formObj.t7.value.length==0)
	{
	alert("Please Enter Password");
	formObj.t7.focus();
	return false;
	}
	formObj.actionUpdateData.value="update";
	return true;
	}
	</script>

<div id="templatemo_menu_panel">
    <div id="templatemo_menu_section">
        <ul>
           <li><a href="Permission.jsp">Access Permission</a></li>
			<li><a href="Authentication.jsp">Authentication</a></li>
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
<form name="f1" method="post" action="ProfessorRegister" onsubmit="return validate(this);"><br/>
   <h2><b>Professor Registration Screen</b></h2>
   <br/>
	<%
	String res = request.getParameter("t1");
	if(res != null){
		out.println("<center><font face=verdana color=red>"+res+"</center></font>");
	}%>
						
						<table align="center" width="60" >
			  <tr><td><b>Advisor/Professor&nbsp;ID</b></td><td><input type="text" name="t1" property="t1"/></td></tr>
         
		  <tr><td><b>Advisor/Professor&nbsp;Name</b></td><td><input type="text" name="t2"/></td></tr>
		   <tr><td><b>Course</b></td><td><input type="text" name="t3"/></td></tr>

		 
				
		  <tr><td><b>Contact&nbsp;No</b></td><td><input type="text" name="t4"/></td></tr>

		  <tr><td><b>Email&nbsp;ID</b></td><td><input type="text" name="t5"/></td></tr>

		
		  <tr><td><b>User&nbsp;Name</b></td><td><input type="text" name="t6"/></td></tr>
		  <tr><td><b>Password</b></td><td><input type="password" name="t7"/></td></tr>
		  <tr><td><b>User Type</b></td><td><select name="t8">
		  <option value="Professor">Professor</option>
		  <option value="Advisor">Advisor</option>
		  </td></tr>
         
			<tr><td></td><td><input type="submit" value="Register"></td>
			</table>
				</div>	
					
				</div>
				
</body>
</html>