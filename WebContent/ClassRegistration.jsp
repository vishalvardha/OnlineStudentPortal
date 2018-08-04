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
    var x=document.getElementById("t1");
	var tot = 0;
	for(var i = 0; i < x.options.length; i++) {
		if(x.options[i].selected ==true){
			tot = tot + 1;
		}
	}
	if(tot > 5){
		alert("Only 5 selections are allowed");
		formObj.t1.focus();
		return false;
	}
	formObj.actionUpdateData.value="update";
	return true;
}
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
<form name="f1" method="post" action="RegisterClass.jsp" onsubmit="return validate(this);"><br/>
 
   <br/>
<table align="center" width="20%" border="0">
<tr><td>Subjects</td><td span><select name="t1" id="t1" multiple>
<%
try{
	String user = session.getAttribute("user").toString();
	Connection con = DBCon.getCon();
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery("select * from makeclass");
	while(rs.next()){
		String topic = rs.getString(1);
		PreparedStatement stat = con.prepareStatement("select class_topic from registerclass where username=? and class_topic=?");
		stat.setString(1,user);
		stat.setString(2,topic);
		ResultSet set = stat.executeQuery();
		if(!set.next()){
		%>
		<option value="<%=topic%>"><%=topic%></option>
		<%}}}catch(Exception e){
			  e.printStackTrace();
		  }%>
		  </select></td></tr>
		  <tr><td></td><td><input type="submit" value="Submit"></td>
		  </table>
	
</body>
</html>