<%@page import="java.sql.Connection"%>
<%@page import="com.DBCon"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
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
	if(formObj.t3.value.length == 0)
	{
	alert("Please Upload Material");
	formObj.t3.focus();
	return false;
	}
	var selectedText = document.getElementById('demo1').value;
	   var selectedDate = new Date(selectedText);
	   var now = new Date();
	   if (selectedDate < now) {
	    alert("Date must be in the future");
	    //formObj.t2.foucus();
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
<form name="f1" method="post" action="Appointment"  onsubmit="return validate(this);"><br/>
   <h2><b>Appointment Screen</b></h2>
   <br/>
	<%
	String res = request.getParameter("t1");
	if(res != null){
		out.println("<center><font face=verdana color=red>"+res+"</center></font>");
	}%>
						
						<table align="center" width="60" >
			  <tr><td><b>Professor&nbsp;Name</b></td><td><select name="t1">
			  <%try{
				  Connection con = DBCon.getCon();
				  Statement stmt = con.createStatement();
				  ResultSet rs = stmt.executeQuery("select professor_name from professorregister");
				  while(rs.next()){%>
				  <option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
				  <%}}catch(Exception e){
					  e.printStackTrace();
				  }%>
				  </select>
			  </td></tr>
         
		    <tr><td><b>Date&nbsp;And&nbsp;Time</b></td><td>
		<input name="t2" type="text" id="demo1" maxlength="25" size="20" class="c2" ><a href="javascript:NewCal('demo1','ddmmmyyyy',true,24)"><img src="cal.gif" width="16" height="16" border="0" alt="Pick a date"></a>
	  		<span class="descriptions"></span></td>
		  </td></tr>
		   <tr><td><b>Appointment Description</b></td><td><textarea name="t3" cols="45"  rows="5"></textarea></td></tr>
			<tr><td></td><td><input type="submit" value="Appointment"></td>
			</table>
				</div>	
					
				</div>
				
</body>
</html>