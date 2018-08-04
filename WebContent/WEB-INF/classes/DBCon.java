package com;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Calendar;
import java.sql.Statement;
import java.util.ArrayList;
import java.io.FileWriter;
public class DBCon{
    private static Connection con;
	
public static Connection getCon()throws Exception {
   try{
		 Class.forName("com.mysql.jdbc.Driver");
		 con = DriverManager.getConnection("jdbc:mysql://localhost/student","root","root");
     
	}catch(Exception e){
		e.printStackTrace();
	}
	return con;
}
public static String studentApproved(String sid)throws Exception{
    String msg="no";
    con = getCon();
	PreparedStatement stat=con.prepareStatement("update register set access=? where student_id=?");
	stat.setString(1,"Approved");
	stat.setString(2,sid);
	int i=stat.executeUpdate();
	if(i > 0){
		msg = "success";
	}
	return msg;
}
public static String studentSecurity(String sid,String user,String pass)throws Exception{
    String msg="no";
    con = getCon();
	PreparedStatement stat=con.prepareStatement("update register set security=?,username=?,password=? where student_id=?");
	stat.setString(1,"yes");
	stat.setString(2,Enc.encrypt(user));
	stat.setString(3,Enc.encrypt(pass));
	stat.setString(4,sid);
	int i=stat.executeUpdate();
	if(i > 0){
		msg = "success";
	}
	return msg;
}
public static String registerClass(String user,String topic)throws Exception{
    String msg="no";
    con = getCon();
	PreparedStatement stat=con.prepareStatement("insert into registerclass values(?,?,?,?)");
	stat.setString(1,user);
	stat.setString(2,topic);
	stat.setString(3,"No");
	stat.setString(4,"No");
	int i=stat.executeUpdate();
	if(i > 0){
		msg = "success";
	}
	return msg;
}
public static String appointment(String input[])throws Exception{
    String msg="no";
    con = getCon();
	PreparedStatement stat=con.prepareStatement("insert into appointment values(?,?,?,?)");
	stat.setString(1,input[0]);
	stat.setString(2,input[1]);
	stat.setTimestamp(3,java.sql.Timestamp.valueOf(input[2]));
	stat.setString(4,input[3]);
	int i=stat.executeUpdate();
	if(i > 0){
		msg = "success";
	}
	return msg;
}
public static String makeClass(String[] input)throws Exception{
    String msg="no";
    con = getCon();
	PreparedStatement stat=con.prepareStatement("insert into makeclass values(?,?,?,?,?)");
	stat.setString(1,input[0]);
	stat.setString(2,input[1]);
	stat.setTimestamp(3,java.sql.Timestamp.valueOf(input[2]));
	stat.setString(4,input[3]);
	stat.setString(5,input[4]);
	int i=stat.executeUpdate();
	if(i > 0){
		msg = "success";
	}
    return msg;
}
public static String approve(String[] input)throws Exception{
    String msg="no";
    con = getCon();
	PreparedStatement stat=con.prepareStatement("update registerclass set approve_status=?,comments=? where username=? and class_topic=?");
	stat.setString(1,input[3]);
	stat.setString(2,input[2]);
	stat.setString(3,input[0]);
	stat.setString(4,input[1]);
	int i=stat.executeUpdate();
	if(i > 0){
		msg = "success";
	}
    return msg;
}
public static String updateClass(String[] input,String file,byte data[])throws Exception{
    String msg="no";
    con = getCon();
	PreparedStatement stat=con.prepareStatement("insert into updateclass values(?,?,?,?,?)");
	stat.setString(1,input[0]);
	stat.setString(2,input[1]);
	stat.setTimestamp(3,java.sql.Timestamp.valueOf(input[2]));
	stat.setString(4,file);
	stat.setBytes(5,data);
	int i=stat.executeUpdate();
	if(i > 0){
		msg = "success";
	}
    return msg;
}
public static String professorRegister(String[] input)throws Exception{
    String msg="no";
    boolean flag=false;
    boolean flag1=false;
    con = getCon();
	Statement stmt=con.createStatement();
    ResultSet rs=stmt.executeQuery("select username from ProfessorRegister where username='"+input[0]+"'");
    if(rs.next()){
        flag=true;
        msg = "Username already exist";
    }
    stmt=con.createStatement();
    rs=stmt.executeQuery("select password from ProfessorRegister where password='"+input[1]+"'");
    if(rs.next()){
        flag1=true;
        msg = "Password already exist";
    }
	if(!flag && !flag1){
		PreparedStatement stat=con.prepareStatement("insert into ProfessorRegister values(?,?,?,?,?,?,?,?)");
		stat.setString(1,input[0]);
		stat.setString(2,input[1]);
		stat.setString(3,input[2]);
		stat.setString(4,input[3]);
		stat.setString(5,input[4]);
		stat.setString(6,input[5]);
		stat.setString(7,input[6]);
		stat.setString(8,input[7]);
		int i=stat.executeUpdate();
		if(i > 0){
			msg = "success";
		}
    }
    return msg;
}

public static String register(String[] input)throws Exception{
    String msg="no";
    boolean flag=false;
    boolean flag1=false;
    con = getCon();
	Statement stmt=con.createStatement();
    ResultSet rs=stmt.executeQuery("select username from register where username='"+input[0]+"'");
    if(rs.next()){
        flag=true;
        msg = "Username already exist";
    }
    stmt=con.createStatement();
    rs=stmt.executeQuery("select password from register where password='"+input[1]+"'");
    if(rs.next()){
        flag1=true;
        msg = "Password already exist";
    }
	if(!flag && !flag1){
		PreparedStatement stat=con.prepareStatement("insert into register values(?,?,?,?,?,?,?,?,?,?,?,?)");
		stat.setString(1,input[0]);
		stat.setString(2,input[1]);
		stat.setString(3,input[2]);
		stat.setDate(4,java.sql.Date.valueOf(input[3].trim()));
		stat.setString(5,input[4]);
		stat.setString(6,input[5]);
		stat.setString(7,input[6]);
		stat.setString(8,input[7]);
		stat.setString(9,input[8]);
		stat.setString(10,input[9]);
		stat.setString(11,"Not Approved");
		stat.setString(12,"No");
		int i=stat.executeUpdate();
		if(i > 0){
			msg = "success";
		}
    }
    return msg;
}
public static String login(String input[])throws Exception{
    String msg="invalid";
	con = getCon();
    Statement stmt=con.createStatement();
    ResultSet rs=stmt.executeQuery("select username,password,security from register where access='Approved'");
	while(rs.next()){
		String user = rs.getString(1).trim();
		String pass = rs.getString(2).trim();
		String security = rs.getString(3).trim();
		if(security.equals("No")){
			if(user.equals(input[0]) && pass.equals(input[1])){
				msg = "success";
				break;
			}
		}
		if(security.equals("yes")){
			if(user.equals(Enc.encrypt(input[0])) && pass.equals(Enc.encrypt(input[1]))){
				msg = "success";
				break;
			}
		}
	}
    return msg;
}
public static String plogin(String input[])throws Exception{
    String msg="invalid login";
	con = getCon();
    Statement stmt=con.createStatement();
    ResultSet rs=stmt.executeQuery("select usertype from ProfessorRegister where username='"+input[0]+"' and password='"+input[1]+"'");
    if(rs.next()){
	    msg = rs.getString(1);
    }
    return msg;
}
public static byte[] download(String file)throws Exception{
    byte b[] = null; 
	con = getCon();
    Statement stmt=con.createStatement();
    ResultSet rs=stmt.executeQuery("select material_data from updateclass where material_name='"+file+"'");
    while(rs.next()){
	    b = rs.getBytes(1);
    }
    return b;
}
}
