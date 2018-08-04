<%@page import="java.sql.Connection"%>
<%@page import="com.DBCon"%>
<%@page import="java.sql.Statement"%>
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
	if(formObj.t3.value.length==0)
	{
	alert("Please Upload Material");
	formObj.t3.focus();
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
<form name="f1" method="post" action="UpdateClass" enctype="multipart/form-data" onsubmit="return validate(this);"><br/>
   <h2><b>Update Class Screen</b></h2>
   <br/>
	<%
	String res = request.getParameter("t1");
	if(res != null){
		out.println("<center><font face=verdana color=red>"+res+"</center></font>");
	}%>
						
						<table align="center" width="60" >
			  <tr><td><b>Class&nbsp;Topic</b></td><td><select name="t1">
			  <%try{
				  Connection con = DBCon.getCon();
				  Statement stmt = con.createStatement();
				  ResultSet rs = stmt.executeQuery("select class_topic from makeclass");
				  while(rs.next()){%>
				  <option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
				  <%}}catch(Exception e){
					  e.printStackTrace();
				  }%>
				  </select>
			  </td></tr>
         
		  <tr><td><b>Date&nbsp;And&nbsp;Time</b></td><td><select name="t2">
		  <%try{
				  Connection con = DBCon.getCon();
				  Statement stmt = con.createStatement();
				  ResultSet rs = stmt.executeQuery("select class_time from makeclass");
				  while(rs.next()){%>
				  <option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
				  <%}}catch(Exception e){
					  e.printStackTrace();
				  }%>
		   </select>
		  </td></tr>
		  
		   <tr><td><b>Upload&nbsp;Material</b></td><td><input type="file" name="t3"></td></tr>
			<tr><td></td><td><input type="submit" value="Update Class"></td>
			</table>
				</div>	
					
				</div>
				
</body>
</html>