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
	alert("Please Enter Student ID");
	formObj.t1.focus();
	return false;
	}
	if(formObj.t2.value.length==0)
	{
	alert("Please Enter Student Name");
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
	alert("Please Choose Birth Date");
	formObj.t4.focus();
	return false;
	}
	
	if(formObj.t6.value.length==0)
	{
	alert("Please Enter Contact No");
	formObj.t6.focus();
	return false;
	}
	var h=formObj.t6.value;
	if(isNaN(h))
	{
	alert ("enter valid contact number");
	formObj.t6.focus();
	return false;
	}
	if(h.length != 10){
		alert ("Contact no must be 10 digits long");
	formObj.t6.focus();
	return false;
	}
	if(formObj.t7.value.length==0)
	{
	alert("Please Enter Email ID");
	formObj.t7.focus();
	return false;
	}
	var emailfilter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i
	var c=emailfilter.test(formObj.t7.value);
	if(c==false)
	{
	alert("Please Enter a valid Mail ID");
	formObj.t7.focus();
	return false;
	}
	if(formObj.t8.value.length==0)
	{
	alert("Please Enter Address");
	formObj.t8.focus();
	return false;
	}
	if(formObj.t9.value.length==0)
	{
	alert("Please Enter Username");
	formObj.t9.focus();
	return false;
	}
	if(formObj.t10.value.length==0)
	{
	alert("Please Enter Password");
	formObj.t10.focus();
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
            <li><a href="index.jsp"  class="current">Home</a></li>
            <li><a href="About.jsp">About</a></li>
            <li><a href="Admin.jsp">Administrator</a></li>
			<li><a href="PLogin.jsp">Professor</a></li>
            <li><a href="Login.jsp" class="last">Student</a></li>                      
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
<form name="f1" method="post" action="Register" onsubmit="return validate(this);"><br/>
   <h2><b>Student Registration Screen</b></h2>
   <br/>
	<%
	String res = request.getParameter("t1");
	if(res != null){
		out.println("<center><font face=verdana color=red>"+res+"</center></font>");
	}%>
						
						<table align="center" width="60" >
			  <tr><td><b>Student&nbsp;ID</b></td><td><input type="text" name="t1" property="t1"/></td></tr>
         
		  <tr><td><b>Student&nbsp;Name</b></td><td><input type="text" name="t2"/></td></tr>
		   <tr><td><b>Course</b></td><td><input type="text" name="t3"/></td></tr>

		 
		<tr><td><b>Birth&nbsp;Date</b></td><td>
		<input name="t4" type="Text" id="demo1" maxlength="25" size="20" class="c2" ><a href="javascript:NewCal('demo1','ddmmmyyyy',true,24)"><img src="cal.gif" width="16" height="16" border="0" alt="Pick a date"></a>
	  		<span class="descriptions"></span></td>
		  </td></tr>

		   <tr><td><b>Gender</b></td><td><select name="t5"/>
		 <option value="Male">Male</option>
		 <option value="Female">Female</option>
		 </select>

		
		  <tr><td><b>Contact&nbsp;No</b></td><td><input type="text" name="t6"/></td></tr>

		  <tr><td><b>Email&nbsp;ID</b></td><td><input type="text" name="t7"/></td></tr>

		  <tr><td><b>Address</b></td><td><input type="text" name="t8"/></td></tr>

		  <tr><td><b>User&nbsp;Name</b></td><td><input type="text" name="t9"/></td></tr>
		  <tr><td><b>Password</b></td><td><input type="password" name="t10"/></td></tr>
         
			<tr><td></td><td><input type="submit" value="Register"></td>
			</table>
				</div>	
					
				</div>
				
</body>
</html>